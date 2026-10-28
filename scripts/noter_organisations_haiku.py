"""Note de 0 à 3 (ou `inconnu`) de chaque organisation du sous-ensemble, par Haiku, sans web.

Entrée : data/organisations_subset.csv (voir filtrer_organisations.py)
Sortie : data/organisations_notes.csv (reprend là où il s'est arrêté)

    uv run --with anthropic --with pydantic scripts/noter_organisations_haiku.py
"""

import csv
import re
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
from typing import Literal

import anthropic
from pydantic import BaseModel

RACINE = Path(__file__).resolve().parent.parent
ENTREE = RACINE / "data" / "organisations_subset.csv"
SORTIE = RACINE / "data" / "organisations_notes.csv"
MODELE = "claude-haiku-4-5"
LOT = 25

PROFIL = """Candidat : Hubert Cadieux, Montréal. Maîtrise en science politique (Université Laval, 2026).
Scientifique de données et analyste de sondages : 4 ans à la CLESSN (science politique computationnelle),
analyste pour Environics Institute (sondages), stage en analyse de données sociales à la Ville de Québec,
analyste de campagnes électorales municipales, cofondateur d'Opubliq (sondages, plateformes de données).
Compétences : R, Python, statistiques, sondages, modélisation électorale, tableaux de bord, IA appliquée (LLM).
Cherche un emploi à temps plein : analyste/scientifique de données, recherche, sondages, affaires publiques,
secteur public, analytique sportive."""

CONSIGNE = """Pour chaque organisation, juge si elle pourrait embaucher ce candidat dans un poste
lié à son profil (données, recherche, sondages, analyse, affaires publiques).

note :
- 3 : cœur de cible (sondage, recherche, analytique, affaires publiques, organisme public avec équipe d'analyse, produit data/IA)
- 2 : plausible (entreprise tech ou conseil qui a probablement des besoins en données)
- 1 : peu probable (TI générique, revente, soutien technique)
- 0 : aucun lien
- inconnu : l'information ne permet pas de juger ; ne devine pas à partir d'un nom vague

raison : 15 mots maximum, en français. Réponds pour chaque org_id reçu."""


class Note(BaseModel):
    org_id: str
    note: Literal["0", "1", "2", "3", "inconnu"]
    facette: Literal["sondages", "politique", "techno", "public", "sport", "aucune"]
    raison: str


class Lot(BaseModel):
    notes: list[Note]


def description(o):
    notes = o["notes"]
    m = re.search(r"activité : (.*?) ;", notes)
    info = m.group(1).strip() if m else ""
    if "ex. :" in notes:
        info = "contrat public : " + notes.split("ex. :", 1)[1].strip()
    elif not info:
        info = notes
    return f"- {o['org_id']} | {o['nom']} | secteur : {o['secteur'] or '?'} | {info[:300]}"


def noter(client, lot):
    r = client.messages.parse(
        model=MODELE,
        max_tokens=4000,
        system=[{"type": "text", "text": PROFIL + "\n\n" + CONSIGNE, "cache_control": {"type": "ephemeral"}}],
        messages=[{"role": "user", "content": "\n".join(description(o) for o in lot)}],
        output_format=Lot,
    )
    return r.parsed_output.notes


def main():
    orgs = list(csv.DictReader(ENTREE.open()))
    faits = set()
    if SORTIE.exists():
        faits = {r["org_id"] for r in csv.DictReader(SORTIE.open())}
    reste = [o for o in orgs if o["org_id"] not in faits]
    lots = [reste[i:i + LOT] for i in range(0, len(reste), LOT)]
    print(f"{len(faits)} déjà notées, {len(reste)} à noter en {len(lots)} lots")

    client = anthropic.Anthropic()
    nouveau = not SORTIE.exists()
    with SORTIE.open("a", newline="") as fh:
        w = csv.DictWriter(fh, fieldnames=["org_id", "note", "facette", "raison"])
        if nouveau:
            w.writeheader()
        with ThreadPoolExecutor(8) as ex:
            for i, notes in enumerate(ex.map(lambda l: noter(client, l), lots), 1):
                ids = {o["org_id"] for o in lots[i - 1]}
                w.writerows(n.model_dump() for n in notes if n.org_id in ids)
                fh.flush()
                print(f"lot {i}/{len(lots)}")


if __name__ == "__main__":
    main()
