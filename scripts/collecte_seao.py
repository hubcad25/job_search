"""Fournisseurs du Québec ayant obtenu des contrats publics pertinents (SEAO) -> data/raw/seao.csv.

Source : données ouvertes du SEAO sur Données Québec (fichiers JSON mensuels, format OCDS).
Les fichiers sont mis en cache dans data/raw/seao/ (hors git).

Contrat retenu si sa catégorie SEAO est dans CATEGORIES, ou dans CATEGORIES_SI_MOT_CLE
et que son titre contient un mot-clé. Une ligne par fournisseur (NEQ), avec le nombre de
contrats, le montant total et quelques titres en exemple.

Usage : uv run --with httpx scripts/collecte_seao.py [--mois 24]
"""

import argparse
import csv
import json
import re
from collections import defaultdict
from datetime import date
from pathlib import Path

import httpx

DATA = Path(__file__).resolve().parent.parent / "data" / "raw"
CACHE = DATA / "seao"
SORTIE = DATA / "seao.csv"
API = "https://www.donneesquebec.ca/recherche/api/3/action/package_show?id=systeme-electronique-dappel-doffres-seao"

CATEGORIES = {"S1", "S2", "S15"}  # R et D ; études spéciales et analyses ; communication
CATEGORIES_SI_MOT_CLE = {"S4", "S13"}  # traitement de l'information ; soutien professionnel
MOTS_CLES = re.compile(
    r"sondage|enqu[êe]te|[ée]tude|analyse|donn[ée]es|statisti|[ée]valuation|recherche|opinion"
    r"|marketing|consultation|sociod[ée]mograph|indicateur|tableau de bord|intelligence artificielle",
    re.I,
)


def fichiers_mensuels(n):
    r = httpx.get(API, timeout=60)
    r.raise_for_status()
    res = [x for x in r.json()["result"]["resources"] if x["name"].startswith("mensuel_")]
    return sorted(res, key=lambda x: x["name"], reverse=True)[:n]


def charger(ressource):
    chemin = CACHE / ressource["name"]
    if not chemin.exists():
        print(f"téléchargement {ressource['name']}")
        with httpx.stream("GET", ressource["url"], timeout=300, follow_redirects=True) as r:
            r.raise_for_status()
            with chemin.open("wb") as f:
                for bloc in r.iter_bytes():
                    f.write(bloc)
    return json.loads(chemin.read_text(encoding="utf-8"))["releases"]


def retenu(release):
    titre = release.get("tender", {}).get("title") or ""
    cats = {(it.get("id") or "").strip() for it in release.get("tender", {}).get("items", [])}
    return bool(cats & CATEGORIES) or (bool(cats & CATEGORIES_SI_MOT_CLE) and bool(MOTS_CLES.search(titre)))


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--mois", type=int, default=24)
    args = p.parse_args()
    CACHE.mkdir(parents=True, exist_ok=True)

    fournisseurs = defaultdict(lambda: {"contrats": set(), "montant": 0.0, "titres": [], "acheteurs": set()})
    infos = {}
    ressources = fichiers_mensuels(args.mois)
    for res in ressources:
        for rel in charger(res):
            if not rel.get("awards") or not retenu(rel):
                continue
            parties = {p["id"]: p for p in rel.get("parties", [])}
            titre = rel["tender"].get("title") or ""
            for aw in rel["awards"]:
                for s in aw.get("suppliers", []):
                    partie = parties.get(s["id"], {})
                    neq = (partie.get("details") or {}).get("neq")
                    if not neq or (partie.get("address") or {}).get("region") != "QC":
                        continue
                    f = fournisseurs[neq]
                    if aw["id"] in f["contrats"]:
                        continue
                    f["contrats"].add(aw["id"])
                    f["montant"] += (aw.get("value") or {}).get("amount") or 0
                    if len(f["titres"]) < 3 and titre not in f["titres"]:
                        f["titres"].append(titre)
                    f["acheteurs"].add(rel.get("buyer", {}).get("name", ""))
                    infos[neq] = (s["name"], (partie.get("address") or {}).get("locality", ""))

    periode = f"{ressources[-1]['name'][8:16]}–{ressources[0]['name'][17:25]}"
    with SORTIE.open("w", newline="", encoding="utf-8") as fh:
        w = csv.DictWriter(fh, fieldnames=["neq", "nom", "ville", "source", "date_collecte", "notes"])
        w.writeheader()
        for neq, f in sorted(fournisseurs.items(), key=lambda x: -x[1]["montant"]):
            nom, ville = infos[neq]
            w.writerow({
                "neq": neq, "nom": nom, "ville": ville.strip().title(), "source": "seao",
                "date_collecte": date.today().isoformat(),
                "notes": (f"SEAO {periode} : {len(f['contrats'])} contrat(s), {f['montant']:,.0f} $, "
                          f"{len(f['acheteurs'])} acheteur(s) ; ex. : {' / '.join(f['titres'])}"),
            })
    print(f"{len(fournisseurs)} fournisseurs ({len(ressources)} mois) -> {SORTIE}")


if __name__ == "__main__":
    main()
