// CV Analysis Group, Scientifique des données (maîtrise), Montréal, début 2027 (n° 3082). En français (choix d'Hubert le 2026-10-28). Depuis le CV PSP. Faits : profil/ (ids en commentaire).
// Angle : IA générative (RAG, agents, extraction par LLM), modélisation statistique, portails R Shiny, packages R, formation des équipes.
#import "../../cv/modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans position sur l'IA ; un LLM dans le produit reste un fait technique.
// exp-clessn (2021-01) : plus de 5 ans ; comp-r-shiny, comp-python, comp-modelisation-predictive, comp-rag-recherche-semantique, comp-agents-llm ; exp-environics (recherche), exp-medaillon-ciusss (santé), exp-vdq-stage (municipal) ; portails : proj-vdq-outil-sondages (Shiny), exp-repensons-levis-2025 (Quarto), comp-typescript-web (React)
#accroche[Plus de 5~ans en science des données (R, Python). Modèles statistiques, outils qui utilisent des LLM (RAG, agents, extraction) et portails analytiques (R~Shiny, Quarto, React) pour des clients en recherche, en santé communautaire et au municipal.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit), comp-llm-annotation, comp-rag-recherche-semantique
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Réunir les sondages de la Ville dans une base unique et y ajouter un outil pour chercher une question et voir ses résultats (Azure AI Search, Python, R~Shiny).
  - Classer chaque question par produit et service municipal à l’aide d’un LLM validé sur un jeu de référence annoté (Azure OpenAI).
  - Consulter d’autres divisions, puis faire accepter la solution technique par les TI.
])

// exp-environics, pub-environics-tech-emploi (analyse factorielle) ; exp-repensons-levis-2025 (au_nom: perso ; pondération automatique par le pipeline)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche, dont un sur l’effet de l’IA sur l’emploi (analyse factorielle, régression, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne (AWS, Quarto).
])

// exp-opubliq, proj-atlas-opubliq (25 sondages publics, recensement, financement politique ; BM25 + reranking Cohere ; statut pause), exp-medaillon-ciusss (scraping du 211qc.ca, ~2 461 organismes, filtre LLM), proj-geo-marketing-api (~57 000 aires, FastAPI, DuckDB, Docker, Azure) ; positionnement/opubliq.md (4e puce Médaillon retirée : max 3 puces)
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Bâtir l’Atlas, une plateforme qui réunit 25 sondages publics, le recensement et le financement politique. Un agent y répond aux questions en langage courant et rédige des rapports qui citent leurs sources (recherche hybride avec reclassement, Azure AI Search, Azure OpenAI).
  - Dresser la liste des organismes communautaires de l’Est de Montréal pour une consultation du CIUSSS en extrayant près de 2~500 fiches du 211 et en les triant par LLM (Python, BeautifulSoup).
  - Bâtir une API interne de profils sociodémographiques pour environ 57~000 aires de diffusion du recensement (FastAPI, DuckDB, Docker, Azure).
])

// exp-clessn (ETL conçus avec un développeur, pas seul ; articles et débats ; formation de plus de 10 étudiants), proj-datagotchi (attention : pas « créateur » ; a dirigé la modélisation), proj-sondr (poids faible : utilisé par l'équipe et dans le mémoire)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Diriger la modélisation prédictive de l’application Datagotchi pour l’élection américaine de 2024 (plus de 10~000 utilisateurs, R et Python).
  - Concevoir avec un développeur les pipelines ETL de plus de 30 sondages, d’articles de presse et de débats parlementaires et former plus de 10 étudiants non techniques à s’en servir.
  - Créer des packages R internes utilisés par l’équipe, dont sondr pour l’analyse de sondages.
])

// exp-mitacs-musee (role: contributeur, en binôme)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs à partir des enquêtes du Musée et présenter aux gestionnaires les deux rapports rédigés en binôme.
])

// exp-ta-icpsr (attention : cours de quelques jours, à distance depuis Québec ; monté avec Yannick Dufresne), exp-ta-pol7004 (3 sessions, 20-30 étudiants)
#entree(titre: "Auxiliaire d’enseignement", org: "Université Laval et ICPSR Summer Program", dates: "2022 – 2025", puces: [
  - Monter avec Yannick Dufresne un cours intensif sur les tableaux de bord et les applications en R~Shiny et en animer les laboratoires (ICPSR, 2025, à distance).
  - Animer les laboratoires en R d’un cours d’analyse quantitative de cycles supérieurs pendant 3 sessions (Université Laval).
])

#pagebreak(weak: true)
#section[Projets]

// proj-silicon-sampling (statut actif), pub-wp-silicon-sampling (working paper en cours, avec Justin Savoie)
#entree(titre: "Répondants synthétiques par LLM", org: "Projet de recherche", dates: "en cours", puces: [
  - Affiner Llama 3.1 8B sur des sondages électoraux canadiens. Le modèle affiné prédit mieux les réponses que les consignes seules (PyTorch, Unsloth, RunPod). Article de travail en préparation.
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent » ; cours d'apprentissage automatique et d'approche bayésienne), form-eiom, form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", lieu: "Cours d’apprentissage automatique et d’approche bayésienne", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-r-packages, comp-modelisation-predictive, comp-etl-pipelines, comp-visualisation, comp-quarto, comp-git, comp-environnement-linux
// comp-python, comp-sql, comp-scraping, comp-stats-bayesiennes, comp-geospatial (niveau sans IA : intermédiaire)
// comp-api-backend, comp-typescript-web, comp-aws, comp-azure (avec IA) ; comp-llm-annotation, comp-rag-recherche-semantique, comp-agents-llm, comp-fine-tuning ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "packages R", "modélisation prédictive et apprentissage automatique", "pipelines ETL", "visualisation", "Quarto", "Git", "Linux")),
  ("Intermédiaire", ("Python (Pandas, Polars)", "SQL (DuckDB)", "web scraping", "statistique bayésienne", "données géospatiales")),
  ("Livré en production avec Claude Code", ("API (FastAPI, Docker)", "applications web (React, TypeScript)", "applications Python, AWS et Azure")),
  ("IA générative", ("extraction et annotation par LLM", "recherche sémantique et RAG", "agents LLM", "affinage de modèles")),
  // comp-bilinguisme (presque bilingue) : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)

#section[Publications]

// pub-prompting-the-machine, pub-gpt-party, pub-french-politics-pq + autres articles
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur (_French Politics_, 2025). Deux portent sur l’usage des LLM en sciences sociales et l’un d’eux présente une méthode d’extraction de données (_Social Science Computer Review_ et _Journal of Information Technology & Politics_, 2026).
