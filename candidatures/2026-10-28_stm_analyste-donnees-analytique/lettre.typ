// Lettre STM, Analyste - Données et analytique (n° 34585). Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : lettres Alto et CSSMB.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 28 octobre 2026],
  objet: [Candidature au poste d'analyste, données et analytique (n°~34585)],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis ; structures de données et pipelines (VdQ, CLESSN) ; pourquoi ce poste + écart Power BI/DAX/Power Query ; IA et SQL.
// Contrat temporaire : pas de phrase sur un emploi « à long terme ».

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. La plupart de mes mandats consistent à structurer les données d'une organisation et à en automatiser le traitement. Les gestionnaires s'en servent ensuite dans des tableaux de bord et des analyses que je prépare.

// 2. exp-vdq-stage (mandat peu défini, consultation d'autres divisions, solution acceptée par les TI ; base unique ; pipeline vers Power BI conçu, pas livré ; panel : schémas définis avec les TI, pas de configuration Dynamics 365), proj-vdq-outil-sondages
La Ville de Québec m'a confié un mandat encore peu défini sur ses données de sondage. J'ai consulté d'autres divisions avant de proposer une solution aux TI, qui l'ont acceptée. J'ai ensuite bâti une base unique des sondages de la Ville et l'outil qui permet d'y chercher et d'en visualiser les résultats. J'ai aussi conçu le pipeline qui reliera cette base aux tableaux de bord Power BI des divisions. Avec les TI, j'ai défini la structure des données du panel de répondants avant son passage à Dynamics~365.

// 3. exp-clessn (pipelines ETL conçus avec un développeur, contrôles de qualité, plus de 30 sondages, formation de plus de 10 étudiants non techniques), proj-polimetre-outil (encore utilisé)
À la CLESSN, j'ai conçu avec un développeur les pipelines qui rassemblaient plus de 30 sondages dans une même base et en vérifiaient la qualité. J'ai aussi formé plus de 10 étudiants non techniques à s'en servir. J'y ai créé l'outil que l'équipe du Polimètre utilise encore pour transformer ses fichiers Excel en données prêtes à importer dans le site.

// 4. Pourquoi ce poste (offre.md : indicateurs, structures de données, soutien aux utilisateurs) ; écart : comp-power-bi (notions, aucun tableau de bord construit), comp-excel (intermédiaire, pas Power Query ni Power Pivot), DAX (non), domaine gestion de projets (non) ; compensation : exp-repensons-levis-2025 (tableau de bord Quarto mis à jour chaque matin)
Ce poste m'intéresse parce qu'il consiste à structurer les données des projets de la STM et à en tirer des indicateurs de performance et des outils de reddition de comptes. À la Ville de Québec, je faisais ce travail de structure avec des données de sondage. Mon niveau en Power BI et en Excel avancé est plus bas que ce que vous demandez. Je n'ai que des notions de Power BI et je n'ai travaillé ni avec DAX, ni avec Power Query, ni avec Power Pivot. Par contre, je bâtis déjà en R et en Quarto des tableaux de bord mis à jour automatiquement, comme celui de la campagne Repensons Lévis, qui se recalculait chaque matin.

// 5. positionnement/ia.md (une phrase, selon l'offre : Python en atout) ; comp-sql (intermédiaire sans IA, avancé avec), comp-dev-ia-pm, proj-medaillon-plateforme
J'écris aussi mes requêtes SQL et mes scripts Python avec Claude Code. Je découpe le travail moi-même et je relis et teste tout ce qu'il produit. C'est de cette façon que j'ai livré seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
