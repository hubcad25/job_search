"""Classe les organisations vérifiées (organisations_web.csv) selon leurs chances pour une candidature spontanée.

Cinq critères notés de 0 à 3 : taille, adéquation, équipe de données, contact joignable, signes de croissance.
Une organisation = un site web (les doublons REQ/SEAO sont regroupés).

Entrées : data/organisations_web.csv, data/organisations.csv, data/candidatures.csv, candidatures/*/dossier.md
Sortie : data/classement_spontanees.csv

    uv run scripts/classer_spontanees.py
"""

import csv
import re
from collections import defaultdict
from pathlib import Path

RACINE = Path(__file__).resolve().parent.parent
DATA = RACINE / "data"
SORTIE = DATA / "classement_spontanees.csv"

# Effectif lu dans dossier.md (2026-10-29) quand le REQ ne le donne pas ou le sous-estime (bureau québécois d'un groupe).
# Valeurs : petite (1-10), moyenne (11-249), grande (250-499), tres_grande (500+ ou grand organisme public).
TAILLE_DOSSIER = {
    "advanis": "moyenne", "agiledss": "moyenne", "beem": "moyenne", "cirano": "moyenne", "copticom": "moyenne",
    "crcresearch": "moyenne", "crestviewstrategy": "petite", "exia": "moyenne", "irpp": "moyenne",
    "massy-forget-langlois": "moyenne", "montreal-analytique": "moyenne", "paaadvisory": "moyenne",
    "plotly": "moyenne", "ryanap": "moyenne", "solutionstat": "moyenne", "sportlogiq": "moyenne",
    "cfmontreal": "moyenne", "cfib-fcei": "moyenne", "adhoc-recherche": "moyenne", "crop": "moyenne",
    "hillandknowlton": "grande", "national": "grande", "pslgroup": "grande",
    "ipsos": "tres_grande", "leger360": "tres_grande", "nhl": "tres_grande", "loto-quebec": "tres_grande",
    "inspq": "tres_grande", "cdpq": "tres_grande", "mifi": "tres_grande", "laval": "tres_grande",
    "vdm-planification-strategique": "tres_grande", "vdm-ti": "tres_grande", "vdm-experience-citoyenne": "tres_grande",
    "stm": "tres_grande",
}
TAILLE_REQ = {"1-5": "petite", "6-10": "petite", "11-25": "moyenne", "26-49": "moyenne", "50-99": "moyenne",
              "100-249": "moyenne", "250-499": "grande"}
NOTE_TAILLE = {"moyenne": 3, "grande": 2, "petite": 1, "inconnue": 1, "tres_grande": 0}
NOTE_FACETTE = {"sondages": 3, "public": 2, "techno": 2, "sport": 2, "politique": 1}
NOTE_EQUIPE = {"oui": 3, "incertain": 1, "non": 0}


def lire(nom):
    return list(csv.DictReader(open(DATA / nom, encoding="utf-8")))


def slug_dossier(cid):
    # 2026-10-27_crop_spontanee -> crop ; 2026-10-28_stm_analyste-donnees-analytique -> stm
    return cid.split("_")[1] if cid else ""


def lire_dossier(cid):
    f = RACINE / "candidatures" / cid / "dossier.md"
    return f.read_text(encoding="utf-8") if cid and f.exists() else ""


def note_contact(texte, contacts_web):
    bloc = texte.split("## À qui écrire")[-1].split("## Offres")[0] if "## À qui écrire" in texte else ""
    if re.search(r"[\w.-]+@[\w-]+\.[\w.]+", bloc.replace("prenom.nom@", "")):
        return 3
    noms = [l.split("|")[1].strip() for l in bloc.splitlines() if l.startswith("| ") and not l.startswith("| Nom")
            and not l.startswith("|--") and not l.startswith("|---")]
    if any(n and "introuvable" not in n.lower() and "responsable" not in n.lower() for n in noms) or contacts_web.strip():
        return 2
    return 0


def note_croissance(notes_orgs, poste, texte):
    offres = texte.split("## Offres")[-1] if "## Offres" in texte else ""
    if poste.strip() or re.search(r"offres? ouvertes?\s*:\s*(?!aucune)", offres, re.I):
        return 3
    contrats = sum(int(n) for n in re.findall(r"(\d+) contrat", notes_orgs))
    return 2 if contrats else 1


def main():
    orgs = {r["org_id"]: r for r in lire("organisations.csv")}
    cands = lire("candidatures.csv")
    lien, statut = {}, {}
    for c in cands:
        ids = {c["org_id"]}
        m = re.search(r"org_id liés : ([^;]*)", c["notes"])
        if m:
            ids |= {i.strip() for i in m.group(1).split(",")}
        for i in ids - {""}:
            lien.setdefault(i, c["candidature_id"])
            statut[i] = c["statut"] if statut.get(i) != "envoyee" else "envoyee"

    groupes = defaultdict(list)
    for r in lire("organisations_web.csv"):
        domaine = re.sub(r"^https?://(www\.)?", "", r["site_web"]).split("/")[0]
        groupes[domaine or r["nom"]].append(r)

    lignes = []
    for rs in groupes.values():
        r = rs[0]
        if all(x["verdict"] == "rejeter" for x in rs):
            continue
        ids = [x["org_id"] for x in rs]
        cid = next((lien[i] for i in ids if i in lien), "")
        if not cid:  # candidature sans org_id (ex. TACT) : retrouver par le nom
            mot = re.sub(r"[^a-z]", "", r["nom"].lower().split()[0])
            cid = next((c["candidature_id"] for c in cands if slug_dossier(c["candidature_id"]) == mot), "")
            if cid:
                statut[ids[0]] = next(c["statut"] for c in cands if c["candidature_id"] == cid)
        texte = lire_dossier(cid)
        tailles_req = [TAILLE_REQ.get(orgs[i]["taille"]) for i in ids if orgs[i]["taille"]]
        taille = TAILLE_DOSSIER.get(slug_dossier(cid)) or next((t for t in tailles_req if t), "inconnue")
        if taille == "inconnue" and any(orgs[i]["type"] == "public" for i in ids):
            taille = "inconnue"  # organisme public sans effectif connu : ne pas deviner
        notes_orgs = " ".join(orgs[i]["notes"] for i in ids)
        n = {
            "taille": NOTE_TAILLE[taille],
            "adequation": NOTE_FACETTE.get(r["facette"], 1),
            "equipe_data": NOTE_EQUIPE.get(max((x["equipe_data"] for x in rs), key=lambda e: NOTE_EQUIPE.get(e, 0)), 0),
            "contact": max(note_contact(texte, x["contacts"]) for x in rs),
            "croissance": max(note_croissance(notes_orgs, x["poste"], texte) for x in rs),
        }
        st = next((statut[i] for i in ids if i in statut), "sans_dossier")
        lignes.append({
            "nom": r["nom"], "facette": r["facette"], "verdict": r["verdict"], "effectif": taille, **n,
            "score": sum(n.values()), "statut": st, "dossier": cid, "site_web": r["site_web"],
            "concurrent_opubliq": r["concurrent_opubliq"],
        })

    lignes.sort(key=lambda l: (l["statut"] == "envoyee", -l["score"], -l["taille"], l["nom"]))
    with open(SORTIE, "w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(lignes[0]), lineterminator="\n")
        w.writeheader()
        w.writerows(lignes)
    print(f"{len(lignes)} organisations -> {SORTIE.relative_to(RACINE)}")


if __name__ == "__main__":
    main()
