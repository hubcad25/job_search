"""Filtre le Registre des entreprises du Québec (REQ) vers data/raw/req.csv.

Base large de candidats, à trier ensuite : on garde les entreprises immatriculées,
situées au Québec, et
- soit de 11 employés ou plus dans un groupe d'activité pertinent (GROUPES_CAE) ;
- soit, peu importe la taille, dont une description d'activité contient un mot-clé ;
- soit, peu importe la taille, qui touche au sport et à la technologie (facette sport).

Données (≈ 1 Go, hors git) : télécharger le ZIP du jeu « registre-des-entreprises »
sur Données Québec et le décompresser dans data/raw/req/.
Licence CC-BY-NC-SA 4.0 (usage non commercial).

Usage : uv run --with polars scripts/collecte_req.py
"""

from datetime import date
from pathlib import Path

import polars as pl

DATA = Path(__file__).resolve().parent.parent / "data" / "raw"
REQ = DATA / "req"
SORTIE = DATA / "req.csv"

# Deux premiers chiffres du code CAE.
GROUPES_CAE = {
    "28": "imprimerie et édition",
    "48": "communications et médias",
    "70": "finance", "71": "finance", "72": "finance", "73": "assurances", "74": "finance",
    "77": "services aux entreprises",
    "81": "administration fédérale", "82": "administration provinciale", "83": "administration locale",
    "85": "enseignement",
    "96": "divertissement, loisirs et sport",
    "98": "associations",
    "99": "autres services",
}
TAILLES_OK = list("CDEFGHIJKL")  # 11 employés et plus
TAILLES = {
    "A": "1-5", "B": "6-10", "C": "11-25", "D": "26-49", "E": "50-99", "F": "100-249",
    "G": "250-499", "H": "500-749", "I": "750-999", "J": "1000-2499", "K": "2500-4999",
    "L": "5000+", "N": "non déclaré", "O": "aucun", "P": "non déclaré",
}
MOTS_CLES = (
    r"(?i)sondage|recherche marketing|recherches? économiques?|études? de marché|opinion publique"
    r"|statisti|analyse de données|science des données|données massives|analytique|analytics"
    r"|intelligence artificielle|apprentissage automatique|machine learning|affaires publiques"
    r"|relations gouvernementales|lobby|politique publique|market research|polling|survey"
    r"|public affairs|data science"
)
SPORT = r"(?i)\b(sport|sports|sportif|sportive|sportifs|sportives|hockey|athl[eè]tes?|soccer|football|basketball|baseball|golf|esports?)\b"
TECHNO = (
    r"(?i)logiciel|plateforme|application|donn[ée]es|analyti|statisti|technolog|software"
    r"|intelligence artificielle|vid[ée]o|billetterie|paris sportifs"
)
TYPES = {"APE": "osbl", "ASS": "osbl", "COP": "entreprise", "SYP": "osbl"}


def lire(nom, colonnes):
    return pl.scan_csv(REQ / f"{nom}.csv", infer_schema=False, encoding="utf8-lossy").select(colonnes)


def ville(adresse):
    # « Montréal (Québec) » -> « Montréal » ; None si hors Québec.
    return (
        pl.when(adresse.str.to_lowercase().str.contains(r"\(qu[ée]bec\)"))
        .then(adresse.str.replace(r"(?i)\s*\(qu[ée]bec\)\s*$", "").str.strip_chars())
        .otherwise(None)
    )


