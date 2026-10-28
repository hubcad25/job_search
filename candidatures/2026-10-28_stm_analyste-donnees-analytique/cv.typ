// CV STM, Analyste - Données et analytique (n° 34585). Depuis le CV CSSMB (2026-10-28). Faits : profil/ (ids en commentaire).
// Angle : structures de données, pipelines et qualité des données, tableaux de bord, soutien aux utilisateurs. Écarts assumés dans la lettre : Power BI/DAX, Power Query.
#import "../../cv/modele.typ": *

// exp-environics : titre réel « analyste de données »
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; exp-vdq-stage, exp-clessn (pipelines ETL, contrôles de qualité), proj-medaillon-plateforme
#accroche[Analyste de données depuis plus de 5~ans. Je conçois les structures de données et les pipelines qui alimentent les tableaux de bord des gestionnaires.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Bâtir une base unique des sondages de la Ville et l’outil qui permet d’y chercher les questions et d’en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Proposer aux TI la solution technique après avoir consulté d’autres divisions, puis la faire accepter.
  - Concevoir le pipeline qui reliera cette base aux tableaux de bord Power BI des divisions.
  - Définir avec les TI le modèle de données du panel de répondants avant son passage au CRM Dynamics~365.
])

// exp-repensons-levis-2025 (au_nom: perso), exp-environics ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne (AWS, Quarto).
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche (régression, analyse factorielle, R).
])

// exp-opubliq, proj-medaillon-plateforme (environnements dev et prod, journal des décisions), proj-geo-marketing-api (DuckDB, ~57 000 aires, comp-loi25), exp-medaillon-ciusss (ampleur 6 000 + 1 100) ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu’elle utilise encore, avec des environnements de développement et de production séparés (TypeScript, AWS).
  - Concevoir le modèle de données d’une base de profils sociodémographiques de 57~000 aires de diffusion du Canada, interrogée en SQL, et en documenter la conformité à la Loi~25 (DuckDB, Azure).
  - Mener la collecte d’une consultation du Comité des usagers du CIUSSS de l’Est-de-l’Île-de-Montréal (plus de 7~000 commentaires) et en présenter les résultats au client.
])

// exp-mitacs-musee (role: contributeur, en binôme ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes et présenter aux gestionnaires les deux rapports qui en sont tirés.
])

// exp-clessn (pipelines conçus avec un développeur ; contrôles de qualité confirmés 2026-10-28 ; formation de plus de 10 étudiants), proj-polimetre-outil (fichiers Excel → import au site, encore utilisé), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec un développeur le modèle de données, les pipelines ETL et les contrôles de qualité de plus de 30 sondages et former plus de 10 étudiants non techniques à s’en servir.
  - Créer l’outil que l’équipe du Polimètre utilise encore pour transformer ses fichiers Excel en données prêtes à importer dans le site (R~Shiny).
  - Bâtir le modèle prédictif de l’application Datagotchi pour l’élection américaine de 2024 (plus de 10~000 utilisateurs, R et Python).
])

// exp-ta-pol7004 (3 sessions, 20-30 étudiants)
#entree(titre: "Auxiliaire d’enseignement en analyse quantitative", org: "Université Laval", dates: "2022 – 2024", puces: [
  - Animer les laboratoires en R d’un cours de cycles supérieurs pendant 3 sessions (20 à 30 étudiants par session).
])

#pagebreak(weak: true)
#section[Formation]

// form-maitrise-ulaval, form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-etl-pipelines (avancé), comp-visualisation, comp-quarto, comp-gestion-projet (avancé)
// comp-modelisation-donnees (intermédiaire, dit par Hubert le 2026-10-28) ; comp-sql (intermédiaire sans IA, avancé avec), comp-python, comp-excel, comp-word, comp-loi25 ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "pipelines de données (ETL)", "contrôle de la qualité des données", "tableaux de bord", "visualisation", "Quarto", "gestion de projet")),
  ("Intermédiaire", ("SQL", "modélisation de données", "Python (Pandas, NumPy)", "Excel", "Word", "conformité à la Loi 25")),
  ("Livré en production avec Claude Code", ("requêtes SQL avancées (DuckDB)", "applications Python, AWS et Azure", "applications web (TypeScript)")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)
