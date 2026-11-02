// CV Air Transat, Spécialiste en science de la décision (gestion du revenu). Depuis les CV exo BI et Analysis Group. Faits : profil/ (ids en commentaire).
// Angle : modèles prédictifs tenus à jour en production, validation et calibration des modèles, pipelines automatisés avec contrôles. Écarts assumés dans la lettre : gestion du revenu et PROS, recherche opérationnelle, Python moins fort que R.
#import "../../cv/modele.typ": *

// exp-clessn, exp-mitacs-musee : titre réel « scientifique de données » ; jamais le titre du poste visé (Hubert, 2026-11-02)
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; comp-modelisation-predictive, proj-datagotchi (mises à jour pendant la campagne) ; pub-memoire (calibration, validation) ; comp-etl-pipelines
#accroche[Plus de 5~ans en science des données (R, Python). Je bâtis des modèles prédictifs, je valide leur calibration et je les garde à jour en production avec des pipelines automatisés.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit) ; comp-llm-annotation (jeu de référence annoté)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Classer chaque question de sondage de la Ville selon les services municipaux avec un modèle de langage et en mesurer la précision sur un jeu de référence annoté (Azure OpenAI).
  - Bâtir une base unique des sondages de la Ville et l’outil qui permet d’y chercher une question et d’en visualiser les résultats (Azure AI Search, Python, R~Shiny).
])

// exp-environics (forêts aléatoires : comp-modelisation-predictive) ; exp-repensons-levis-2025 (au_nom: perso ; pondération automatique par le pipeline, modèles bayésiens) ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne (AWS Lambda, modèles bayésiens, Quarto).
  - *Environics Institute*~: analyser les sondages de 4 projets de recherche avec des modèles de régression et de forêts aléatoires (R).
])

// exp-opubliq, proj-geo-marketing-api (DuckDB, ~57 000 aires, schéma conçu par Hubert), proj-medaillon-plateforme ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir en SQL le modèle de données d’une base de profils sociodémographiques de 57~000 aires de diffusion du Canada (DuckDB, Azure).
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu’elle utilise encore (TypeScript, AWS).
])

// exp-mitacs-musee (role: contributeur, en binôme ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes et présenter aux gestionnaires les deux rapports d’orientation rédigés en binôme.
])

// exp-clessn (pipelines conçus avec un développeur, contrôles de qualité), proj-datagotchi (attention : pas « créateur » ; responsable du modèle USA 2024 ; régression ordinale ; ARIMA ; outil Shiny pour tester le modèle en équipe)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Diriger le modèle prédictif de l’application Datagotchi pour l’élection américaine de 2024 et le mettre à jour pendant toute la campagne (plus de 10~000 utilisateurs, R et Python).
  - Estimer par séries temporelles (ARIMA) le point de départ du vote dans chaque code postal et bâtir un outil Shiny pour tester le modèle en équipe.
  - Concevoir avec un développeur les pipelines et les contrôles de qualité des données de plus de 30 sondages.
])

#pagebreak(weak: true)
#section[Projets]

// proj-mega-agregateur-qc2026 (perso ; attention : pas de public ni d'annonce ; alertes si une circonscription n'est pas reconnue)
#entree(titre: "Agrégateur de projections, élection québécoise 2026", org: "Projet personnel", dates: "2026", puces: [
  - Calibrer les projections de plusieurs agrégateurs et les mettre à jour en direct le soir du vote avec les résultats officiels. Le modèle signalait toute donnée qui ne correspondait pas et a écarté une majorité péquiste environ 40~minutes avant Radio-Canada.
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent » ; cours d'apprentissage automatique et d'approche bayésienne) ; pub-memoire (calibration de probabilités, simulation Monte Carlo, validation), form-eiom, form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", lieu: "Mémoire : probabilités calibrées et simulations Monte Carlo sur quatre élections fédérales", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-modelisation-predictive, comp-stats-bayesiennes (avec Stan : proj-panel-bodet-2026), comp-series-temporelles (a_confirmer : cité via Datagotchi seulement), comp-etl-pipelines, comp-visualisation, comp-inference-causale
// comp-python, comp-sql, comp-optimisation (intermédiaire sans IA ; confirmé par Hubert le 2026-11-02) ; comp-aws, comp-azure, comp-typescript-web (avec IA) ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "modélisation prédictive et apprentissage automatique", "calibration et validation de modèles", "inférence causale", "pipelines de données", "visualisation")),
  ("Intermédiaire", ("Python (Pandas, NumPy)", "SQL (DuckDB)", "statistique bayésienne (Stan)", "optimisation sous contraintes (programmation linéaire en nombres entiers)", "Excel")),
  ("Livré en production avec Claude Code", ("applications Python, AWS et Azure", "applications web (TypeScript)")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme : « bilingue » accepté par Hubert le 2026-11-02 quand l'offre l'exige, preuve exp-environics
  ("Langues", ("bilingue français-anglais (anglais : langue de travail chez Environics)",)),
)
