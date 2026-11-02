// CV Ville de Montréal (MHM), Agent(e) de recherche – Culture, sports, loisirs et développement social. Depuis le CV Alto (ton de référence). Faits : profil/ (ids en commentaire).
#import "../../cv/modele.typ": *

// exp-environics : titre réel « analyste de données » (poste de recherche et de compilation de données, pas d'apprentissage automatique)
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; form-maitrise-ulaval ; exp-vdq-stage, exp-medaillon-ciusss, exp-mitacs-musee
#accroche[Analyste en recherche sociale et en opinion publique depuis 2021, formé en science politique. Je mène des sondages et des consultations pour des organisations publiques, dont la Ville de Québec, un CIUSSS et un musée.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Rassembler les données de sondage de la Ville dans une base unique où chaque question est classée selon les produits et services municipaux (Azure AI Search, Python, R~Shiny).
  - Concevoir le pipeline qui reliera cette base aux tableaux de bord Power BI des divisions.
  - Définir avec les TI la structure des données du panel de répondants avant son passage au CRM Dynamics~365.
])

// exp-enap (temps partiel, au_nom: perso), pub-options-politiques-calcul-ia
#entree(titre: "Auxiliaire de recherche", org: "École nationale d’administration publique (ENAP)", dates: "2025 – 2026", puces: [
  - Compiler et analyser des données sur les centres de données et les lois de localisation des données et coécrire un article dans _Options politiques_ (R, Quarto).
])

// exp-environics (projets terminés : au passé dans la lettre), pub-substack-who-wants-children, pub-environics-tech-emploi ; exp-repensons-levis-2025, proj-repensons-levis-plateforme (au_nom: perso)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche, dont les intentions de parentalité des jeunes et l'effet de l'IA sur l'emploi (régression, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et alimentait le tableau de bord de l'équipe de campagne (AWS, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss (ampleur : 6 000 + 1 100 commentaires ; liste des organismes : scraping 211qc.ca, ~2 461 organismes ; présentation au client), proj-medaillon-plateforme ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir les 5 questionnaires d'une consultation du Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal et recueillir plus de 7~000 commentaires des usagers, de la population et des organismes communautaires.
  - Dresser la liste des quelque 2~400 organismes communautaires du territoire à partir du répertoire 211 et les classer par secteur.
  - Participer à la pondération et au rapport de cette consultation et en présenter les résultats au client.
])

// exp-mitacs-musee (role: contributeur, en binôme ; enquêtes de satisfaction ; présentation à des gestionnaires au-dessus du département)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes de satisfaction et croiser ces profils avec leur appréciation des expositions et des services.
  - Corédiger deux rapports d'orientation marketing et les présenter aux gestionnaires.
])

// exp-clessn (fournisseurs : Léger ; élection QC 2022 avec La Presse canadienne), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec un développeur les pipelines ETL de plus de 30 sondages et former plus de 10 étudiants non techniques à s'en servir.
  - Suivre la collecte de 5 sondages de la chaire avec Léger.
  - Analyser l'opinion pendant l'élection québécoise de 2022 pour la couverture de La Presse canadienne.
])

#pagebreak(weak: true)
#section[Formation]

// form-maitrise-ulaval, form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-ponderation, comp-analyse-sous-groupes (exigence ADS+ ; pas « ADS+ » lui-même), comp-programmation-sondages, comp-segmentation, comp-visualisation, comp-quarto, comp-python, comp-sql, comp-excel, comp-geospatial ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "conception de questionnaires (Qualtrics, SurveyJS)", "pondération de sondages", "comparaison des résultats entre groupes (genre, âge, etc.)", "segmentation", "visualisation", "Quarto")),
  ("Intermédiaire", ("Python (Pandas)", "SQL", "Excel", "données du recensement")),
  ("Livré en production avec Claude Code", ("tableaux de bord et applications web", "applications Python, AWS et Azure")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)

#section[Publications]

// pub-french-politics-pq, pub-activisme-environnemental + autres articles (compte repris du CV Alto)
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur sur la dynamique électorale au Québec (_French Politics_, 2025) et un sur l'appui à l'activisme environnemental au Canada (_Revue canadienne de science politique_, 2026).
