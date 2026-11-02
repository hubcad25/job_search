// CV MD Analytics, Analyste en études de marché (niveau débutant). Depuis les CV Alto et Metro. Faits : profil/ (ids en commentaire).
// Angle : mener une étude de sondage à toutes les étapes (questionnaire, terrain, analyse, rapport), consultation en santé (CIUSSS). Écarts assumés dans la lettre : pharmaceutique, SPSS.
#import "../../cv/modele.typ": *

// exp-environics : titre réel « analyste de données » ; jamais le titre du poste visé (Hubert, 2026-11-02)
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; comp-programmation-sondages, comp-ponderation ; exp-medaillon-ciusss (santé), exp-mitacs-musee, exp-environics (rapports)
#accroche[Analyste de sondages depuis plus de 5~ans. Je mène des études du questionnaire jusqu’au rapport, dont une consultation auprès des usagers d’un CIUSSS.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Réunir les sondages de la Ville dans une base unique et y ajouter un outil pour chercher une question et voir ses résultats (Python, R~Shiny).
  - Définir avec les TI la structure des données du panel de répondants avant son passage au CRM Dynamics~365.
])

// exp-environics, pub-environics-tech-emploi, pub-substack-* ; exp-repensons-levis-2025 (au_nom: perso) ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute*~: pondérer et analyser les sondages de 4 projets de recherche (régression, analyse factorielle, R)~; coécrire 4 billets en anglais.
  - *Repensons Lévis*, élection municipale 2025~: concevoir le sondage de campagne et bâtir le pipeline qui pondérait chaque matin les données du pointage des bénévoles et mettait à jour un tableau de bord (AWS, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss (5 questionnaires SurveyJS, collecte postale avec code QR, 6 000 + 1 100 commentaires ; assistance pondération et rapport ; présentation au client), proj-medaillon-plateforme ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir et programmer les 5 questionnaires d’une consultation du Comité des usagers du CIUSSS de l’Est-de-l’Île-de-Montréal et recueillir plus de 7~000 commentaires par la poste avec un code QR.
  - Participer à la pondération et au rapport de cette consultation et en présenter les résultats au client.
  - Livrer à Médaillon Groupe Conseils la plateforme de sondages en libre-service qu’elle utilise encore (TypeScript, AWS).
])

// exp-mitacs-musee (role: contributeur, en binôme ; enquêtes de satisfaction ; orientation marketing ; présentation aux gestionnaires)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes de satisfaction et croiser ces profils avec leur appréciation des expositions et des services.
  - Corédiger deux rapports d’orientation marketing et les présenter aux gestionnaires.
])

// exp-clessn (fournisseurs : Léger, via Synopsis ; pipelines conçus avec un développeur, contrôles de qualité ; formation de plus de 10 étudiants), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Suivre avec Léger la collecte de 5 sondages de la chaire.
  - Concevoir avec un développeur les pipelines et les contrôles de qualité des données de plus de 30 sondages et former plus de 10 étudiants non techniques à s’en servir.
  - Concevoir avec Léger le sondage pilote de l’application Datagotchi pour l’élection américaine de 2024 (plus de 10~000 utilisateurs).
])

#pagebreak(weak: true)
#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-eiom, form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation~; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-programmation-sondages, comp-ponderation, comp-segmentation, comp-analyse-factorielle, comp-redaction, comp-visualisation
// comp-llm-annotation (codification par LLM, jamais à la main : dit par Hubert le 2026-11-02)
// comp-excel, comp-word, comp-powerpoint (dit par Hubert le 2026-10-28), comp-python, comp-sql ; deux niveaux : positionnement/ia.md
#competences(
  ("Maîtrise", ("R", "conception et programmation de questionnaires (Qualtrics, SurveyJS)", "pondération de sondages", "codification des réponses ouvertes par modèle de langage", "segmentation", "analyse factorielle", "rédaction de rapports", "visualisation")),
  ("Intermédiaire", ("Excel", "Word", "PowerPoint", "Python", "SQL")),
  ("Livré en production avec Claude Code", ("plateformes de sondage web (TypeScript, AWS)",)),
  // comp-bilinguisme : « bilingue » accepté par Hubert le 2026-11-02 (l'offre l'exige), preuve exp-environics
  ("Langues", ("bilingue français-anglais (anglais : langue de travail chez Environics)",)),
)
