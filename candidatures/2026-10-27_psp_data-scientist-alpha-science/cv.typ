// CV PSP, Scientifique de données, Alpha Science (R4886-1). En français (portail et offre en français, choix d'Hubert le 2026-10-27). Depuis cv/base_techno.typ et le CV Alto (ton validé). Faits : profil/ (ids en commentaire).
#import "../../cv/modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA. exp-clessn (2021-01) : plus de 5 ans ; comp-python, comp-r-shiny, comp-sql, comp-scraping ; exp-medaillon-ciusss (santé), exp-vdq-stage (municipal), exp-environics (recherche)
#accroche[Scientifique de données depuis plus de 5~ans (R, Python, SQL). Collecte et nettoyage de données brutes, pipelines, modèles prédictifs et tableaux de bord pour des clients en santé, au municipal et en recherche.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit ; pipeline conçu, pas livré), comp-llm-annotation
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Bâtir un outil qui permet de chercher dans les questions de sondage de la Ville et d'en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Classer chaque question par produit et service municipal à l'aide d'un LLM validé sur un jeu de référence annoté (Azure OpenAI).
  - Concevoir le pipeline qui reliera ces données aux tableaux de bord Power BI des divisions.
])

// exp-environics, pub-environics-tech-emploi (analyse factorielle) ; exp-repensons-levis-2025, proj-repensons-levis-plateforme (au_nom: perso ; pondération automatique par le pipeline)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche, dont l'appui à la démocratie et l'effet de l'IA sur l'emploi (analyse factorielle, régression, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données très biaisées du pointage des bénévoles et alimentait le tableau de bord de la campagne (AWS, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss (scraping du 211qc.ca, ~2 461 organismes, filtre LLM ; 6 000 + 1 100 commentaires), proj-medaillon-plateforme, proj-atlas-opubliq (25 sondages publics, recensement, financement politique ; statut pause), proj-geo-marketing-api (~57 000 aires de diffusion) ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Dresser la liste des organismes communautaires de l'Est de Montréal pour une consultation du CIUSSS en extrayant près de 2~500 fiches du 211 et en les triant par LLM (Python, BeautifulSoup).
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu'elle utilise encore et qui a recueilli plus de 7~000 commentaires pour la consultation du CIUSSS (TypeScript, AWS).
  - Bâtir l'Atlas, une plateforme qui réunit 25 sondages publics, le recensement et le financement politique. Un agent y répond aux questions en langage courant et rédige des rapports qui citent leurs sources (Azure AI Search, Azure OpenAI).
  - Bâtir une API interne de profils sociodémographiques pour environ 57~000 aires de diffusion du recensement (FastAPI, DuckDB spatial, GeoParquet, Azure).
])

// exp-clessn (ETL : conçus avec un développeur, pas seul ; scraping d'articles et de débats, dit par Hubert le 2026-10-27), proj-datagotchi (attention : pas « créateur » ; a dirigé la modélisation ; R et Python)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec Léger le sondage pilote de l'application Datagotchi pour l'élection américaine de 2024 et en diriger la modélisation prédictive (plus de 10~000 utilisateurs, R et Python).
  - Concevoir avec un développeur les pipelines ETL de plus de 30 sondages, d'articles et de débats parlementaires et y former plus de 10 étudiants non techniques.
  - Analyser l'opinion pendant l'élection québécoise de 2022 pour la couverture de La Presse canadienne.
])

// exp-mitacs-musee (role: contributeur, en binôme)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs à partir des enquêtes du Musée et présenter aux gestionnaires les deux rapports rédigés en binôme.
])

#pagebreak(weak: true)
#section[Projets]

// proj-mega-agregateur-qc2026 (attention : pas suivi par un public ni annoncé)
#entree(titre: "Agrégateur du soir d’élection, Québec 2026", org: "Projet personnel", dates: "2026", puces: [
  - Agréger et calibrer les projections de sièges et les mettre à jour en direct à partir du flux officiel d'Élections Québec. Le modèle indiquait un gouvernement minoritaire 15 à 55 minutes avant les médias (Python, R).
])

// proj-silicon-sampling (statut actif ; date de début inconnue), pub-wp-silicon-sampling (working paper en cours, avec Justin Savoie)
#entree(titre: "Répondants synthétiques par LLM", org: "Projet de recherche", dates: "en cours", puces: [
  - Affiner Llama 3.1 8B sur des sondages électoraux canadiens. Le modèle affiné prédit mieux les réponses que les consignes seules (PyTorch, Unsloth). Article de travail en préparation.
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-eiom, form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-modelisation-predictive, comp-ponderation, comp-etl-pipelines, comp-visualisation, comp-quarto, comp-git
// comp-python, comp-sql, comp-scraping, comp-excel, comp-stats-bayesiennes, comp-geospatial (niveau sans IA : intermédiaire)
// comp-typescript-web, comp-api-backend, comp-aws, comp-azure (avec IA) ; comp-llm-annotation, comp-rag-recherche-semantique, comp-agents-llm, comp-fine-tuning ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "modélisation prédictive et apprentissage automatique", "pondération de sondages", "pipelines ETL", "visualisation", "Quarto", "Git")),
  ("Intermédiaire", ("Python (Pandas, Polars, GeoPandas)", "SQL (DuckDB)", "web scraping", "Excel", "statistique bayésienne", "données du recensement et géospatiales")),
  ("Livré en production avec Claude Code", ("tableaux de bord et applications web (React, TypeScript)", "API FastAPI", "applications Python, AWS et Azure")),
  ("IA appliquée", ("extraction et annotation par LLM", "recherche sémantique (RAG)", "agents LLM", "affinage de modèles")),
  // comp-bilinguisme (presque bilingue) : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)

#section[Publications]

// pub-prompting-the-machine, pub-gpt-party, pub-french-politics-pq + autres articles
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur (_French Politics_, 2025). Deux portent sur l'usage des LLM en sciences sociales et l'un d'eux présente une méthode d'extraction de données (_Social Science Computer Review_ et _Journal of Information Technology & Politics_, 2026).
