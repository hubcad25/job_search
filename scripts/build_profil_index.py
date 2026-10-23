"""Régénère profil/index.md à partir des YAML et vérifie les ids.

Usage : uv run --with pyyaml scripts/build_profil_index.py
"""

import sys
from pathlib import Path

import yaml

PROFIL = Path(__file__).resolve().parent.parent / "profil"
FICHIERS = ["formation", "experiences", "projets", "publications", "competences"]
CHAMPS_RENVOI = ["preuves", "competences", "projets", "experience", "projet", "publication", "formation"]


def titre(e):
    t = e.get("titre") or e.get("nom") or ""
    org = e.get("organisation") or e.get("revue") or e.get("media") or e.get("lieu")
    return f"{t} — {org}" if org else t


def periode(e):
    p = e.get("periode")
    if p:
        fin = p.get("fin") or "auj."
        return f"{p.get('debut')}–{fin}"
    return str(e.get("date") or e.get("annee") or "")


def main():
    entrees = {}
    erreurs = []
    par_fichier = {}
    for nom in FICHIERS:
        items = yaml.safe_load((PROFIL / f"{nom}.yaml").read_text()) or []
        par_fichier[nom] = items
        for e in items:
            i = e.get("id")
            if not i:
                erreurs.append(f"{nom}: entrée sans id ({titre(e)})")
            elif i in entrees:
                erreurs.append(f"{nom}: id en double {i}")
            entrees[i] = e

    avertissements = []
    for i, e in entrees.items():
        for champ in CHAMPS_RENVOI:
            v = e.get(champ)
            for ref in v if isinstance(v, list) else [v]:
                if isinstance(ref, str) and ref.split("-")[0] in {"exp", "proj", "pub", "comp", "form", "bourse", "conf", "media"} and "-" in ref:
                    if ref.endswith("*"):
                        continue
                    if ref not in entrees:
                        erreurs.append(f"{i}: renvoi brisé {champ} → {ref}")
        if i.startswith("comp-") and not e.get("preuves"):
            avertissements.append(f"{i}: aucune preuve")

    lignes = [
        "# Index du profil",
        "",
        "Généré par `scripts/build_profil_index.py`. Ne pas éditer à la main.",
        "",
    ]
    for nom in FICHIERS:
        lignes += [f"## {nom}.yaml", "", "| id | titre | période | facettes | poids (compétences : sans IA / avec IA) | validation |", "|---|---|---|---|---|---|"]
        for e in par_fichier[nom]:
            fac = ", ".join(e.get("facettes") or []) or e.get("categorie", "")
            poids = e.get("poids") or (f"{e['niveau_sans_ia']} / {e['niveau_avec_ia']}" if "niveau_sans_ia" in e else "")
            lignes.append(
                f"| `{e['id']}` | {titre(e)} | {periode(e)} | {fac} | {poids} | {e.get('validation', '')} |"
            )
        lignes.append("")
    (PROFIL / "index.md").write_text("\n".join(lignes))

    a_valider = sum(1 for e in entrees.values() if e.get("validation") not in ("valide", "valide_lot"))
    print(f"{len(entrees)} entrées, {a_valider} à valider")
    for a in avertissements:
        print("AVERT", a)
    for err in erreurs:
        print("ERREUR", err)
    sys.exit(1 if erreurs else 0)


if __name__ == "__main__":
    main()
