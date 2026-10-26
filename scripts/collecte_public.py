"""Collecte les organisations publiques vers data/raw/public.csv.

Trois listes officielles :
- Québec : ministères et organismes gouvernementaux (Données Québec, « listes-sm-sma-dirigeants »).
- Fédéral : Inventaire des organisations fédérales (GC InfoBase), organisations actives seulement.
- Montréal : services centraux et arrondissements (Données Montréal, « unites-administratives »).

Chaque ligne a son propre org_id (qc-…, gc-…, mtl-…) : plusieurs organismes partagent
un domaine (canada.ca, montreal.ca), qui ne peut donc pas servir d'identifiant.

Usage : uv run --with httpx --with polars scripts/collecte_public.py
"""

import io
import re
import unicodedata
from collections import Counter
from datetime import date
from pathlib import Path

import httpx
import polars as pl

SORTIE = Path(__file__).resolve().parent.parent / "data" / "raw" / "public.csv"
QC = "https://www.donneesquebec.ca/recherche/dataset/2095ec43-6e18-441d-a79a-fd400393093f/resource"
QC_LISTES = {
    "ministère": f"{QC}/85de64f9-1547-483a-a321-84f7e8b98afd/download/coordonnees-sm-sma.csv",
    "organisme gouvernemental": f"{QC}/005bd2f0-6bc4-4acc-956a-829e351e8f10/download/coordonnees-dirigeants-organismes.csv",
}
GC = ("https://open.canada.ca/data/dataset/a35cf382-690c-4221-a971-cf0fd189a46f/resource/"
      "45069fe9-abe3-437f-97dd-3f64958bfa85/download/ifoi_roif_fr.csv")
MTL = ("https://donnees.montreal.ca/dataset/0935bc25-0026-4c34-baa4-ca1143c28fdc/resource/"
       "61a4428e-804b-4022-8f1a-8e40c9a46cb1/download/unites-administratives.csv")
COURRIELS_GENERIQUES = {"gmail.com", "outlook.com", "hotmail.com", "videotron.ca"}


def telecharger(url, encodage="utf-8-sig"):
    r = httpx.get(url, headers={"User-Agent": "Mozilla/5.0 (X11; Linux x86_64)"}, follow_redirects=True, timeout=60)
    r.raise_for_status()
    return pl.read_csv(io.StringIO(r.content.decode(encodage)), infer_schema=False)


def slug(s):
    s = unicodedata.normalize("NFKD", s).encode("ascii", "ignore").decode().lower()
    return re.sub(r"[^a-z0-9]+", "-", s).strip("-")


def ligne(org_id, nom, secteur, ville="", site_web="", notes=""):
    return {"org_id": org_id, "nom": nom, "type": "public", "secteur": secteur, "ville": ville,
            "site_web": site_web, "source": "", "date_collecte": date.today().isoformat(), "notes": notes}


def quebec():
    lignes = []
    for secteur, url in QC_LISTES.items():
        d = telecharger(url)
        d = d.with_columns(pl.col("Courriel_emploi").str.extract(r"@(.+)$").str.to_lowercase().alias("dom"))
        # Un domaine de courriel ne sert de site que s'il appartient à un seul organisme.
        orgs_par_dom = Counter(d.filter(pl.col("dom").is_not_null()).unique(["Nom_MinOrg", "dom"])["dom"])
        for nom, g in d.group_by("Nom_MinOrg", maintain_order=True):
            nom = nom[0]
            doms = [x for x in g["dom"].drop_nulls() if x not in COURRIELS_GENERIQUES and orgs_par_dom[x] == 1]
            villes = g["Ville_individu"].drop_nulls().str.replace(r"\s*\(Québec\).*$", "")
            nom_complet = f"Ministère – {nom}" if secteur == "ministère" else nom
            lignes.append(ligne(
                f"qc-{slug(nom)}", nom_complet, secteur,
                ville=Counter(villes).most_common(1)[0][0] if len(villes) else "",
                site_web=f"https://{Counter(doms).most_common(1)[0][0]}" if doms else "",
                notes=f"Québec ; ministre : {g['Titre_ministre'][0]}",
            ))
    return lignes


def federal():
    d = telecharger(GC).filter(pl.col("status") == "a")
    lignes = []
    for r in d.iter_rows(named=True):
        site = (r["site_web"] or "").strip()
        if site and "://" not in site:
            site = "https://" + site
        desc = " ".join((r["description_fr"] or "").split())
        lignes.append(ligne(
            f"gc-{r['org_id']}", r["titre_appliqué"] or r["titre_légal"], r["inst_struct"] or "fédéral",
            site_web=site, notes=f"Fédéral ; {desc[:200]}",
        ))
    return lignes


def montreal():
    d = telecharger(MTL, encodage="latin-1")
    d = d.filter(pl.col("Type").is_in(["SER", "ARR"]) & (pl.col("Description") != "DEPENSES COMMUNES"))
    lignes = []
    for r in d.iter_rows(named=True):
        nom = r["Description"].strip().capitalize()
        arr = r["Type"] == "ARR"
        lignes.append(ligne(
            f"mtl-{r['No UADM']}",
            f"Ville de Montréal – {'Arrondissement ' if arr else ''}{nom}",
            "arrondissement" if arr else "service municipal",
            ville="Montréal", site_web="https://montreal.ca",
            notes="Ville de Montréal : embauche centralisée (montreal.ca/emplois)",
        ))
    return lignes


def main():
    sources = {"donnees_quebec": quebec, "gc_infobase": federal, "donnees_montreal": montreal}
    lignes = []
    for source, f in sources.items():
        l = f()
        for x in l:
            x["source"] = source
        print(f"{source} : {len(l)}")
        lignes += l

    doublons = [i for i, n in Counter(x["org_id"] for x in lignes).items() if n > 1]
    if doublons:
        raise SystemExit(f"org_id en double : {doublons}")
    pl.DataFrame(lignes).write_csv(SORTIE)
    print(f"{len(lignes)} organisations publiques -> {SORTIE}")


if __name__ == "__main__":
    main()
