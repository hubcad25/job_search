"""Fusionne data/raw/*.csv et data/ajouts_manuels.csv dans data/organisations.csv.

- org_id = celui fourni par le CSV brut s'il y en a un, sinon domaine du site sans « www. » (ex. leger360.com), sinon `neq-<NEQ>`, sinon nom normalisé.
  Une fois créé, il ne change plus : on retrouve aussi une organisation par son NEQ.
- Relançable : une organisation déjà présente garde ses valeurs ; on remplit seulement
  ses champs vides et on ajoute la nouvelle source à `source` (séparateur « ; »).
- Les colonnes d'un CSV brut qui ne sont pas dans le schéma sont ignorées.

Usage : uv run scripts/fusion_orgs.py
"""

import csv
import re
import unicodedata
from pathlib import Path
from urllib.parse import urlparse

DATA = Path(__file__).resolve().parent.parent / "data"
SORTIE = DATA / "organisations.csv"
COLONNES = [
    "org_id", "neq", "nom", "type", "secteur", "facette_principale", "facette_secondaire", "taille",
    "ville", "site_web", "page_carrieres", "source", "date_collecte", "priorite", "justification", "notes",
]


def normaliser_nom(nom):
    s = unicodedata.normalize("NFKD", nom).encode("ascii", "ignore").decode().lower()
    return re.sub(r"[^a-z0-9]+", "-", s).strip("-")


def domaine(url):
    if not url:
        return ""
    if "://" not in url:
        url = "https://" + url
    hote = urlparse(url).netloc.lower().split(":")[0]
    return hote.removeprefix("www.")


def org_id(ligne):
    neq = (ligne.get("neq") or "").strip()
    return domaine(ligne.get("site_web", "")) or (f"neq-{neq}" if neq else normaliser_nom(ligne["nom"]))


def lire(chemin):
    with chemin.open(newline="", encoding="utf-8") as f:
        return list(csv.DictReader(f))


def main():
    orgs = {}
    if SORTIE.exists():
        orgs = {l["org_id"]: {c: l.get(c, "") for c in COLONNES} for l in lire(SORTIE)}
    par_neq = {o["neq"]: i for i, o in orgs.items() if o["neq"]}
    avant = len(orgs)

    entrees = sorted((DATA / "raw").glob("*.csv"))
    if (DATA / "ajouts_manuels.csv").exists():
        entrees.append(DATA / "ajouts_manuels.csv")

    for chemin in entrees:
        for brut in lire(chemin):
            if not brut.get("nom"):
                continue
            i = par_neq.get((brut.get("neq") or "").strip()) or (brut.get("org_id") or "").strip() or org_id(brut)
            org = orgs.setdefault(i, {c: "" for c in COLONNES} | {"org_id": i})
            if org["neq"] or brut.get("neq"):
                par_neq[org["neq"] or brut["neq"]] = i
            for c in COLONNES:
                v = (brut.get(c) or "").strip()
                if not v or c == "org_id":
                    continue
                if c == "source":
                    sources = [s for s in org["source"].split(";") if s]
                    if v not in sources:
                        org["source"] = ";".join(sources + [v])
                elif c == "notes" and org["notes"] and v not in org["notes"]:
                    org["notes"] = f"{org['notes']} | {v}"
                elif not org[c]:
                    org[c] = v

    with SORTIE.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=COLONNES)
        w.writeheader()
        w.writerows(sorted(orgs.values(), key=lambda o: o["nom"].lower()))
    print(f"{len(orgs)} organisations ({len(orgs) - avant} nouvelles) -> {SORTIE}")


if __name__ == "__main__":
    main()