def main():
    if not (REQ / "Entreprise.csv").exists():
        raise SystemExit(f"Fichiers du REQ absents de {REQ} : voir le docstring.")

    ent = lire("Entreprise", [
        "NEQ", "COD_STAT_IMMAT", "COD_INTVAL_EMPLO_QUE", "COD_FORME_JURI", "COD_ACT_ECON_CAE",
        "DESC_ACT_ECON_ASSUJ", "COD_ACT_ECON_CAE2", "DESC_ACT_ECON_ASSUJ2", "ADR_DOMCL_LIGN2_ADR",
    ]).filter(pl.col("COD_STAT_IMMAT") == "IM")

    etab = lire("Etablissements", ["NEQ", "IND_ETAB_PRINC", "LIGN2_ADR", "DESC_ACT_ECON_ETAB", "DESC_ACT_ECON_ETAB2"])
    # Ville au Québec : établissement principal d'abord, sinon un autre établissement.
    etab_villes = (
        etab.with_columns(ville(pl.col("LIGN2_ADR")).alias("ville_etab"))
        .filter(pl.col("ville_etab").is_not_null())
        .sort("IND_ETAB_PRINC", descending=True)
        .group_by("NEQ")
        .agg(pl.col("ville_etab").first())
    )
    etab_desc = etab.group_by("NEQ").agg(
        pl.concat_str(["DESC_ACT_ECON_ETAB", "DESC_ACT_ECON_ETAB2"], separator=" ", ignore_nulls=True)
        .str.join(" ").alias("desc_etab")
    )

    groupe = pl.col("COD_ACT_ECON_CAE").str.slice(0, 2)
    groupe2 = pl.col("COD_ACT_ECON_CAE2").str.slice(0, 2)
    desc = pl.concat_str(["DESC_ACT_ECON_ASSUJ", "DESC_ACT_ECON_ASSUJ2", "desc_etab"], separator=" ", ignore_nulls=True)

    df = (
        ent.join(etab_villes, on="NEQ", how="left")
        .join(etab_desc, on="NEQ", how="left")
        .with_columns(pl.coalesce(ville(pl.col("ADR_DOMCL_LIGN2_ADR")), "ville_etab").alias("ville"))
        .filter(pl.col("ville").is_not_null())
        .with_columns(
            (pl.col("COD_INTVAL_EMPLO_QUE").is_in(TAILLES_OK)
             & (groupe.is_in(list(GROUPES_CAE)) | groupe2.is_in(list(GROUPES_CAE)))).alias("par_groupe"),
            desc.str.contains(MOTS_CLES).fill_null(False).alias("par_mot_cle"),
            (desc.str.contains(SPORT) & desc.str.contains(TECHNO)).fill_null(False).alias("par_sport"),
        )
        .filter(pl.col("par_groupe") | pl.col("par_mot_cle") | pl.col("par_sport"))
        .collect()
    )

    # Nom courant : dénomination sociale (M) ou nom (N) ; les autres noms vont dans les notes.
    noms = (
        lire("Nom", ["NEQ", "NOM_ASSUJ", "TYP_NOM_ASSUJ", "DAT_FIN_NOM_ASSUJ"])
        .filter(pl.col("DAT_FIN_NOM_ASSUJ").is_null())
        .join(df.lazy().select("NEQ"), on="NEQ", how="semi")
        .with_columns(pl.col("TYP_NOM_ASSUJ").is_in(["M", "N"]).alias("principal"))
        .sort(["NEQ", "principal"], descending=[False, True])
        .group_by("NEQ", maintain_order=True)
        .agg(pl.col("NOM_ASSUJ").first().alias("nom"), pl.col("NOM_ASSUJ").slice(1, 3).alias("autres_noms"))
        .collect()
    )

    cae = (
        pl.read_csv(REQ / "DomaineValeur.csv", infer_schema=False, skip_rows=1, has_header=False,
                    new_columns=["typ", "code", "desc"], encoding="utf8-lossy")
        .filter(pl.col("typ") == "ACT_ECON")
        .select(pl.col("code").alias("COD_ACT_ECON_CAE"), pl.col("desc").alias("secteur"))
    )

    out = (
        df.join(noms, on="NEQ", how="inner")
        .join(cae, on="COD_ACT_ECON_CAE", how="left")
        .with_columns(
            pl.col("COD_FORME_JURI").replace_strict(TYPES, default="entreprise").alias("type"),
            pl.col("COD_INTVAL_EMPLO_QUE").replace_strict(TAILLES, default="").alias("taille"),
            pl.concat_str([
                pl.lit("NEQ "), pl.col("NEQ"),
                pl.lit(" ; CAE "), pl.col("COD_ACT_ECON_CAE").fill_null(""),
                pl.lit(" ; activité : "), pl.col("DESC_ACT_ECON_ASSUJ").fill_null(""),
                pl.lit(" ; autres noms : "), pl.col("autres_noms").list.join(" / "),
                pl.lit(" ; retenu par : "),
                pl.when(pl.col("par_sport")).then(pl.lit("sport et techno"))
                .when(pl.col("par_mot_cle")).then(pl.lit("mot-clé")).otherwise(pl.lit("groupe CAE")),
            ]).alias("notes"),
            pl.lit("req").alias("source"),
            pl.lit(date.today().isoformat()).alias("date_collecte"),
            pl.lit("").alias("site_web"),
            pl.when(pl.col("par_sport")).then(pl.lit("sport")).otherwise(pl.lit("")).alias("facette_principale"),
        )
        .select(pl.col("NEQ").alias("neq"), "nom", "type", "secteur", "facette_principale", "taille", "ville", "site_web",
                "source", "date_collecte", "notes")
        .sort("nom")
    )

    out.write_csv(SORTIE)
    print(f"{out.height} entreprises ({df['par_mot_cle'].sum()} par mot-clé, {df['par_sport'].sum()} sport et techno) -> {SORTIE}")


if __name__ == "__main__":
    main()
