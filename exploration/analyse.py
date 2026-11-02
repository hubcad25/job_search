"""Quantifie les exigences des offres retenues et les écarts avec le profil.

Entrées : exigences.csv (une ligne par offre × exigence), offres.csv.
Sortie : resultats.md. Lancer : uv run --with pandas --with tabulate exploration/analyse.py
"""
from pathlib import Path

import pandas as pd

ICI = Path(__file__).parent
ECART = {"fort": 0, "moyen": 1, "faible": 2, "absent": 3}
POIDS = {"requis": 1.0, "atout": 0.5}

ex = pd.read_csv(ICI / "exigences.csv")
offres = pd.read_csv(ICI / "offres.csv")
n_offres = offres["offre"].nunique()

ex["ecart"] = ex["statut"].map(ECART)
ex["levier"] = ex["ecart"] * ex["niveau"].map(POIDS)

# 1. Fréquence de chaque exigence et levier (offres touchées × écart)
freq = (
    ex.groupby(["exigence", "categorie"])
    .agg(
        offres=("offre", "nunique"),
        requis=("niveau", lambda s: (s == "requis").sum()),
        statut=("statut", "first"),
        levier=("levier", "sum"),
    )
    .reset_index()
)
freq["part"] = (freq["offres"] / n_offres * 100).round().astype(int).astype(str) + " %"
freq = freq.sort_values(["levier", "offres"], ascending=False)

ameliorer = freq[freq["levier"] > 0][
    ["exigence", "categorie", "offres", "part", "requis", "statut", "levier"]
]
atouts = freq[freq["statut"] == "fort"].sort_values("offres", ascending=False)[
    ["exigence", "offres", "part", "requis"]
]

# 2. Couverture par offre : part des exigences requises où Hubert est fort ou moyen
req = ex[ex["niveau"] == "requis"]
couv = (
    req.assign(ok=req["statut"].isin(["fort", "moyen"]))
    .groupby("offre")
    .agg(requises=("ok", "size"), couvertes=("ok", "sum"))
    .reset_index()
)
couv["couverture"] = (couv["couvertes"] / couv["requises"] * 100).round().astype(int)
couv["trous"] = couv["offre"].map(
    req[~req["statut"].isin(["fort", "moyen"])].groupby("offre")["exigence"].apply(", ".join)
).fillna("")
couv = couv.merge(offres[["offre", "facette", "annees_min", "contrat"]], on="offre")
couv = couv.sort_values("couverture", ascending=False)

# 3. Couverture moyenne par facette
facette = (
    couv.groupby("facette")
    .agg(offres=("offre", "size"), couverture_moy=("couverture", "mean"))
    .round()
    .reset_index()
    .sort_values("couverture_moy", ascending=False)
)

# 4. Années d'expérience demandées
annees = offres["annees_min"].value_counts().sort_index().rename_axis("annees_min").reset_index(name="offres")

md = [
    "# Résultats (généré par analyse.py, ne pas éditer)",
    "",
    f"{n_offres} offres, {len(ex)} exigences codées.",
    "",
    "## Écarts à combler, par levier",
    "",
    "Levier = somme sur les offres de (écart × poids). Écart : moyen 1, faible 2, absent 3. Poids : requis 1, atout 0,5.",
    "",
    ameliorer.to_markdown(index=False),
    "",
    "## Forces les plus demandées",
    "",
    atouts.to_markdown(index=False),
    "",
    "## Couverture des exigences requises, par offre",
    "",
    couv.to_markdown(index=False),
    "",
    "## Couverture moyenne par facette",
    "",
    facette.to_markdown(index=False),
    "",
    "## Années d'expérience minimales demandées",
    "",
    annees.to_markdown(index=False),
    "",
]
(ICI / "resultats.md").write_text("\n".join(md))
print("\n".join(md))
