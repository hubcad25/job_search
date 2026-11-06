// CV COFOMO, Statisticien senior – Données d'enquêtes synthétiques. Depuis les CV Alto et Air Transat. Faits : profil/ (ids en commentaire).
// Angle : statistique d'enquête (pondération d'échantillons biaisés, estimation par sous-groupes, bayésien hiérarchique en Stan, validation contre des résultats réels), répondants synthétiques. Écarts assumés dans la lettre : 7 ans demandés, Databricks, données d'entreprises.
#import "../../cv/modele.typ": *

// exp-clessn, exp-mitacs-musee : titre réel « scientifique de données » ; jamais le titre du poste visé
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Scientifique de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA
// exp-clessn (2021-01) : plus de 5 ans ; comp-ponderation ; comp-stats-bayesiennes (proj-panel-bodet-2026) ; pub-memoire (calibration sur quatre élections)
#accroche[Plus de 5~ans en statistique appliquée aux sondages (R, Python). Je pondère des échantillons difficiles, je bâtis des modèles bayésiens et je valide leurs estimations contre des résultats réels.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit) ; comp-llm-annotation
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Bâtir une base unique des sondages de la Ville et l’outil qui permet d’y chercher une question et d’en visualiser les résultats (Azure AI Search, Python, R~Shiny).
  - Classer chaque question de sondage selon les services municipaux avec un modèle de langage et en mesurer la précision sur un jeu de référence annoté (Azure OpenAI).
])

// exp-repensons-levis-2025 (au_nom: perso ; pondération automatique d'échantillons très biaisés, modèles bayésiens) ; exp-environics (pondération, forêts aléatoires, régression ; anglais) ; regroupés (guides/redaction.md)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Repensons Lévis*, élection municipale 2025~: bâtir le pipeline qui pondérait chaque matin les données très biaisées du pointage des bénévoles et mettait à jour un tableau de bord utilisé pour conseiller l’équipe de campagne (AWS, modèles bayésiens, Quarto).
  - *Environics Institute*~: pondérer et analyser en anglais les sondages de 4 projets de recherche avec des modèles de régression et de forêts aléatoires (R).
])

// exp-opubliq, exp-medaillon-ciusss (assistance à la pondération et au rapport ; présentation au client ; ampleur 6 000 + 1 100 commentaires), proj-medaillon-plateforme ; positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Concevoir les questionnaires d'une consultation du Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal et recueillir plus de 7~000 commentaires par la poste avec un code QR.
  - Participer à la pondération et au rapport de cette consultation et en présenter les résultats au client.
])

// exp-mitacs-musee (role: contributeur, en binôme)
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter les visiteurs du Musée à partir de ses enquêtes et présenter aux gestionnaires les deux rapports d’orientation rédigés en binôme.
])

// exp-clessn (pipelines conçus avec un développeur, contrôles de qualité ; Léger), proj-datagotchi (attention : pas « créateur »)
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Concevoir avec un développeur les pipelines et les contrôles de qualité des données de plus de 30 sondages.
  - Diriger le modèle prédictif de l’application Datagotchi pour l’élection américaine de 2024 et le mettre à jour pendant toute la campagne (plus de 10~000 utilisateurs, R et Python).
  - Suivre la collecte de 5 sondages de la chaire avec Léger.
])

#pagebreak(weak: true)
#section[Projets]

// proj-panel-bodet-2026 (responsable, non payé ; 3 090 répondants, parti × région × vague ; Stan, effets maison ; MRP essayé puis écarté)
#entree(titre: "Potentiel de croissance des partis, élection québécoise 2026", org: "Projet de recherche avec Marc-André Bodet", dates: "2026", puces: [
  - Estimer le plancher et le plafond de chaque parti par région à partir d’un panel de 3~090 répondants en 3 vagues, avec simulation Monte Carlo de l’incertitude (R).
  - Bâtir un modèle de tendance bayésien hiérarchique sur les sondages publiés de 2022 à 2026, avec un effet propre à chaque firme (Stan).
])

// proj-silicon-sampling, pub-wp-silicon-sampling (avec Justin Savoie ; Llama 3.1 8B ; CES / Démocratie Checkup 2024)
#entree(titre: "Répondants synthétiques par modèle de langage", org: "Recherche avec Justin Savoie", dates: "en cours", puces: [
  - Entraîner un modèle de langage sur des sondages électoraux canadiens pour générer des répondants synthétiques et le comparer aux consignes seules, que l’entraînement surpasse (Llama~3.1, Python).
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent » ; cours d'approche bayésienne) ; pub-memoire (calibration, Monte Carlo, validation sur quatre élections) ; form-eiom, form-bac-eco-pol-ulaval
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", lieu: "Mémoire : probabilités calibrées et validées sur quatre élections fédérales, simulations Monte Carlo", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// comp-r-shiny, comp-ponderation, comp-analyse-sous-groupes, comp-modelisation-predictive, comp-analyse-factorielle, comp-git, comp-visualisation
// comp-python, comp-sql, comp-stats-bayesiennes (intermédiaire sans IA ; Stan : proj-panel-bodet-2026) ; comp-aws, comp-azure (avec IA) ; comp-loi25 ; deux niveaux : positionnement/ia.md
// comp-imputation (pub-memoire : mice, appariement par moyenne prédictive ; a_confirmer, intermédiaire)
#competences(
  ("Maîtrise", ("R et Shiny", "pondération de sondages", "comparaison des résultats par sous-groupe", "modélisation prédictive (régression, forêts aléatoires)", "analyse factorielle", "Git", "visualisation")),
  ("Intermédiaire", ("Python (Pandas, NumPy)", "SQL (DuckDB)", "statistique bayésienne (Stan)", "imputation multiple (mice)", "conformité à la Loi~25")),
  ("Livré en production avec Claude Code", ("applications Python, AWS et Azure",)),
  // comp-bilinguisme : « bilingue » quand l'offre l'exige
  ("Langues", ("bilingue français-anglais (anglais : langue de travail chez Environics)",)),
)
