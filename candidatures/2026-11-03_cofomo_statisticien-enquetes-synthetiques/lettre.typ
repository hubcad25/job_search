// Lettre COFOMO, Statisticien senior – Données d'enquêtes synthétiques. Copiée de cv/lettre_modele.typ (gabarit exo BI). Faits : profil/ (ids en commentaire).
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 3 novembre 2026],
  objet: [Candidature au poste de statisticien senior, données d'enquêtes synthétiques],
  appel: [Madame, Monsieur,],
)

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; comp-ponderation, comp-stats-bayesiennes
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je pondère et je modélise surtout des données de sondage, souvent avec des méthodes bayésiennes.

// 2. offre.md (augmenter des sondages, précision par sous-groupe, comparer aux résultats réels, remettre en question les méthodes fragiles) ; proj-panel-bodet-2026 (3 090 répondants, parti × région, Stan, effets maison, MRP essayé puis écarté) ; pub-memoire (calibration sur quatre élections) ; proj-silicon-sampling (avec Justin Savoie, fine-tuning bat le prompting)
Le travail d'estimation par sous-groupe que décrit votre offre ressemble à celui que je fais en ce moment avec Marc-André Bodet sur l'élection québécoise de 2026. À partir d'un panel de 3~090 répondants, j'estime le plancher et le plafond de chaque parti dans chaque région. J'ai essayé une régression multiniveau avec poststratification avant de l'écarter, et la tendance repose sur un modèle bayésien hiérarchique en Stan qui tient compte de l'effet de chaque firme. Dans mon mémoire de maîtrise, je validais mes probabilités de vote selon leur calibration sur quatre élections fédérales. Avec Justin Savoie, j'étudie aussi la génération de répondants synthétiques par un modèle de langage entraîné sur des sondages électoraux.

// 3. Écarts : exp-clessn (2021-01, environ 5 ans vs 7 demandés), Databricks (absent du profil ; comp-git, comp-etl-pipelines), données d'entreprises ou de PME (absentes) ; fin positive : phrase-cadre
Mon expérience compte un peu plus de cinq ans plutôt que les sept demandés. Je construis des pipelines reproductibles et versionnés dans Git, mais en R et en Python plutôt que dans Databricks, que je n'ai jamais utilisé. Je n'ai jamais travaillé avec des données d'entreprises. J'aime beaucoup décortiquer un nouveau problème de données. Je l'ai fait avec des sujets très différents, du vote aux visiteurs d'un musée et aux services d'une ville.

// 4. Offre technique, sans capacité IA demandée : phrases-cadres seulement (positionnement/ia.md, comp-dev-ia-pm, proj-medaillon-plateforme)
Dans mon propre travail, je me sers de Claude Code pour combler mes points plus faibles, surtout en développement logiciel. Je ne lui délègue pas ma réflexion. Je découpe moi-même le travail et je relis et teste tout ce qu'il produit. C'est ce qui m'a permis de livrer seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
