# Positionnement — usage de l'IA

Faits : `profil/projets.yaml` (`proj-rapport-vibecoding`, `proj-mega-agregateur-qc2026`, `proj-llm-council`), `profil/publications.yaml` (`conf-eiom-2025-claude-code`, `pub-chapitre-livre-outils-ia`, `pub-prompting-the-machine`), `profil/competences.yaml` (`niveau_sans_ia` / `niveau_avec_ia`).
Statut : décisions prises avec Hubert le 2026-10-23.

## Position d'Hubert

- Le développement assisté par l'IA bien encadré va devenir la norme. Son profil est nettement plus fort depuis qu'il travaille ainsi.
- Il assume son usage de l'IA dès le départ, quitte à perdre une entrevue dans une organisation réticente. Le but est de trouver un employeur où il peut travailler pleinement dans un cadre d'IA bien pensé.
- Il se situe entre un scientifique de données qui livre avec l'IA et révise tout, et un PM technique.
- Apprentissage : **défenseur de l'autodidaxie** dans un domaine qui bouge trop vite pour les formations formelles. Il suit la veille et étudie les formations existantes (ex. : documentation de la formation NordAI sur le vibe coding, sans y avoir assisté) (`form-autodidacte-vibecoding`).
- Posture : **optimiste, mais critique**. Il croit au potentiel de l'IA et l'utilise à fond, en connaissant ses limites et ses risques.

## Décisions

| Sujet | Choix |
|---|---|
| Titre | « Scientifique de données » (le titre que cherchent les recruteurs). Accroche du CV : spécialité et produits livrés, **sans mention de l'IA** (voir ligne « Où va l'IA »). Le travail de PM est réel (découverte client et tests utilisateurs chez Opubliq, journal des décisions, liaison dev-chercheurs à la CLESSN), mais sans titre de PM ni équipe d'ingénieurs à diriger : on le montre dans les réalisations plutôt que dans le titre. |
| Où va l'IA | **La position sur l'IA (agents, méthode, rigueur) va dans la lettre et en entrevue, jamais dans l'accroche ni les puces du CV.** Au CV, Claude Code n'apparaît que dans la ligne de compétences « Livré en production avec Claude Code ». Un LLM utilisé dans le produit (classification, RAG) reste un fait technique admis dans les puces. Décision d'Hubert, 2026-10-24. |
| Efficience | Mettre de l'avant l'usage économe de l'IA : choisir le bon modèle pour chaque tâche, déléguer aux agents moins chers ce qui est mécanique. Preuve : le rapport vibecoding porte justement sur « mieux déléguer entre agents ». |
| Compétences au CV | Deux niveaux explicites. « Maîtrise : R (expert), statistique, sondages. » Puis : « Livré en production avec Claude Code : Python, TypeScript, AWS, Azure. » |
| Transparence | Dans la lettre, en une phrase, **selon l'offre** (décidé candidature par candidature, 2026-10-24) ; en entrevue, en détail. Jamais caché si la question vient. |
| Rapport vibecoding | Ne pas le montrer d'office ; citer les résultats saillants (voir plus bas). |

## Le message en une phrase

« Je ne délègue pas ma réflexion à l'IA : je spécifie, je découpe, je délègue l'exécution, puis je révise et je teste tout. Ça me permet de livrer seul ce qui demandait une petite équipe. »

## Résultats saillants à citer (rapport vibecoding)

- 956 échanges analysés sur 94 sessions de travail réelles.
- L'essentiel du temps va à l'exploration du code, à l'architecture et aux décisions produit ; le code pur est minoritaire.
- Formulation : « J'ai mesuré ma propre façon de travailler avec l'IA : je passe la majorité de mon temps à comprendre, décider et réviser, pas à taper du code. »

## Preuves de rigueur (sécurité et qualité)

Faits déjà dans le profil :
- Conformité Loi 25 : analyse juridique, EFVP et politique de gouvernance (`proj-geo-marketing-api`).
- Données hébergées au Canada (Azure Canada Est) ; authentification Entra ID.
- Isolation des données entre clients : un index par client (`proj-atlas-opubliq`).
- Journal des décisions d'architecture, environnements dev et prod séparés (`proj-medaillon-plateforme`).
- Tests et CI : pytest, ruff, GitHub Actions (`proj-pool-tracker-espn`).

Pratiques avec les agents (déclarées par Hubert) :
- Ne jamais envoyer un fichier de sondage ou de données clients directement au modèle. L'agent écrit et exécute du code (ex. : Python) qui calcule sur les données localement ; le modèle voit le code et les résultats agrégés, pas les données brutes.
- Exception : un exemple ponctuel, anonymisé (ex. : une réponse ouverte) pour mettre au point une consigne.
- Formulation : « Mes agents calculent sur les données, ils ne les lisent pas. »

- Secrets (clés API) : dans ses projets perso et Opubliq, il lui est arrivé de laisser Claude gérer des clés en lui demandant de ne pas les lire. Il sait que ce n'est pas une bonne pratique et ne le ferait pas chez un employeur, où il suivrait la gestion des secrets en place (variables d'environnement définies par lui, coffre de secrets). Ne pas mettre de l'avant ; si la question vient, répondre honnêtement avec cette nuance.

À confirmer avec Hubert : `TROU`
- Revue de chaque modification avant de l'intégrer.
- Ce qu'il ne délègue jamais (méthodologie statistique, pondération, conclusions ?).

## Tendances (octobre 2026)

- Les entretiens techniques passent de tests d'algorithmes à de la résolution de problèmes assistée par l'IA, plus proche du vrai travail.
- Les offres de data science demandent de plus en plus de posséder l'infrastructure et la mise en production, pas seulement les modèles.
- De nouveaux titres émergent : Forward Deployed Engineer, GenAI Engineer, AI Engineer. Le profil d'Hubert (client + produit + données) ressemble au Forward Deployed Engineer : une piste à évaluer comme cible.

Source : https://salesmotion.io/blog/data-scientist-job-market (à recouper).

## À décider plus tard

- Viser aussi les titres « AI Engineer » ou « Forward Deployed Engineer » ? (Impact sur `spec.md` : facette `techno`.)
