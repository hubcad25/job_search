# Exploration : ce que demandent les offres retenues

Les 17 offres de `candidatures/*/offre.md` (au 2026-11-02), codées exigence par exigence, puis comparées au profil.

## Fichiers

- `offres.csv` : une ligne par offre (facette, années demandées, contrat, statut).
- `exigences.csv` : une ligne par offre × exigence ; `niveau` = requis ou atout ; `statut` = où en est Hubert selon `profil/` (fort, moyen, faible, absent).
- `analyse.py` → `resultats.md` : `uv run --with pandas --with tabulate exploration/analyse.py`.

Le codage et les statuts sont un jugement de Claude à partir de `offre.md` et de `profil/index.md` : à corriger dans `exigences.csv`, puis relancer.

## Constats

1. **Power BI est le trou n° 1** : 7 offres sur 17 (41 %), requis dans 5. Avec Excel avancé (6 offres) et DAX, c'est le même paquet « BI Microsoft ».
2. **Le secteur public est là où ça bloque** : couverture moyenne de 61 % des exigences requises, contre 94 % en sondages et 100 % en techno (après validation). Power BI est un trou dans 5 des 9 offres non couvertes à 100 %.
3. **Recherche qualitative** : requise dans 5 offres ; passée à « moyen » (entretiens, cours). Reste à combler : animer un groupe de discussion.
4. **Bilinguisme, Python et SQL** : demandés dans 6 ou 7 offres chacun, statut « moyen ». Ce sont surtout des preuves à rendre visibles, pas des compétences à apprendre.
5. **Forces les plus demandées** : conception de sondages (7 offres), IA générative, ML et stats appliquées, R, rédaction (5 chacune). Elles doivent ouvrir le CV.
6. **Années d'expérience** : 13 offres sur 17 demandent 3 ans ou moins ; seule Laval (12 ans) est hors d'atteinte.

## Quoi améliorer, par rentabilité

| # | Action | Offres touchées | Effort estimé |
|---|---|---|---|
| 1 | Construire un tableau de bord Power BI publié (données de sondage déjà en main), l'ajouter au profil | 7 | 2 à 3 jours |
| 2 | Excel avancé : Power Query et tableau croisé sur le même jeu de données | 6 | 1 jour |
| 3 | Projet Python/SQL public, défendable sans IA | 7 | 2 jours |
| 4 | Recherche qualitative : observer ou co-animer un groupe de discussion (mandat Opubliq, contact CROP ou Léger) ; moins urgent depuis la validation | 5 | à planifier |

Au moment d'appliquer (pas des améliorations du profil) : montrer l'anglais (Environics, ICPSR) quand l'offre l'exige ; une phrase « mêmes analyses en R et Python » quand l'offre nomme SPSS, Display R ou MapInfo.

Option : la certification PL-300 (Power BI Data Analyst) transforme l'action 1 en preuve reconnue par les RH du public (environ 2 semaines).

## Validation avec Hubert (2026-11-02)

- Power BI : faible confirmé (déjà vu, jamais formé ; apprenable vite).
- Recherche qualitative : faible → moyen (entretiens de l'étude de marché Opubliq, cours de méthodo quali) ; jamais animé de groupe de discussion. Ajouté au profil : `comp-recherche-qualitative`.
- Excel : moyen pour l'usage courant (formules, RECHERCHEV, petites macros, usage perso), faible quand Power Query ou Power Pivot est exigé ; sur Linux, pas de vrai Excel depuis quelques années.
- SPSS : absent, mais écart à expliquer, pas à combler (R et Python font plus).
- Finance et CRM : absent et faible confirmés.
- Évaluation de programmes : faible → moyen (inférence causale, indicateurs comme le NPS au Musée) ; manque un cadre formel (modèle logique).
- Gestion d'équipe : faible confirmé.
- Databricks / Snowflake : absent → faible (concepts acquis via DuckDB, Parquet, cloud ; outil jamais utilisé, ne pas l'écrire au CV).
- Optimisation : absent → moyen (solveur utilisé dans des projets perso).
- Marketing numérique : faible confirmé (rédaction web et SEO chez Drainvac en 2018-2019, Google Analytics en notions).
- Données syndiquées : absent → moyen (Focus Canada d'Environics ; Vividata pour bâtir des distributions croisées avec des sondages politiques) ; Numeris et Nielsen inconnus.
- Santé : absent → faible (mandat CIUSSS, expérience des usagers ; pas de données cliniques ni pharma).
- Transport : faible pour exo enquêtes (opinion sur le tramway de Québec), absent pour exo BI (aucune donnée d'achalandage).
- ADS+ : absent → faible (croisements par genre, âge, etc., sans démarche formelle).
- Optimisation : preuve trouvée, PuLP + CBC dans `pool-lp` (MILP sous plafond salarial) et optim borné dans le mémoire. Ajouté au profil : `comp-optimisation` (niveaux à confirmer).
- Spark : absent confirmé.
- HPC : absent → moyen (GPU sur RunPod et Azure, grappe Calcul Québec pour le fine-tuning). Ajouté en note à `comp-fine-tuning`.
- Cadriciel JS : faible confirmé (React dans ~20 repos avec l'IA, jamais Vue ni Angular ; à réviser avant une entrevue qui l'exige).
- MapInfo, Display R / Q, certification PM : absent confirmé (tableaux croisés faits en R et Python : écart à expliquer, comme SPSS).
- Commerce de détail : absent → faible (commis Metro) ; éducation : absent → faible (auxiliaire d'enseignement) ; entrepreneuriat : absent → moyen (cofondateur d'Opubliq, VIP et VOA d'Entrepreneuriat ULaval) ; loisirs et social : faible confirmé.
