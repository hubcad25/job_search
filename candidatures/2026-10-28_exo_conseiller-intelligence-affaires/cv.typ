// CV exo, Conseiller(ère) - Intelligence d'affaires. Depuis le CV STM (2026-10-28). Faits : profil/ (ids en commentaire).
// Angle : modèles de prévision, pipelines qui alimentent des tableaux de bord, IA générative en contexte municipal. Écarts assumés dans la lettre : Power BI, Databricks, données de transport.
#import "../../cv/modele.typ": *

// exp-clessn, exp-mitacs-musee : titre réel « scientifique de données » (positionnement/ia.md) ; jamais le titre du poste visé (Hubert, 2026-11-02)
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; comp-modelisation-predictive, proj-datagotchi ; exp-repensons-levis-2025, exp-vdq-stage (pipelines vers tableaux de bord)
#accroche[Plus de 5~ans en analyse de données. Je bâtis des modèles prédictifs et les pipelines qui alimentent les tableaux de bord des gestionnaires.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit) ; comp-llm-annotation (classement par Azure OpenAI)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Bâtir une base unique des sondages de la Ville et l’outil qui permet d’y chercher les questions et d’en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Classer les questions de sondage selon les services municipaux avec un modèle de langage, à partir d’un jeu de référence annoté (Azure OpenAI).
  - Faire accepter par les TI la solution technique après avoir consulté d’autres divisions et concevoir le pipeline qui doit relier cette base aux tableaux de bord Power BI des divisions.
])

// exp-repensons-levis-2025 (au_nom: perso), exp-environics (forêts aléatoires : comp-modelisation-predictive) ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne (AWS, Quarto).
  - *Environics Institute*~: analyser les sondages de 4 projets de recherche avec des modèles de régression et de forêts aléatoires (R).
])

// exp-opubliq, proj-atlas-opubliq (agent analytique, Azure OpenAI ; statut pause, aucun client payant : ne pas dire « livré à des clients »), proj-geo-marketing-api (DuckDB, ~57 000 aires, schéma conçu par Hubert), proj-medaillon-plateforme ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir une plateforme d’analyse de sondages où un agent répond aux questions en langage naturel et rédige un rapport chiffré qui cite ses sources (Azure OpenAI, Azure AI Search).
  - Concevoir le modèle de données d’une base de profils sociodémographiques de 57~000 aires de diffusion du Canada, interrogée en SQL (DuckDB, Azure).
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu’elle utilise encore (TypeScript, AWS).
])

// exp-mitacs-musee (role: contributeur, en binôme ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes et présenter aux gestionnaires les deux rapports qui en sont tirés.
])

// exp-clessn, proj-datagotchi (attention : pas « créateur » ; responsable du modèle USA 2024 ; séries temporelles ARIMA confirmées le 2026-11-02)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Bâtir le modèle prédictif de l’application Datagotchi pour l’élection américaine de 2024 et le mettre à jour pendant la campagne, avec un point de départ du vote par code postal estimé par séries temporelles (ARIMA ; plus de 10~000 utilisateurs, R et Python).
  - Concevoir avec un développeur les pipelines ETL et les contrôles de qualité de plus de 30 sondages et former plus de 10 étudiants non techniques à s’en servir.
])

#pagebreak(weak: true)
#section[Projets]

// proj-mega-agregateur-qc2026 (cadre perso, poids moyen ; attention : pas de public ni d'annonce ; preuve : graphique horodaté)
#entree(titre: "Projections de l’élection québécoise de 2026", org: "Projet personnel", dates: "oct. 2026", puces: [
  - Calibrer les projections de plusieurs agrégateurs et les mettre à jour en direct le soir du vote à partir du flux d’Élections Québec. Le modèle écartait un gouvernement péquiste majoritaire environ 40~minutes avant Radio-Canada (Python, R).
])

#section[Formation]

// form-maitrise-ulaval, form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-modelisation-predictive (avancé), comp-etl-pipelines, comp-visualisation, comp-quarto, comp-llm-annotation (avancé sans IA)
// comp-python, comp-sql (intermédiaire sans IA, avancé avec), comp-series-temporelles (intermédiaire, à confirmer), comp-modelisation-donnees, comp-geospatial, comp-rag-recherche-semantique (intermédiaire) ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "apprentissage automatique (régression, forêts aléatoires)", "pipelines de données (ETL)", "contrôle de la qualité des données", "tableaux de bord", "IA générative (classification de texte)")),
  ("Intermédiaire", ("Python (Pandas, NumPy, Streamlit)", "SQL", "séries temporelles (ARIMA)", "modélisation de données", "analyse géospatiale", "recherche sémantique (RAG)")),
  ("Livré en production avec Claude Code", ("requêtes SQL avancées (DuckDB)", "applications Python, AWS et Azure", "tableaux de bord et applications web (React, TypeScript)")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)
