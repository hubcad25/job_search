// Lettre Analysis Group, Scientifique des données (maîtrise), début 2027 (n° 3082). En français (choix d'Hubert le 2026-10-28). Ton : lettres Alto, PSP et STM. Faits : profil/ (ids en commentaire). Forme : guides/redaction.md.
// Avant l'envoi : plus aucun #trou ; typst compile ne doit montrer aucun texte rouge.
#import "../../cv/modele.typ": *

#show: lettre.with(
  nom: "Hubert Cadieux",
  coordonnees: ("Montréal", "(438) 825-3958", "hubertcadieux@gmail.com"),
  liens: ("linkedin.com/in/hubert-cadieux-7172571a0",),
  date: [Montréal, le 28 octobre 2026],
  objet: [Candidature au poste de scientifique des données, diplôme de maîtrise (n°~3082)],
  appel: [Madame, Monsieur,],
)

// Structure : qui je suis ; IA générative ; modèles, outils et formation (+ écart domaines) ; IA dans ma façon de travailler (données sensibles).

// 1. exp-clessn (2021-2024, scientifique de données en 2023), exp-environics, exp-vdq-stage, form-maitrise-ulaval (2026) ; identite.yaml (objectif : emploi stable) ; offre.md (poste généraliste)
Je travaille en science des données depuis 2021, d'abord pendant près de quatre ans à la CLESSN de l'Université Laval, puis comme consultant pour l'Environics Institute et cet été en stage à la Ville de Québec. J'ai terminé cette année une maîtrise en science politique avec mémoire. Je bâtis des modèles statistiques et des outils qui utilisent des LLM, et je les livre à des gens qui ne sont pas analystes. Je cherche maintenant un poste permanent. Dans mes mandats, j'ai toujours fait à la fois l'analyse, les outils et la formation des gens qui s'en servent.

// 2. proj-atlas-opubliq (agent, rapports qui citent leurs sources, recherche hybride avec reclassement), exp-vdq-stage + comp-llm-annotation (jeu de référence annoté), pub-prompting-the-machine (rang 3), proj-silicon-sampling (fine-tuning bat les consignes)
Depuis deux ans, une bonne part de mon travail se fait avec des LLM. Chez Opubliq, l'entreprise que j'ai cofondée, j'ai construit l'Atlas, une plateforme où un agent répond aux questions sur des sondages publics et le recensement et rédige des rapports qui citent leurs sources. À la Ville de Québec, j'ai fait classer chaque question de sondage par un LLM et j'ai vérifié ses réponses sur un jeu de référence annoté. Je suis aussi coauteur d'un article qui présente une méthode d'extraction de données par LLM pour les sciences sociales. En ce moment, j'affine Llama~3.1 sur des sondages électoraux pour prédire ce que chaque répondant a répondu.

// 3. proj-datagotchi (a dirigé la modélisation, 10 000+ utilisateurs), exp-clessn (formation de plus de 10 étudiants), exp-ta-icpsr (cours R Shiny monté avec Yannick Dufresne, à distance) ; écart : litiges, finance, analytique des soins de santé (aucune entrée), HPC (absent du profil) ; exp-medaillon-ciusss (santé), exp-vdq-stage (municipal)
À la CLESSN, j'ai dirigé la modélisation prédictive de l'application Datagotchi, qui a eu plus de 10~000 utilisateurs pendant l'élection américaine de 2024. J'y ai aussi formé plus de 10 étudiants non techniques à nos pipelines de données. En 2025, j'ai monté avec mon directeur de recherche un cours sur les applications R~Shiny pour le programme d'été de l'ICPSR. Je n'ai encore jamais travaillé sur des dossiers de litige ou de finance, ni sur des données médicales. Chaque mandat m'a quand même obligé à apprendre un nouveau domaine, que ce soit les services municipaux ou la santé communautaire.

// 4. positionnement/ia.md (agents qui calculent sur les données sans les lire ; pertinent : dossiers médicaux) ; comp-dev-ia-pm, proj-medaillon-plateforme ; conf-eiom-2025-claude-code
Je programme mes outils avec Claude Code. Je découpe le travail moi-même et je relis et teste tout ce qu'il produit. L'agent écrit du code qui roule sur mon ordinateur. Le modèle voit le code et les résultats, jamais les données brutes d'un client. J'ai donné un atelier sur cette façon de travailler à l'Université Laval en 2025.

Je serais heureux d'en discuter avec vous en entrevue.

Veuillez agréer, Madame, Monsieur, mes salutations distinguées.
