// Lettre Air Transat, Spécialiste en science de la décision (gestion du revenu). Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : lettres Alto et exo BI.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 2 novembre 2026],
  objet: [Candidature au poste de spécialiste en science de la décision],
  appel: [Madame, Monsieur,],
)

// Structure calquée sur la lettre exo BI (guides/redaction.md, « Leçons de la lettre exo BI ») : qui je suis ; besoin de l'offre (valider et surveiller des modèles) puis preuves ; écarts regroupés (même travail, autre contexte) puis fin positive ; IA générale (combler les points faibles).

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage
Je travaille en science des données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je bâtis surtout des modèles prédictifs et les pipelines qui les gardent à jour.

// 2. offre.md (valider, tester et évaluer des modèles ; KPI de qualité des modèles ; automatiser la surveillance) ; proj-datagotchi (responsable du modèle USA 2024, mises à jour pendant la campagne, outil Shiny pour tester le modèle en équipe ; pas « créateur ») ; pub-memoire (probabilités calibrées sur quatre élections fédérales) ; proj-mega-agregateur-qc2026 (perso ; alertes ; attention : pas de public ni d'annonce)
Le travail de validation que décrit votre offre ressemble à celui que j'ai fait en campagne électorale, avec des modèles qu'il fallait vérifier et garder à jour pendant qu'on s'en servait. Pour l'élection américaine de 2024, j'étais responsable du modèle prédictif de l'application Datagotchi à la CLESSN. Je l'ai mis à jour tout au long de la campagne et j'ai bâti un outil Shiny qui permettait à l'équipe de le tester. Dans mon mémoire de maîtrise, je jugeais mes probabilités de vote selon leur calibration sur quatre élections fédérales. Le soir de l'élection québécoise de 2026, un modèle que j'avais construit pour mon propre usage se mettait à jour avec les résultats et m'alertait quand une donnée ne correspondait pas. Il a écarté un gouvernement péquiste majoritaire environ 40~minutes avant Radio-Canada.

// 3. Écarts regroupés : comp-optimisation (confirmée par Hubert le 2026-11-02 : pub-memoire, proj-pool-lp), gestion du revenu, PROS et transport aérien (absents du profil), comp-python (intermédiaire sans IA ; livré : proj-datagotchi, exp-vdq-stage) ; fin positive : domaines variés (proj-datagotchi, exp-mitacs-musee, exp-vdq-stage), formulation de la lettre exo
Mon expérience en optimisation sous contraintes vient de mon mémoire et de projets personnels plutôt que d'un système de gestion du revenu. Je n'ai jamais travaillé avec PROS ni dans le transport aérien. Je modélise surtout en R et je me sers moins de Python. J'aime beaucoup décortiquer un nouveau problème de données. Je l'ai fait avec des sujets très différents, du vote aux visiteurs d'un musée et aux services d'une ville.

// 4. offre.md (solutions IA/ML, outils d'IA) ; positionnement/ia.md ; comp-dev-ia-pm (combler les points faibles, dit par Hubert le 2026-11-02 ; pas d'exemple pointu), proj-medaillon-plateforme ; formulation de la lettre exo
Dans mon propre travail, je me sers de Claude Code pour combler mes points plus faibles, surtout en développement logiciel. Je ne lui délègue pas ma réflexion. Je découpe moi-même le travail et je relis et teste tout ce qu'il produit. C'est ce qui m'a permis de livrer seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
