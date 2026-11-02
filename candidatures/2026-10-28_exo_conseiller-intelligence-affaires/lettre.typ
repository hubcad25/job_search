// Lettre exo, Conseiller(ère) - Intelligence d'affaires. Faits : profil/ (ids en commentaire). Forme : guides/redaction.md. Ton : lettres Alto, CSSMB et STM.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 2 novembre 2026],
  objet: [Candidature au poste de conseiller, intelligence d'affaires],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis ; prévision (Datagotchi, Lévis, agrégateur) ; IA générative à la VdQ + pourquoi ce poste + écarts (Power BI, Databricks, transport) ; méthode IA.

// 1. exp-clessn (2021-2024), exp-environics, exp-vdq-stage ; candidature 2026-10-27_exo_conseiller-enquetes-sondages (envoyée le 2026-10-28)
Je travaille en analyse de données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. Je bâtis surtout des modèles prédictifs et les pipelines qui alimentent les tableaux de bord des gestionnaires.

// 2. proj-datagotchi (responsable du modèle USA 2024, ARIMA confirmé 2026-11-02, mises à jour pendant la campagne ; pas « créateur »), proj-mega-agregateur-qc2026 (perso ; attention : pas de public ni d'annonce)
Le travail de prévision que décrit votre offre ressemble à celui que j'ai fait en campagne électorale, avec des modèles qu'il fallait garder à jour pendant qu'on s'en servait. Pour l'élection américaine de 2024, j'étais responsable du modèle prédictif de l'application Datagotchi à la CLESSN. J'y ai intégré un point de départ du vote que j'estimais par séries temporelles (ARIMA) dans chaque code postal, et j'ai mis le modèle à jour tout au long de la campagne. Le soir de l'élection québécoise de 2026, un modèle que j'avais construit pour mon propre usage se mettait à jour avec les résultats et a écarté un gouvernement péquiste majoritaire environ 40~minutes avant Radio-Canada.

// 3. exp-vdq-stage (classement par Azure OpenAI, Azure AI Search, pipeline vers Power BI conçu et non livré, solution acceptée par les TI) ; intérêt pour le transport collectif (dit par Hubert le 2026-10-27) ; domaines variés : proj-datagotchi, exp-mitacs-musee, exp-vdq-stage ; goût d'apprendre un nouveau domaine (dit par Hubert le 2026-11-02) ; outils de tableaux de bord : comp-r-shiny, comp-quarto, comp-streamlit, comp-typescript-web (React, avec Claude Code) ; écarts : comp-power-bi (notions, aucun tableau de bord construit), Databricks (non), données de transport (non)
Je bâtis des tableaux de bord depuis plusieurs années, mais en R~Shiny, en Quarto, en Streamlit et en React plutôt qu'en Power BI, que je connais peu. Je n'ai jamais utilisé Databricks ni travaillé avec des données de transport. Le transport collectif m'intéresse pourtant, et j'aime beaucoup décortiquer un nouveau problème de données. Je l'ai fait avec des sujets très différents, du vote aux visiteurs d'un musée et aux services d'une ville.

// 4. offre.md (expert-conseil en IA générative) ; exp-vdq-stage (mandat peu défini, consultation d'autres divisions, solution Azure AI Search + classement Azure OpenAI acceptée par les TI) ; positionnement/ia.md ; comp-dev-ia-pm (combler les points faibles, dit par Hubert le 2026-11-02 ; pas d'exemple pointu comme le SQL), proj-medaillon-plateforme
Pour l'IA générative, la Ville de Québec m'avait confié un mandat encore peu défini sur ses données de sondage. J'ai consulté d'autres divisions avant de proposer une solution fondée sur Azure AI Search et un modèle de langage, que l'équipe des TI a acceptée. Dans mon propre travail, je me sers de Claude Code pour combler mes points plus faibles, surtout en développement logiciel. Je ne lui délègue pas ma réflexion. Je découpe moi-même le travail et je relis et teste tout ce qu'il produit. C'est ce qui m'a permis de livrer seul la plateforme de sondages que Médaillon Groupe Conseils utilise encore.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
