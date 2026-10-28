// CV La Presse, Analyste principal ou principale de données. Depuis le CV Alto (ton validé) et cv/base_techno.typ. Faits : profil/ (ids en commentaire).
#import "../../cv/modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste et scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; form-maitrise-ulaval, form-bac-eco-pol-ulaval ; comp-modelisation-predictive, comp-etl-pipelines, comp-r-shiny, comp-python, comp-sql
#accroche[Scientifique de données formé en économie et en science politique et actif en analyse de données depuis 2021. Je livre en R, Python et SQL des modèles prédictifs et des tableaux de bord à des équipes qui ne sont pas analystes.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit) ; comp-llm-annotation
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Consulter d'autres divisions et faire accepter par les TI une solution pour centraliser les données de sondage de la Ville.
  - Bâtir l'outil qui permet de chercher dans les questions de sondage et d'en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Classer par LLM les questions de sondage selon les produits et services municipaux à partir d'un jeu de référence annoté (Azure OpenAI).
])

// exp-environics (forêts aléatoires, régression), pub-substack-* ; exp-repensons-levis-2025, proj-repensons-levis-plateforme (au_nom: perso)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche, dont l'effet de l'IA sur l'emploi (forêts aléatoires, régression, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données de pointage des bénévoles et alimentait le tableau de bord de l'équipe de campagne (AWS, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss (5 questionnaires, 6 000 + 1 100 commentaires, présentation au client), proj-medaillon-plateforme (role: responsable), proj-atlas-opubliq (aucun client payant : « concevoir ») ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Livrer seul à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu'elle utilise encore (TypeScript, AWS).
  - Mener pour le Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal une consultation de 5 questionnaires qui a recueilli plus de 7~000 commentaires et en présenter les résultats au client.
  - Concevoir l'Atlas, une plateforme où un agent rédige à partir de 25 sondages des rapports chiffrés qui citent leurs sources (Azure AI Search, Azure OpenAI).
])

// exp-mitacs-musee (role: contributeur, en binôme ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs à partir des enquêtes du Musée et corédiger deux rapports d'orientation marketing présentés aux gestionnaires.
])

// exp-clessn (titres_occupes ; fonction développement et partenaires ; pipelines conçus avec un développeur, pas seul ; élection QC 2022 avec La Presse canadienne), proj-datagotchi (attention : pas « créateur » ; responsable du modèle US 2024)
#entree(titre: "Auxiliaire de recherche, membre de l’équipe de coordination, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec Léger le sondage pilote de l'application Datagotchi pour l'élection américaine de 2024 et en bâtir le modèle prédictif (plus de 10~000 utilisateurs, R et Python).
  - Concevoir avec un développeur les pipelines ETL de plus de 30 sondages et d'articles médiatiques et former plus de 10 étudiants non techniques à s'en servir.
  - Être responsable du développement de la chaire et des relations avec ses partenaires au sein de l'équipe de coordination.
  - Analyser l'opinion pendant l'élection québécoise de 2022 pour la couverture de La Presse canadienne.
])

#section[Projets]

// proj-mega-agregateur-qc2026 (attention : pas suivi par un public, pas annoncé ; preuve = graphique horodaté)
#entree(titre: "Agrégateur de projections, élection québécoise 2026", org: "Projet personnel", dates: "2026", puces: [
  - Mettre à jour les projections en direct le soir du vote à partir du flux d'Élections Québec. Le modèle indiquait un gouvernement minoritaire 15 à 55 minutes avant les médias (Python, R).
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-modelisation-predictive, comp-etl-pipelines, comp-segmentation, comp-ponderation, comp-visualisation, comp-quarto, comp-git
// comp-python, comp-sql, comp-stats-bayesiennes, comp-aws, comp-azure (intermédiaire sans IA)
// comp-api-backend, comp-typescript-web (avec IA) ; comp-llm-annotation, comp-rag-recherche-semantique, comp-agents-llm ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "modélisation prédictive", "pipelines ETL", "segmentation", "pondération de sondages", "visualisation", "Quarto", "Git")),
  ("Intermédiaire", ("Python (Pandas, Polars)", "SQL (DuckDB)", "statistique bayésienne", "AWS", "Azure")),
  ("Livré en production avec Claude Code", ("applications Python", "API FastAPI", "applications web TypeScript")),
  ("IA appliquée", ("classification et extraction par LLM", "recherche sémantique (RAG)", "agents LLM")),
  // comp-google-analytics : notions, en dernier, sans qualificatif
  ("Notions", ("Google Analytics",)),
  // comp-bilinguisme (presque bilingue) : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)

#section[Publications]

// pub-french-politics-pq, pub-prompting-the-machine, pub-gpt-party + autres articles (compte repris de cv/base_techno.typ)
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur (_French Politics_, 2025) et deux sur l'usage des LLM en sciences sociales (_Social Science Computer Review_ et _Journal of Information Technology & Politics_, 2026).
