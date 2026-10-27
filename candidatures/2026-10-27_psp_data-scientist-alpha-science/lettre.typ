// Lettre PSP, Scientifique de données, Alpha Science (R4886-1). En français (choix d'Hubert le 2026-10-27). Ton et structure repris de la lettre Alto (validée par Hubert). Faits : profil/ (ids en commentaire). Forme : guides/redaction.md.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 27 octobre 2026],
  objet: [Candidature au poste de scientifique de données, science des données et intelligence artificielle (R4886-1)],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis et pourquoi ce poste ; données à collecter et à nettoyer ; modèles utiles (+ écart finance, Databricks/Snowflake) ; IA. Ton : phrases de longueurs variées, liées comme à l'oral, sans incise détachée en fin de phrase.

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; offre.md (Alpha Science : données alternatives, outils LLM, équipes de transaction)
Je travaille en science des données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je trouve et je nettoie des données, je bâtis des modèles et je présente les résultats à des gens qui ne sont pas analystes. L'équipe Alpha Science m'attire parce qu'elle fait ce travail pour des équipes de placement, avec des données comme la géolocalisation ou l'achalandage et des outils qui utilisent des LLM.

// 2. exp-medaillon-ciusss (scraping du 211qc.ca, ~2 461 organismes, tri par LLM), exp-vdq-stage + comp-llm-annotation (classement par LLM, jeu de référence annoté), proj-geo-marketing-api (~57 000 aires de diffusion ; comp-python, comp-sql), proj-atlas-opubliq (agent qui cite ses sources)
La plupart de mes projets commencent avec des données qu'il faut d'abord aller chercher et nettoyer. Pour une consultation du CIUSSS de l'Est-de-l'Île-de-Montréal, j'ai extrait près de 2~500 fiches d'organismes du 211 et je les ai triées par LLM pour dresser la liste des organismes communautaires du territoire. À la Ville de Québec, j'ai fait classer chaque question de sondage par un LLM et j'ai vérifié ses réponses sur un jeu de référence annoté. Chez Opubliq, j'ai monté en Python et en SQL une API qui fournit des profils sociodémographiques pour environ 57~000 aires de diffusion du recensement. J'y ai aussi construit l'Atlas, une plateforme où un agent répond aux questions sur des sondages publics et le recensement en citant ses sources.

// 3. proj-datagotchi (a dirigé la modélisation, 10 000+ utilisateurs), exp-repensons-levis-2025 (pipeline de pondération quotidien, tableau de bord, recommandations) ; écart : finance et placement (aucune entrée), Databricks / Snowflake (aucune entrée) ; exp-vdq-stage (municipal), exp-medaillon-ciusss (santé)
J'aime que mes modèles servent tout de suite à quelqu'un. À la CLESSN, j'ai dirigé la modélisation prédictive de l'application Datagotchi, qui a eu plus de 10~000 utilisateurs pendant l'élection américaine de 2024. Pendant l'élection municipale de 2025 à Lévis, j'ai mis en place un pipeline qui pondérait chaque matin les données de pointage de la campagne et mettait à jour un tableau de bord. Je m'en servais pour faire des recommandations à l'équipe. Je n'ai aucune expérience en finance ni en placement et je n'ai jamais utilisé Databricks ou Snowflake. Chaque mandat m'a quand même obligé à apprendre un nouveau domaine, que ce soit les services municipaux ou la santé. J'apprendrais le placement de la même façon en travaillant avec vos équipes de transaction.

// 4. positionnement/ia.md (agents qui calculent sur les données sans les lire) ; comp-dev-ia-pm, proj-medaillon-plateforme
Je programme mes outils avec des agents IA. Je découpe le travail moi-même et je relis et teste tout ce qu'ils produisent. Mes agents écrivent du code qui roule sur mon ordinateur. Le modèle voit le code et les résultats, jamais les données brutes d'un client. J'ai livré seul de cette façon la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
