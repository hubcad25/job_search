// Lettre La Presse, Analyste principal ou principale de données. Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : lettre Alto.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 27 octobre 2026],
  objet: [Candidature au poste d'analyste principal de données],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis et pourquoi La Presse ; produits livrés à des équipes ; clients et leadership (+ écarts gestion d'équipe et données d'audience) ; IA. Ton : phrases de longueurs variées, liées comme à l'oral, sans incise détachée en fin de phrase.

// 1. exp-clessn (2021-2024, scientifique de données en 2023), exp-environics, exp-vdq-stage ; identite.yaml (objectif : emploi stable) ; exp-clessn (élection QC 2022, La Presse canadienne) ; intérêt pour la saillance médiatique (dit par Hubert le 2026-10-27)
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je bâtis des modèles, des pipelines et des tableaux de bord en R, Python et SQL et je les livre à des gens qui ne sont pas analystes. Je cherche maintenant un poste à temps plein où m'investir à long terme, et celui-ci m'attire parce que j'ai envie de travailler avec les données d'un média. L'intérêt m'est venu à la CLESSN, où un collègue et ami travaillait sur la saillance médiatique. J'y ai aussi analysé l'opinion pour la couverture de La Presse canadienne pendant l'élection québécoise de 2022.

// 2. exp-vdq-stage (solution cernée par sa recherche et en consultant d'autres divisions, acceptée par les TI ; index Azure AI Search ; classement LLM), exp-repensons-levis-2025 (pondération quotidienne automatisée, tableau de bord Quarto, recommandations), proj-datagotchi (responsable du modèle US 2024, Léger, plus de 10 000 utilisateurs)
Cet été, la Ville de Québec m'a confié un mandat encore peu défini sur ses données de sondage. J'ai consulté d'autres divisions avant de proposer aux TI une solution qu'ils ont acceptée et j'ai construit l'outil qui permet de chercher dans les questions de sondage de la Ville et d'en visualiser les résultats. J'y ai aussi classé les questions par LLM selon les services municipaux. Pendant l'élection municipale de 2025, le pipeline que j'ai conçu pour Repensons Lévis pondérait chaque matin les données de pointage des bénévoles et mettait à jour le tableau de bord qui guidait mes recommandations à l'équipe de campagne. Pour l'élection américaine de 2024, j'étais responsable du modèle de Datagotchi, une application de la CLESSN qui prédit le vote à partir des habitudes de vie. Léger était notre partenaire pour cette version et plus de 10~000 personnes l'ont utilisée.

// 3. exp-medaillon-ciusss (mandat mené, présentation au client), exp-clessn (équipe de coordination, fonction développement et partenaires, lien dev–étudiants, formation de plus de 10 étudiants) ; écart : aucune gestion formelle d'équipe ; exp-mitacs-musee (segmentation, 2 rapports marketing en binôme) ; comp-google-analytics (notions)
Chez Opubliq, l'entreprise que j'ai cofondée, j'ai mené pour le Comité des usagers du CIUSSS de l'Est-de-l'Île-de-Montréal une consultation qui a recueilli plus de 7~000 commentaires et j'en ai présenté les résultats au client. À la CLESSN, je faisais partie de l'équipe de coordination de la chaire et j'assurais le lien entre les développeurs et les étudiants en science politique. J'ai formé plus de 10 de ces étudiants à nos pipelines de données. Je n'ai jamais géré une équipe de façon formelle et je suis prêt à l'apprendre avec vous. Côté marketing, j'ai segmenté les visiteurs du Musée de la civilisation pour deux rapports d'orientation, mais je n'ai pas encore travaillé avec des données d'audience numérique.

// 4. positionnement/ia.md ; comp-dev-ia-pm, proj-medaillon-plateforme (role: responsable) ; formulation reprise de la lettre Alto
Je programme mes outils avec des agents IA. Je découpe le travail moi-même et je relis et teste tout ce qu'ils produisent. J'ai livré seul de cette façon la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
