"""Filtre data/organisations.csv vers un sous-ensemble fertile, sans LLM.

Règles :
1. Lieu : Grand Montréal.
2. Taille : 11 à 499 employés, inconnue, ou organisme public.
3. Pertinence :
   - facette déjà posée à la collecte, type public ou source CRIC : retenu ;
   - secteur `garder` dans data/secteurs_poids.csv : retenu ;
   - secteur `incertain` ou absent : retenu seulement si l'activité, le nom ou
     le contrat SEAO contient un mot-clé.

Sortie : data/organisations_subset.csv
"""

import csv
import re
from pathlib import Path

RACINE = Path(__file__).resolve().parent.parent
ORGS = RACINE / "data" / "organisations.csv"
SECTEURS = RACINE / "data" / "secteurs_poids.csv"
SORTIE = RACINE / "data" / "organisations_subset.csv"

VILLES = {
    "Montréal", "Montreal", "Laval", "Longueuil", "Westmount", "Mont-Royal",
    "Brossard", "Outremont", "Verdun", "Saint-Laurent", "Lachine", "Dorval",
    "Pointe-Claire", "Boucherville", "Terrebonne",
}
TAILLES = {"11-25", "26-49", "50-99", "100-249", "250-499", ""}

MOTS_CLES = {
    "sondages": r"sondages?|opinion|études? de marché|recherche marketing|survey|insights?|panel",
    "techno": r"données|data|analytiques?|analytics|statistiques?|intelligence artificielle|apprentissage automatique|machine learning|logiciels?|software|informatiques?",
    "politique": r"affaires publiques|relations gouvernementales|politiques? publiques?|lobby\w*|élector\w*|relations? médias",
    "sport": r"sports?|sportifs?|athlètes?",
    "public": r"recherche sociale|évaluation de programmes?|politiques? sociales?",
}
EXCLUSIONS = r"supermarché|bingo|emballage|transport|déménag\w*|construction|rénovation|nettoyage"

RE_FACETTES = {f: re.compile(rf"\b(?:{m})\b", re.I) for f, m in MOTS_CLES.items()}
RE_EXCLU = re.compile(rf"\b(?:{EXCLUSIONS})\b", re.I)


def texte(org):
    notes = org["notes"]
    m = re.search(r"activité : (.*?) ;", notes)
    activite = m.group(1) if m else ""
    seao = notes.split("ex. :", 1)[1] if "ex. :" in notes else ""
    return f"{org['nom']} {activite} {seao}"


def facettes_mots_cles(org):
    t = texte(org)
    if RE_EXCLU.search(t):
        return []
    return [f for f, rx in RE_FACETTES.items() if rx.search(t)]


def main():
    secteurs = {s["secteur"]: s for s in csv.DictReader(SECTEURS.open())}
    orgs = list(csv.DictReader(ORGS.open()))
    retenus = []
    for o in orgs:
        if o["ville"] not in VILLES:
            continue
        public = o["type"] in ("public", "universite")
        if not public and o["taille"] not in TAILLES:
            continue

        s = secteurs.get(o["secteur"], {})
        if o["facette_principale"]:
            facette, raison = o["facette_principale"], "facette de collecte"
        elif public:
            facette, raison = "public", "organisme public"
        elif "cric" in o["source"]:
            facette, raison = "sondages", "membre CRIC"
        elif s.get("decision") == "garder":
            facette, raison = s["facette"], "secteur retenu"
        elif s.get("decision") == "exclure":
            continue
        else:
            f = facettes_mots_cles(o)
            if not f:
                continue
            facette, raison = f[0], "mots-clés : " + ", ".join(f)

        retenus.append({
            "org_id": o["org_id"], "nom": o["nom"], "type": o["type"],
            "secteur": o["secteur"], "taille": o["taille"], "ville": o["ville"],
            "source": o["source"], "facette": facette, "raison": raison,
            "notes": o["notes"],
        })

    with SORTIE.open("w", newline="") as fh:
        w = csv.DictWriter(fh, fieldnames=list(retenus[0]))
        w.writeheader()
        w.writerows(retenus)
    print(f"{len(orgs)} organisations -> {len(retenus)} retenues ({SORTIE.name})")


if __name__ == "__main__":
    main()
