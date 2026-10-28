// Lettre exo, Conseiller(ère) Enquêtes et sondage. Depuis la lettre Alto (2026-10-27). Faits : profil/ (ids en commentaire). Forme : guides/redaction.md.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 28 octobre 2026],
  objet: [Candidature au poste de conseiller, enquêtes et sondage],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis et pourquoi exo ; étude de bout en bout + fournisseurs ; organisation publique (VdQ, Musée) ; écarts (LimeSurvey, quali, clients-mystères) ; IA courte. Ton : celui de la lettre Alto (phrases liées, sans incise détachée en fin de phrase). Contrat occasionnel : ne pas parler de long terme.

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; intérêt pour le transport collectif (dit par Hubert le 2026-10-27) ; offre.md (enquêtes de mobilité, satisfaction clientèle)
Je travaille en recherche par sondage depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je conçois des questionnaires, je pondère et j'analyse les données et je présente les résultats à des gestionnaires qui ne sont pas analystes. Ce poste m'attire parce que je m'intéresse au transport collectif. Mesurer comment les usagers se déplacent et ce qu'ils pensent du service qu'ils reçoivent, c'est exactement le genre d'enquête que j'ai envie de mener.

// 2. exp-medaillon-ciusss (5 questionnaires, collecte postale avec code QR, 6 000 + 1 100 commentaires, assistance pondération et rapport, présentation au client), exp-clessn (5 sondages avec Léger, parfois via Synopsis)
Ce que je connais le mieux, c'est mener une étude de sondage au complet, de l'écriture du questionnaire jusqu'à la présentation des résultats. Pour le Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal, j'ai conçu les cinq questionnaires d'une consultation et organisé une collecte par la poste avec un code QR qui nous a permis de recueillir plus de 7~000 commentaires. Je n'ai pas encore travaillé avec LimeSurvey, mais j'ai programmé des sondages dans Qualtrics et SurveyJS. J'ai ensuite aidé à la pondération et au rapport avant de présenter les résultats au client. À la CLESSN, j'ai suivi avec Léger la collecte de cinq sondages, et c'est là que j'ai appris à travailler avec une firme de collecte.

// 3. exp-mitacs-musee (segmentation à partir des enquêtes, appréciation des expositions et services, binôme, 2 rapports, présentation aux gestionnaires), exp-vdq-stage, proj-vdq-outil-sondages ; écarts : LimeSurvey (Qualtrics et SurveyJS seulement), quali (participé, jamais animé, dit par Hubert le 2026-10-27), clients-mystères (non)
Au Musée de la civilisation, j'ai segmenté les visiteurs à partir des enquêtes de satisfaction du Musée et croisé ces profils avec leur appréciation des expositions et des services. J'ai ensuite présenté aux gestionnaires les deux rapports que nous en avons tirés avec un collègue. À la Ville de Québec, j'ai regroupé les sondages de la Ville dans une seule base et bâti l'outil qui permet d'y chercher les questions et d'en visualiser les résultats. Mon expérience est surtout quantitative. Je n'ai jamais animé de groupe de discussion ni mené d'étude de clients-mystères, mais j'ai participé à des recherches qui en utilisaient et je suis prêt à apprendre ce volet avec votre équipe.

// 4. positionnement/ia.md ; comp-dev-ia-pm, proj-medaillon-plateforme
Pour programmer mes plateformes de sondage et mes tableaux de bord, j'utilise des agents IA. Je découpe le travail moi-même et je relis et teste tout ce qu'ils produisent. J'ai livré de cette façon la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
