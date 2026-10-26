"""Collecte les membres de Sports Québec vers data/raw/sportsquebec.csv.

Fédérations sportives, unités régionales de loisir et de sport (URLS) et organismes multisports.

Usage : uv run --with httpx --with beautifulsoup4 scripts/collecte_sport.py
"""

import csv
import re
from datetime import date
from pathlib import Path

import httpx
from bs4 import BeautifulSoup

URL = "https://www.sportsquebec.com/la-corporation/membres-de-sportsquebec/"
SORTIE = Path(__file__).resolve().parent.parent / "data" / "raw" / "sportsquebec.csv"


def champ(bloc, etiquette):
    for cat in bloc.select(".post__cat"):
        label = cat.select_one(".post__label")
        if label and etiquette in label.get_text():
            return " ".join(cat.get_text(" ", strip=True).replace(label.get_text(strip=True), "").split())
    return ""


def main():
    r = httpx.get(URL, headers={"User-Agent": "Mozilla/5.0"}, follow_redirects=True, timeout=30)
    r.raise_for_status()
    soup = BeautifulSoup(r.text, "html.parser")

    lignes = []
    for bloc in soup.select(".partner__wrapper"):
        titre = bloc.select_one(".post__title")
        if not titre:
            continue
        texte = bloc.select_one(".wysi")
        site = next((a["href"] for a in (texte.find_all("a", href=True) if texte else [])
                     if a["href"].startswith("http") and "cdn-cgi" not in a["href"]), "")
        # Ville : la ligne qui précède la province (« Montréal, QC »).
        m = re.search(r"([^\n,]+),\s*(QC|Québec)\b", texte.get_text("\n") if texte else "")
        type_membre = champ(bloc, "Type de membre")
        sports = champ(bloc, "Sport")
        lignes.append({
            "nom": " ".join(titre.get_text().split()),
            "type": "osbl",
            "secteur": f"sport – {type_membre.lower()}" if type_membre else "sport",
            "facette_principale": "sport",
            "ville": m.group(1).strip() if m else "",
            "site_web": site,
            "source": "sportsquebec",
            "date_collecte": date.today().isoformat(),
            "notes": f"Sports Québec : {type_membre}" + (f" ; sport(s) : {sports}" if sports else ""),
        })

    if not lignes:
        raise SystemExit("Aucun membre trouvé : la structure de la page a changé.")
    with SORTIE.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(lignes[0]))
        w.writeheader()
        w.writerows(lignes)
    print(f"{len(lignes)} membres -> {SORTIE}")


if __name__ == "__main__":
    main()
