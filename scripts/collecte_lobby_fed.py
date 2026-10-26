"""Organisations du Québec actives dans le registre fédéral des lobbyistes -> data/raw/lobby_fed.csv.

Source : Commissariat au lobbying du Canada, « Enregistrements de lobbying » (données ouvertes,
https://ouvert.canada.ca/data/fr/dataset/70ef2117-1095-4d77-80eb-b87f2bada2a4).
Le site bloque le téléchargement automatique : télécharger le ZIP à la main et le
décompresser dans data/raw/lobby_fed/ (hors git).

Enregistrements en vigueur depuis DEPUIS. Trois rôles, adresse au Québec :
- firme : firme de lobbyistes-conseils (affaires publiques) ;
- lobbyiste interne : entreprise ou organisation qui a ses propres lobbyistes ;
- client : client d'une firme-conseil.

Usage : uv run --with polars scripts/collecte_lobby_fed.py
"""

from datetime import date
from pathlib import Path

import polars as pl

DATA = Path(__file__).resolve().parent.parent / "data" / "raw"
SOURCE = DATA / "lobby_fed" / "Registration_PrimaryExport.csv"
SORTIE = DATA / "lobby_fed.csv"
DEPUIS = "2021-01-01"
QC = r",\s*(QC|PQ|Québec|Quebec)\s*,"


def ville(adresse):
    # « 1000 rue X, Montréal, QC, H3A 1A1, CAN » -> « Montréal »
    return adresse.str.extract(r",\s*([^,]+?)\s*,\s*(?:QC|PQ|Québec|Quebec)\s*,", 1)


def nom(fr, en):
    n = pl.coalesce(pl.col(fr), pl.col(en)).str.strip_chars()
    return pl.when(n.str.len_chars() > 0).then(n).otherwise(None)


def cle(n):
    # Regroupe les variantes : « TACT Intelligence-Conseil inc. » = « TACT - Intelligence conseil ».
    return (
        n.str.to_lowercase()
        .str.replace_all(r"[éèêë]", "e").str.replace_all(r"[àâ]", "a").str.replace_all(r"[îï]", "i")
        .str.replace_all(r"[ôö]", "o").str.replace_all(r"[ùûü]", "u").str.replace_all(r"ç", "c")
        .str.replace_all(r"\b(inc|ltee|ltd|limited|limitee|corp|corporation|s\.?e\.?n\.?c\.?)\b", "")
        .str.replace_all(r"[^a-z0-9]", "")
    )


def main():
    if not SOURCE.exists():
        raise SystemExit(f"{SOURCE} absent : voir le docstring.")
    d = pl.read_csv(SOURCE, infer_schema=False, encoding="latin1", null_values="null")
    d = d.filter(pl.col("END_DATE_FIN").is_null() | (pl.col("END_DATE_FIN") >= DEPUIS))

    firmes = (
        d.filter((pl.col("REG_TYPE_ENR") == "1") & pl.col("FIRM_ADDRESS_ADRESSE_FIRME").str.contains(QC))
        .with_columns(nom("FR_FIRM_NM_FIRME", "EN_FIRM_NM_FIRME_AN").alias("nom"),
                      ville(pl.col("FIRM_ADDRESS_ADRESSE_FIRME")).alias("ville"),
                      nom("FR_CLIENT_ORG_CORP_NM", "EN_CLIENT_ORG_CORP_NM_AN").alias("client"))
        .filter(pl.col("nom").is_not_null())
        .group_by(cle(pl.col("nom")).alias("cle"))
        .agg(pl.col("nom").mode().first(), pl.col("ville").drop_nulls().first(),
             pl.col("client").n_unique().alias("n"), pl.col("client").unique().head(5).alias("ex"))
        .with_columns(
            pl.lit("affaires publiques (lobbyistes-conseils)").alias("secteur"),
            pl.lit("politique").alias("facette_principale"),
            pl.format("Lobby fédéral (depuis {}) : firme-conseil, {} client(s) ; ex. : {}",
                      pl.lit(DEPUIS[:4]), "n", pl.col("ex").list.join(" / ")).alias("notes"),
        )
    )

    def organisations(filtre, role):
        return (
            d.filter(filtre & pl.col("CLIENT_ORG_CORP_ADDRESS_ADRESSE_CLIENT_ORG_CORP").str.contains(QC))
            .with_columns(nom("FR_CLIENT_ORG_CORP_NM", "EN_CLIENT_ORG_CORP_NM_AN").alias("nom"),
                          ville(pl.col("CLIENT_ORG_CORP_ADDRESS_ADRESSE_CLIENT_ORG_CORP")).alias("ville"))
            .filter(pl.col("nom").is_not_null())
            .group_by(cle(pl.col("nom")).alias("cle"))
            .agg(pl.col("nom").mode().first(), pl.col("ville").drop_nulls().first(), pl.len().alias("n"))
            .with_columns(
                pl.lit("").alias("secteur"), pl.lit("").alias("facette_principale"),
                pl.format("Lobby fédéral (depuis {}) : {}, {} enregistrement(s)",
                          pl.lit(DEPUIS[:4]), pl.lit(role), "n").alias("notes"),
            )
        )

    internes = organisations(pl.col("REG_TYPE_ENR").is_in(["2", "3"]), "lobbyistes internes")
    clients = organisations(pl.col("REG_TYPE_ENR") == "1", "client d'une firme-conseil")
    # Une organisation à la fois interne et cliente : on garde le rôle interne.
    clients = clients.join(internes.select("cle"), on="cle", how="anti").join(firmes.select("cle"), on="cle", how="anti")
    internes = internes.join(firmes.select("cle"), on="cle", how="anti")

    cols = ["nom", "secteur", "facette_principale", "ville", "notes"]
    out = (
        pl.concat([firmes.select(cols), internes.select(cols), clients.select(cols)])
        .with_columns(pl.lit("lobby_fed").alias("source"), pl.lit(date.today().isoformat()).alias("date_collecte"))
        .sort("nom")
    )
    out.write_csv(SORTIE)
    print(f"{out.height} organisations ({firmes.height} firmes, {internes.height} internes, "
          f"{clients.height} clients) -> {SORTIE}")


if __name__ == "__main__":
    main()
