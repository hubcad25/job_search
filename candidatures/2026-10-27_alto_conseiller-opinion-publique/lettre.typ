// Lettre Alto, Conseiller·ère, opinion publique et analytique. Faits : profil/ (ids en commentaire). Forme : guides/redaction.md.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 27 octobre 2026],
  objet: [Candidature au poste de conseiller en opinion publique et analytique (réf. 606568917)],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis et pourquoi Alto ; recherche (+ écart qualitatif) ; données et tableaux de bord (+ écart Power BI) ; IA. Ton : phrases de longueurs variées, liées comme à l'oral, sans incise détachée en fin de phrase.

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; identite.yaml (objectif : emploi stable) ; intérêt pour le transport collectif (dit par Hubert le 2026-10-27) ; offre.md (TGV Québec–Toronto)
Je travaille en recherche sur l'opinion publique depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je conçois des questionnaires, je pondère et je segmente les données et je présente les résultats à des gens qui ne sont pas analystes. Je cherche maintenant un poste à temps plein où m'investir à long terme, et celui-ci m'attire parce que je m'intéresse aux grands projets de transport collectif. Comprendre ce que la population pense d'un train à grande vitesse entre Québec et Toronto, c'est exactement le genre de travail que j'ai envie de faire.

// 2. exp-medaillon-ciusss (5 questionnaires, collecte postale avec code QR, 6 000 + 1 100 commentaires, assistance pondération et rapport, présentation au client), exp-clessn (5 sondages avec Léger), exp-mitacs-musee (binôme, 2 rapports, présentation aux gestionnaires) ; écart qualitatif : participé à des recherches avec groupes de discussion, jamais animé ni rédigé de guide (dit par Hubert le 2026-10-27)
Ce que je connais le mieux, c'est mener une étude de sondage au complet, de l'écriture du questionnaire jusqu'à la présentation des résultats. Pour le Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal, j'ai conçu les cinq questionnaires d'une consultation et organisé une collecte par la poste avec un code QR qui nous a permis de recueillir plus de 7~000 commentaires. J'ai ensuite aidé à la pondération et au rapport avant de présenter les résultats au client. À la CLESSN, j'ai suivi avec Léger la collecte de cinq sondages. Au Musée de la civilisation, j'ai segmenté les visiteurs à partir des enquêtes du Musée et j'ai présenté aux gestionnaires les deux rapports que nous en avons tirés avec un collègue. Mon expérience est d'abord quantitative. Je n'ai jamais animé de groupe de discussion, mais j'ai participé à des recherches qui en utilisaient et je suis prêt à apprendre ce volet avec votre équipe.

// 3. exp-vdq-stage, proj-vdq-outil-sondages (base unique ; pipeline Power BI conçu, pas livré), exp-repensons-levis-2025 (pondération quotidienne du pointage, tableau de bord Quarto chaque matin, recommandations) ; comp-r-shiny, comp-quarto, comp-power-bi (notions)
Je construis aussi les bases de données et les tableaux de bord qui accompagnent les sondages. À la Ville de Québec, j'ai bâti une base unique des données de sondage de la Ville où chaque question est classée selon les produits et services municipaux, et j'ai conçu le pipeline qui doit la relier aux tableaux de bord Power BI des divisions. Pendant l'élection municipale de 2025, j'ai bâti pour Repensons Lévis un pipeline qui pondérait chaque matin les données de pointage des bénévoles et mettait à jour un tableau de bord Quarto. Je m'en servais pour faire des recommandations à l'équipe de campagne. Je travaille surtout avec R~Shiny et Quarto et je n'ai que des notions de Power BI.

// 4. positionnement/ia.md ; comp-dev-ia-pm, proj-medaillon-plateforme, comp-typescript-web (React : proj-nhl-matchups)
Pour programmer ces outils, j'utilise des agents IA. Je découpe le travail moi-même et je relis et teste tout ce qu'ils produisent. J'ai livré seul de cette façon la plateforme de sondages que Médaillon Groupe Conseils utilise encore, et je bâtis aussi des tableaux de bord web en React quand Shiny ou Quarto ne suffisent pas.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
