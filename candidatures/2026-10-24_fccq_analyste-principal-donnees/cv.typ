// CV FCCQ, Analyste principal·e de données. Depuis cv/base_techno.typ. Faits : profil/ (ids en commentaire).
#import "../../cv/modele.typ": *

// exp-environics : titre réel « analyste de données »
#show: cv.with(
  nom: "Hubert Cadieux",
  titre: "Analyste de données",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
)

// guides/redaction.md : accroche sans IA ; la position sur l'IA va dans la lettre (positionnement/ia.md)
// exp-clessn, exp-environics, exp-repensons-levis-2025
#accroche[Analyste de données depuis 2021. Nettoyer, valider et pondérer des données de sondage, produire des tableaux de bord mis à jour automatiquement et des rapports pour des publics non techniques.]

#section[Expérience]

// exp-vdq-stage, proj-vdq-outil-sondages (attention : pas de configuration dans Dynamics 365, aucun tableau de bord Power BI construit)
#entree(titre: "Stagiaire en analyse de données sociales", org: "Ville de Québec", lieu: "Service de l’interaction citoyenne", dates: "mai – sept. 2026", puces: [
  - Transformer un mandat peu défini en projet accepté par les TI, après avoir cerné la solution avec d'autres divisions de la Ville.
  - Concevoir le pipeline qui relie l'index des données de sondage aux tableaux de bord Power BI des divisions (Azure AI Search, Python).
  - Définir avec les TI les besoins et les schémas de données du panel de répondants en vue de son passage au CRM Dynamics~365.
])

// exp-environics, exp-repensons-levis-2025, proj-repensons-levis-plateforme, exp-enap (au_nom: perso)
#entree(titre: "Consultant en analyse de données", org: "Travailleur autonome", dates: "janv. 2025 – auj.", puces: [
  - *Environics Institute* (2025 – auj.)~: pondérer et analyser les données de sondage de 4 projets de recherche, dont _Support for Democracy_~; coécrire 4 billets.
  - *Repensons Lévis*, élection municipale 2025~: livrer un tableau de bord quotidien tiré du pointage des bénévoles, pondéré malgré des échantillons très biaisés, et des recommandations stratégiques (AWS, Quarto).
  - *ENAP* (2025 – 2026)~: nettoyer et analyser des données sur les centres de données au Canada et dans le monde~; coécrire un article dans _Options politiques_ (R, Quarto).
])

// exp-opubliq, exp-medaillon-ciusss, proj-medaillon-plateforme, proj-geo-marketing-api (comp-loi25) ; formulation : positionnement/opubliq.md
#entree(titre: "Cofondateur et PDG", org: "Opubliq inc.", lieu: "Recherche sur l’opinion publique et produits de données", dates: "2024 – auj. (en veille)", puces: [
  - Livrer seul une plateforme de sondages en libre-service pour Médaillon Groupe Conseils (CIUSSS de l'Est-de-l'Île-de-Montréal)~: 5 sondages, plus de 7~000 commentaires, encore utilisée (TypeScript, AWS).
  - Documenter la conformité à la Loi~25 (EFVP) d'une API de profils sociodémographiques pour environ 57~000 aires de diffusion (Python, DuckDB, Azure).
])

// exp-mitacs-musee (role: contributeur, en binôme) ; avant la CLESSN : ordre selon la date de début
#entree(titre: "Scientifique de données (stage Mitacs)", org: "Musée de la civilisation", dates: "2022 – 2024", puces: [
  - Segmenter en binôme les visiteurs à partir des enquêtes du Musée et en tirer deux rapports d'orientation marketing.
])

// exp-clessn, proj-datagotchi (attention : pas « créateur »), proj-polimetre-outil
#entree(titre: "Auxiliaire de recherche, puis scientifique de données", org: "CLESSN, Université Laval", dates: "2021 – 2024", puces: [
  - Construire les pipelines ETL de plus de 30 sondages, d'articles médiatiques et de débats parlementaires~; former plus de 10 étudiants non techniques à s'en servir.
  - Concevoir et mettre à jour le modèle de Datagotchi pour l'élection américaine de 2024, en partenariat avec Léger~: plus de 10~000 utilisateurs (régression ordinale, R).
  - Créer l'outil qui transforme les fichiers Excel de l'équipe du Polimètre en fichiers prêts à publier, encore utilisé aujourd'hui (R~Shiny).
])

#section[Projets]

// proj-mega-agregateur-qc2026 (attention : pas suivi par un public)
#entree(titre: "Méga-agrégateur, élection québécoise 2026", org: "Projet personnel", dates: "2026", puces: [
  - Agréger et calibrer les projections, puis les mettre à jour en direct le soir du vote~; le modèle indiquait un gouvernement minoritaire 15 à 55 minutes avant les médias.
])

#section[Formation]

// form-maitrise-ulaval (pas « mention Excellent »), form-bac-eco-pol-ulaval, form-eiom
#entree(titre: "Maîtrise en science politique (avec mémoire)", org: "Université Laval", dates: "2026")
#entree(titre: "Diplôme de l’École interdisciplinaire outils et méthodes", org: "Université Laval", lieu: "Causalité et expérimentation ; science des données", dates: "2023")
#entree(titre: "Baccalauréat intégré en économie et politique", org: "Université Laval", lieu: "Mention d’honneur de la Faculté des sciences sociales", dates: "2023")

#section[Compétences]

// Deux niveaux explicites : positionnement/ia.md ; comp-python (Pandas, NumPy confirmés 2026-10-24)
#competences(
  ("Maîtrise", ("R et Shiny", "nettoyage et validation des données", "pondération de sondages", "visualisation", "pipelines ETL", "Quarto", "Git")),
  ("Intermédiaire", ("Python (Pandas, NumPy, Polars)", "SQL (DuckDB)", "statistique bayésienne", "AWS", "Azure")),
  // comp-typescript-web (débutant sans IA), comp-python/aws/azure (avancé avec IA) : pas de doublon, voir guides/redaction.md
  ("Livré en production avec Claude Code", ("applications TypeScript", "API FastAPI", "applications Python, AWS et Azure")),
  ("IA appliquée", ("annotation et extraction par LLM", "recherche sémantique (RAG)", "agents LLM")),
  // comp-loi25 ; comp-power-bi, comp-crm : notions, en dernier, sans qualificatif (guides/redaction.md)
  ("Protection des données", ("Loi 25 (EFVP)",)),
  ("Notions", ("Power BI", "CRM Dynamics 365")),
  ("Langues", ("français (langue maternelle)", "anglais (presque bilingue)")),
)

#section[Publications]

// pub-prompting-the-machine, pub-gpt-party, pub-french-politics-pq + autres articles
Coauteur de 8 articles dans des revues avec comité de lecture, dont un comme premier auteur (_French Politics_, 2025) et deux sur l'usage des LLM en sciences sociales (_Social Science Computer Review_ et _Journal of Information Technology & Politics_, 2026).
