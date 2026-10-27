// Base de CV, facette techno. Faits tirés de profil/ (ids en commentaire). Forme : guides/redaction.md.
// Pour une candidature : copier dans candidatures/<dossier>/cv.typ et ajuster l'accroche, l'ordre et 3-4 puces.
#import "modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA ; la position sur l'IA va dans la lettre (positionnement/ia.md)
#accroche[Scientifique de données en sondages et opinion publique. Conçoit et livre de bout en bout des produits de données utilisés par des clients en santé, au municipal et en recherche.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l'interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Créer l'index des données de sondage qui alimentera les tableaux de bord des divisions, Shiny ou Power BI (Azure AI Search, Python).
  - Classer par LLM les questions de sondage selon les produits et services municipaux, à partir d'un jeu de référence annoté (Azure OpenAI).
  - Définir avec les TI les besoins et les schémas de données du panel de répondants en vue de son passage à Dynamics 365.
])

// exp-environics, exp-repensons-levis-2025, proj-repensons-levis-plateforme, exp-enap (au_nom: perso)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute* (2025 – auj.)~: pondérer et analyser les données de sondage de 4 projets de recherche, dont _Support for Democracy_~; coécrire 4 billets.
  - *Repensons Lévis*, élection municipale 2025~: livrer un tableau de bord quotidien tiré du pointage des bénévoles, pondéré malgré des échantillons très biaisés (AWS, Quarto).
  - *ENAP* (2025 – 2026)~: coécrire un article dans _Options politiques_ sur les centres de données et la gouvernance des données (R).
])

// exp-opubliq, exp-medaillon-ciusss, proj-medaillon-plateforme, proj-atlas-opubliq ; formulation : positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l'opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Livrer seul une plateforme de sondages en libre-service pour Médaillon Groupe Conseils (CIUSSS de l'Est-de-l'Île-de-Montréal)~: 5 sondages, plus de 7~000 commentaires recueillis, encore utilisée par le client (TypeScript, AWS).
  - Concevoir l'Atlas, une plateforme d'analyse de sondages~: recherche de questions par sens et rapports chiffrés qui citent leurs sources (Azure AI Search, Azure OpenAI).
  - Mener le développement des affaires~: étude de marché, entretiens et tests utilisateurs, demandes de financement.
])

// exp-clessn, proj-datagotchi (attention : pas « créateur »), proj-polimetre-outil
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir et mettre à jour le modèle de Datagotchi pour l'élection américaine de 2024, en partenariat avec Léger~: plus de 10~000 utilisateurs (régression ordinale, R).
  - Construire des pipelines ETL pour plus de 30 sondages, des articles médiatiques et des débats parlementaires~; y former plus de 10 étudiants non techniques.
  - Créer l'outil d'annotation et d'export des promesses du Polimètre, encore utilisé aujourd'hui (R Shiny).
])

// exp-mitacs-musee
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs à partir des enquêtes du Musée et en tirer deux rapports d'orientation marketing.
])

#section[Projets]

// proj-mega-agregateur-qc2026 (attention : pas suivi par un public)
#entree(titre: "Méga-agrégateur, élection québécoise 2026", org: "Projet personnel", dates: "2026", puces: [
  - Agréger et calibrer les projections, puis les mettre à jour en direct le soir du vote depuis le flux d'Élections Québec~; le modèle indiquait un gouvernement minoritaire 15 à 55 minutes avant les médias (Python, R).
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l'École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d'honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// Deux niveaux explicites : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "visualisation", "pondération de sondages", "modélisation prédictive", "pipelines ETL", "Quarto", "Git")),
  ("Intermédiaire", ("Python (Polars, GeoPandas)", "SQL (DuckDB)", "statistique bayésienne", "AWS", "Azure")),
  // comp-typescript-web (débutant sans IA), comp-python/aws/azure (avancé avec IA) : pas de doublon, voir guides/redaction.md
  ("Livré en production avec Claude Code", ("applications TypeScript", "API FastAPI", "applications Python, AWS et Azure")),
  ("IA appliquée", ("annotation et extraction par LLM", "recherche sémantique (RAG)", "agents LLM")),
  ("Langues", ("français (langue maternelle)", "anglais (presque bilingue)")),
)

#section[Publications]

// pub-prompting-the-machine, pub-gpt-party, pub-french-politics-pq + autres articles
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur (_French Politics_, 2025) et deux sur l'usage des LLM en sciences sociales (_Social Science Computer Review_ et _Journal of Information Technology & Politics_, 2026).
