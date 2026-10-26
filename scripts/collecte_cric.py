"""Collecte l'annuaire des membres du CRIC vers data/raw/cric.csv.

Usage : uv run --with httpx --with beautifulsoup4 scripts/collecte_cric.py
"""

import csv
from datetime import date
from pathlib import Path

import httpx
from bs4 import BeautifulSoup

URL = "https://www.canadianresearchinsightscouncil.ca/member-directory/"
SORTIE = Path(__file__).resolve().parent.parent / "data" / "raw" / "cric.csv"
CATEGORIES = {
    "CRIC Accredited Agencies": "accreditee",
    "Associate Agencies, Client Side and Industry Partners": "associee",
}


def main():
    r = httpx.get(URL, headers={"User-Agent": "Mozilla/5.0"}, follow_redirects=True, timeout=30)
    r.raise_for_status()
    soup = BeautifulSoup(r.text, "html.parser")

    lignes = []
    categorie = None
    for el in soup.find_all(["h1", "h2", "h3", "h4", "h5", "p", "a"]):
        texte = " ".join(el.get_text(" ", strip=True).split())
        titre = next((v for k, v in CATEGORIES.items() if el.name.startswith("h") and k in texte), None)
        if titre:
            categorie = titre
            continue
        if texte == "About CRIC":
            break
        if categorie and el.name == "a" and el.get("href", "").startswith("http"):
            lignes.append({"nom": texte, "site_web": el["href"], "categorie_cric": categorie})

    # La page lie parfois un même nom deux fois (un des liens pointe vers un autre membre) :
    # on garde le lien dont le domaine contient le premier mot du nom.
    par_nom = {}
    for l in lignes:
        mot = l["nom"].split()[0].lower()
        if l["nom"] not in par_nom or mot in l["site_web"].lower():
            par_nom[l["nom"]] = l
    lignes = list(par_nom.values())

    if not lignes:
        raise SystemExit("Aucun membre trouvé : la structure de la page a changé.")

    SORTIE.parent.mkdir(parents=True, exist_ok=True)
    with SORTIE.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(
            f, fieldnames=["nom", "site_web", "secteur", "facette_principale", "source", "date_collecte", "notes"]
        )
        w.writeheader()
        for l in lignes:
            accreditee = l["categorie_cric"] == "accreditee"
            w.writerow({
                "nom": l["nom"],
                "site_web": l["site_web"],
                "secteur": "sondage et recherche" if accreditee else "",
                "facette_principale": "sondages" if accreditee else "",
                "source": "cric",
                "date_collecte": date.today().isoformat(),
                "notes": f"CRIC : membre {'accrédité' if accreditee else 'associé'}",
            })
    print(f"{len(lignes)} membres -> {SORTIE}")


if __name__ == "__main__":
    main()
