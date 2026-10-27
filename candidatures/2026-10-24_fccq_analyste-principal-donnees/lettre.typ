// Lettre FCCQ, Analyste principal·e de données. Faits : profil/ (ids en commentaire). Forme : guides/redaction.md.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 24 octobre 2026],
  objet: [Candidature au poste d'analyste principal·e de données],
  appel: [Madame, Monsieur,],
)

// Structure : guides/redaction.md (exemple : lettre Teamworks). Ton : phrases simples, comme à l'oral.

// 1. exp-clessn (2021-2024, titres_occupes), exp-environics, exp-vdq-stage ; identite.yaml (objectif : emploi stable)
Je travaille en analyse de données depuis 2021~: près de quatre ans à la CLESSN de l'Université Laval, où je suis devenu scientifique de données, puis comme consultant et, cet été, à la Ville de Québec. J'ai surtout travaillé avec des données de sondage~: les nettoyer, les valider, les pondérer, puis les présenter à des gens qui ne sont pas analystes. Je cherche maintenant un poste stable, à temps plein, pour plusieurs années.

// 2. exp-clessn (ETL, formation), exp-repensons-levis-2025 (échantillons biaisés), exp-vdq-stage (Dynamics 365 sans configuration ; pipeline vers Power BI)
Rendre des données fiables, c'est la partie du travail que je connais le mieux. À la CLESSN, j'ai monté le traitement de plus de 30 sondages et formé plus de 10 étudiants sans bagage technique à s'en servir. En 2025, pour une campagne municipale à Lévis, j'ai produit un tableau de bord mis à jour chaque matin avec les données des bénévoles, pondérées malgré des échantillons très biaisés. À la Ville de Québec, j'ai défini avec les TI les besoins et la structure des données du panel de répondants avant son passage dans Dynamics~365, mais je ne l'ai pas configuré moi-même.

// 3. Pourquoi ce poste (offre.md : validation, qualité, traçabilité) ; écart : comp-power-bi (notions), exp-vdq-stage (attention)
Ce poste m'intéresse parce qu'une bonne partie du travail consiste à valider et à structurer les données avant de les analyser. Je n'ai pas encore construit de tableau de bord Power BI. À la Ville, j'ai conçu le pipeline qui doit alimenter les tableaux de bord Power BI des divisions, et je fais des tableaux de bord depuis plusieurs années avec R~Shiny et Quarto.

// 4. positionnement/ia.md (une phrase, rattachée à l'atout « protection des données » de l'offre) ; comp-loi25, proj-geo-marketing-api
J'utilise des agents IA pour programmer, mais je découpe le travail, puis je relis et je teste tout. Avec des données sensibles, l'agent écrit le code qui calcule sur les données~; il n'en reçoit pas les fichiers. J'ai aussi documenté la conformité à la Loi~25 (EFVP) d'une API de données sociodémographiques.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
