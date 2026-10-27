// CV Alto, Conseiller·ère, opinion publique et analytique. Depuis le CV FCCQ (2026-10-24). Faits : profil/ (ids en commentaire).
#import "../../cv/modele.typ": *

// exp-environics : titre réel « analyste de données »
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; form-maitrise-ulaval ; proj-vdq-outil-sondages, proj-medaillon-plateforme (outils)
// exp-clessn (depuis 2021-01), exp-environics, exp-medaillon-ciusss, exp-mitacs-musee, exp-vdq-stage
#accroche[Analyste quantitatif en opinion publique depuis plus de 5~ans, formé en science politique. J'analyse des sondages et je programme aussi les plateformes de collecte et les tableaux de bord qui vont avec.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Bâtir un outil qui permet de chercher dans les questions de sondage de la Ville et d'en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Concevoir le pipeline qui reliera cet outil aux tableaux de bord Power BI des divisions.
  - Définir avec les TI la structure des données du panel de répondants avant son passage au CRM Dynamics~365.
])

// exp-environics, pub-environics-tech-emploi (analyse factorielle), pub-substack-* ; exp-repensons-levis-2025, proj-repensons-levis-plateforme (au_nom: perso)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche, dont l'appui à la démocratie et l'effet de l'IA sur l'emploi (analyse factorielle, régression, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données très biaisées du pointage des bénévoles et alimentait le tableau de bord qui guidait les recommandations stratégiques (AWS, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss (ampleur : 6 000 + 1 100 commentaires ; présentation au client), proj-medaillon-plateforme, proj-geo-marketing-api (comp-loi25) ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir les 5 questionnaires d'une consultation du Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal et recueillir plus de 7~000 commentaires par la poste avec un code QR.
  - Participer à la pondération et au rapport de cette consultation et en présenter les résultats au client.
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu'elle utilise encore (TypeScript, AWS).
])

// exp-mitacs-musee (role: contributeur, en binôme ; présentation à des gestionnaires au-dessus du département)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes et croiser ces profils avec leur appréciation des expositions et des services.
  - Rédiger deux rapports d'orientation marketing et les présenter aux gestionnaires.
])

// exp-clessn (fournisseurs : Léger, via Synopsis ; DPRD ; élection QC 2022 avec La Presse canadienne, comp-classes-latentes), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec un développeur les pipelines ETL de plus de 30 sondages et former plus de 10 étudiants non techniques à s'en servir.
  - Concevoir avec Léger le sondage pilote de l'application Datagotchi pour l'élection américaine de 2024 et en bâtir le modèle prédictif (plus de 10~000 utilisateurs, R et Python).
  - Suivre la collecte de 5 sondages de la chaire avec Léger (parfois par l'intermédiaire de Synopsis).
  - Analyser l'opinion pendant l'élection québécoise de 2022 pour la couverture de La Presse canadienne.
  - Présenter des analyses à la Direction de la philanthropie et des relations avec les diplômés de l'Université Laval.
])

#pagebreak(weak: true)
#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-ponderation, comp-programmation-sondages, comp-segmentation, comp-analyse-factorielle, comp-visualisation, comp-quarto
// comp-typescript-web (React : proj-nhl-matchups), comp-python, comp-sql, comp-classes-latentes, comp-stats-bayesiennes, comp-geospatial, comp-excel, comp-analyse-conjointe (exp-clessn, exp-repensons-levis-2025) ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R et Shiny", "pondération de sondages", "conception de questionnaires (Qualtrics, SurveyJS)", "segmentation", "analyse factorielle", "visualisation", "Quarto")),
  ("Intermédiaire", ("Python (Pandas, NumPy)", "SQL", "Excel", "classes latentes", "analyse conjointe", "statistique bayésienne", "données du recensement")),
  ("Livré en production avec Claude Code", ("tableaux de bord et applications web (React, TypeScript)", "applications Python, AWS et Azure")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme
  // comp-bilinguisme (presque bilingue) : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)

#section[Publications]

// pub-french-politics-pq, pub-activisme-environnemental + autres articles (compte repris du CV FCCQ)
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur sur la dynamique électorale au Québec (_French Politics_, 2025) et un sur l'appui à l'activisme environnemental au Canada (_Revue canadienne de science politique_, 2026).
