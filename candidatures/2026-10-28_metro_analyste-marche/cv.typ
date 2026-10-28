// CV Metro, Analyste de marché, Développement immobilier (demande n° 50186). Depuis les CV CSSMB et STM. Faits : profil/ (ids en commentaire).
// Angle : enquêtes (provenance de la clientèle), analyses géographiques à partir du recensement, mesure de l'effet d'un changement, rapports pour les gestionnaires. Écarts assumés dans la lettre : MapInfo, Power BI, commerce alimentaire et immobilier.
#import "../../cv/modele.typ": *

#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; comp-programmation-sondages, comp-geospatial (proj-geo-marketing-api), comp-inference-causale (proj-enap-lois-localisation), exp-mitacs-musee (rapports aux gestionnaires)
#accroche[Analyste de données depuis plus de 5~ans, surtout en enquêtes et en données du recensement par territoire. J’en tire des rapports pour les gestionnaires.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Réunir les sondages de la Ville dans une base unique et y ajouter un outil pour chercher une question et voir ses résultats (Python, R~Shiny).
  - Concevoir le pipeline qui doit relier cette base aux tableaux de bord Power BI des divisions.
])

// exp-environics ; exp-enap (au_nom: perso), proj-enap-lois-localisation, comp-inference-causale (double différence) ; exp-repensons-levis-2025 (au_nom: perso) ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche (régression, analyse factorielle, R)~; coécrire 4 billets en anglais.
  - *ENAP*~: mesurer par double différence l’effet dans le temps de l’adoption de lois sur la localisation des données et en présenter les résultats dans un rapport en ligne (R, Quarto).
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne.
])

// exp-opubliq, proj-geo-marketing-api (~57 000 aires de diffusion, recensement 2021, agrégation de petites zones en plus grandes), exp-medaillon-ciusss (5 questionnaires, collecte postale avec code QR, 6 000 + 1 100 commentaires, présentation au client) ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Bâtir une base de profils sociodémographiques du recensement pour 57~000 aires de diffusion du Canada et regrouper ces petites zones en territoires plus grands (Python, SQL).
  - Concevoir les 5 questionnaires d’une consultation du Comité des usagers du CIUSSS de l’Est-de-l’Île-de-Montréal et recueillir plus de 7~000 commentaires par la poste avec un code QR.
  - Participer à la pondération et au rapport de cette consultation et en présenter les résultats au client.
])

// exp-mitacs-musee (role: contributeur, en binôme ; enquêtes de satisfaction ; orientation marketing ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes de satisfaction et croiser ces profils avec leur appréciation des expositions et des services.
  - Corédiger deux rapports d’orientation marketing et les présenter aux gestionnaires.
])

// exp-clessn (fournisseurs : Léger ; pipelines conçus avec un développeur, contrôles de qualité ; formation de plus de 10 étudiants), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec un développeur les pipelines et les contrôles de qualité des données de plus de 30 sondages et former plus de 10 étudiants non techniques à s’en servir.
  - Suivre avec Léger la collecte de 5 sondages de la chaire.
  - Bâtir le modèle prédictif de l’application Datagotchi pour l’élection américaine de 2024 (plus de 10~000 utilisateurs, R et Python).
])

#pagebreak(weak: true)
#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-eiom (causalité et expérimentation), form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-programmation-sondages, comp-ponderation, comp-segmentation, comp-inference-causale (avancé), comp-redaction (avancé), comp-visualisation, comp-quarto
// comp-excel, comp-word, comp-powerpoint (dit par Hubert le 2026-10-28), comp-sql, comp-python, comp-geospatial (intermédiaire sans IA) ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R", "conception de questionnaires", "pondération de sondages", "segmentation", "mesure d’effet (double différence)", "rédaction de rapports", "visualisation", "Quarto")),
  ("Intermédiaire", ("Excel", "Word", "PowerPoint", "SQL", "Python", "analyses géographiques en R et en Python (recensement de Statistique Canada)")),
  ("Livré en production avec Claude Code", ("applications Python, AWS et Azure", "applications web (TypeScript)")),
  // comp-power-bi : notions, en dernier, sans qualificatif
  ("Notions", ("Power BI",)),
  // comp-bilinguisme : formulé « courant », preuve exp-environics
  ("Langues", ("français (langue maternelle)", "anglais courant (langue de travail chez Environics)")),
)
