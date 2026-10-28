# BEEM (BEEM Technologies inc.)

Vérifié le 2026-10-28 · Facette : techno · Concurrent d'Opubliq : non

> Limite de la vérification : beemdata.com, Techstars et Indeed n'étaient pas accessibles depuis la session (réseau bloqué). Les faits viennent des extraits de résultats de recherche, souvent des annuaires tiers (Crunchbase, TheOrg, Tracxn). Relire chaque URL avant usage.

## En bref
- Plateforme de données gérée pour les PME de taille moyenne : lac et entrepôt de données, pipelines automatisés, tableaux de bord ; plus de 700 sources (comptabilité, CRM, ERP) (https://www.beemdata.com/). Fonction « BEEM AI » : questions en langage naturel sur les données de l'entreprise (https://aitoolsatlas.ai/tools/beem). Autre produit : Fleet by BEEM (https://www.osedea.com/insight/beem-determination-pays-off).
- Montréal (Vieux-Port, selon une offre d'emploi : https://www.workopolis.com/jobsearch/viewjob/xJwmlkp_798L8rmDZRTrS2KtHePe8zYUeU9xvlwpyjqGOpu5C_qCIm-8g9rXZqHF). 11 à 25 employés au REQ (`data/organisations.csv`), 11 à 50 selon les annuaires (https://theorg.com/org/beemdata). Fondée en 2015 (https://tracxn.com/d/companies/beem/__9XsNkFNoMrH7idi9nz57ECU5OuvoJoom6Wx4HEl6fzM) ; plateforme construite à l'interne à partir de 2018 (https://www.osedea.com/insight/beem-determination-pays-off). Clients au Canada et aux États-Unis (même source). Partenaire AWS Advanced Tier selon une offre d'emploi (https://ca.talent.com/view?id=614322477879598896).

## Actualités récentes (12 derniers mois)
- Introuvable : aucune annonce de financement, de partenariat ou de lancement trouvée pour 2025-2026.
- 2026-02-15 — Offre « Spécialiste en solutions Data, BI et IA » ; outils BI demandés : Power BI, Tableau, Looker, Metabase (https://jobs.techstars.com/companies/beem-2-d254f99b-744e-42e8-8229-437fc1251812/jobs/67816670-specialiste-en-solutions-data-bi-et-ia-data-bi-and-ai-solutions-specialist).

## Pourquoi les contacter
- BEEM vend une interface en langage naturel sur les données des clients. Hubert a bâti seul l'Atlas Opubliq, où un agent répond en langage naturel et rédige un rapport chiffré qui cite ses sources (`proj-atlas-opubliq`, `comp-agents-llm`, `comp-rag-recherche-semantique` ; poids moyen, démo sur demande).
- Le cœur du produit est le pipeline de données. Hubert a conçu des pipelines ETL avec contrôles de qualité à la CLESSN et en a livré en production sur AWS pour la plateforme Médaillon (`comp-etl-pipelines`, `exp-clessn`, `proj-medaillon-plateforme` ; AWS : `comp-aws`, livré avec Claude Code au niveau avancé, intermédiaire sans IA).
- Les postes ouverts sont orientés client (conseiller, spécialiste solutions). Hubert a fait du développement des affaires, des entretiens clients et la présentation de résultats au client (`exp-opubliq`, `exp-medaillon-ciusss`).
- Pipeline conçu pour alimenter Power BI à la Ville de Québec (`exp-vdq-stage`) : à citer seulement comme conception de pipeline, jamais comme tableau de bord Power BI construit (attention du profil).

## Angle recommandé
- Poste visé : Conseiller(ère) Solutions Data & IA ou Ingénieur(e) Data & Analytique (niveau junior ou intermédiaire).
- Accroche : l'Atlas Opubliq (agent en langage naturel sur des données réelles), puis la plateforme Médaillon en production (`proj-medaillon-plateforme`).
- Risques :
  - Écart d'expérience : l'offre de février 2026 demande 5 à 8 ans (selon `data/candidatures.csv`, non revérifié). Viser un poste plus junior ou une candidature spontanée.
  - Outils BI : Power BI au niveau notions (`comp-power-bi`). Le dire franchement ; mettre en avant la visualisation en R/Shiny et Quarto (`comp-visualisation`, `comp-r-shiny`).
  - Niveau technique : distinguer sans IA et avec Claude Code (`comp-dev-ia-pm`) ; ex. « livre des pipelines en production avec Claude Code ».
  - L'Atlas ressemble au produit de BEEM : présenter Opubliq en veille, sans plan de relance (`positionnement/opubliq.md`).

## À qui écrire
| Nom | Titre | Pourquoi lui/elle | Courriel ou LinkedIn | Source |
|---|---|---|---|---|
| Alexandre Lataille | Cofondateur et PDG | Petite équipe : le PDG décide des embauches | Courriel introuvable ; LinkedIn à chercher (à vérifier) | https://theorg.com/org/beemdata/org-chart/alexandre-lataille |
| Kevin Ferah | Cofondateur ; président (ou président et chef de l'exploitation selon les sources) | Second décideur | Courriel introuvable ; LinkedIn à chercher (à vérifier) | https://wellfound.com/company/beemhq/people ; https://www.crunchbase.com/organization/beemdata |
| RH / candidatures | — | Dernier recours | Introuvable | — |

Ordre : Alexandre Lataille, puis Kevin Ferah. Titres tirés d'annuaires tiers, à confirmer sur LinkedIn ou beemdata.com.

## Offres et carrières
- Page carrières : tableau Techstars indiqué dans `data/candidatures.csv` (https://jobs.techstars.com/companies/beem-2-d254f99b-744e-42e8-8229-437fc1251812/jobs) ; page carrières sur beemdata.com introuvable.
- « Spécialiste en solutions Data, BI et IA », 2026-02-15 (URL ci-dessus, offre 67816670).
- « Architecte de solutions Data, BI, IA », date introuvable (https://jobs.techstars.com/companies/beem-2-d254f99b-744e-42e8-8229-437fc1251812/jobs/67816671-architecte-de-solutions-data-bi-ia-data-bi-ai-solutions-architect). Niveau senior.
- Indeed liste Conseiller(ère) Solutions Data & IA, Développeur(euse) BI & Solutions Data et Ingénieur(e) Data & Analytique à Montréal ; dates introuvables, ouverture à confirmer (https://ca.indeed.com/cmp/Beem/jobs).

## Sources
- https://www.beemdata.com/
- https://theorg.com/org/beemdata ; https://theorg.com/org/beemdata/org-chart/alexandre-lataille
- https://wellfound.com/company/beemhq/people
- https://www.crunchbase.com/organization/beemdata
- https://tracxn.com/d/companies/beem/__9XsNkFNoMrH7idi9nz57ECU5OuvoJoom6Wx4HEl6fzM
- https://www.osedea.com/insight/beem-determination-pays-off
- https://aitoolsatlas.ai/tools/beem
- https://ca.talent.com/view?id=614322477879598896
- https://www.workopolis.com/jobsearch/viewjob/xJwmlkp_798L8rmDZRTrS2KtHePe8zYUeU9xvlwpyjqGOpu5C_qCIm-8g9rXZqHF
- https://jobs.techstars.com/companies/beem-2-d254f99b-744e-42e8-8229-437fc1251812/jobs
- https://ca.indeed.com/cmp/Beem/jobs
