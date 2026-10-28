# CRIM — Centre de recherche informatique de Montréal (intégré à Luqia en 2026)

Vérifié le 2026-10-28 · Facette : techno · Concurrent d'Opubliq : non

> **Changement majeur** : le CRIM n'existe plus comme organisation autonome. Le 2026-02-20, l'INO et le CRIM ont annoncé leur regroupement sous le nom **Luqia** (Technologies Luqia), qui offre ses services depuis le 2026-04-01. La candidature doit viser Luqia (bureaux de Montréal), pas « le CRIM ».
>
> Limites de la vérification : crim.ca, luqia.ca et ino.ca n'étaient pas joignables depuis la session (WebFetch bloqué) ; tout vient des extraits de recherche web. Les offres viennent d'agrégateurs et peuvent être périmées. À revérifier sur luqia.ca avant d'écrire.

## En bref
- Luqia : laboratoire d'innovation industrielle en IA, photonique avancée et quantique, né du regroupement de l'INO (Québec) et du CRIM (Montréal) ; services aux entreprises depuis le 2026-04-01 (https://www.ino.ca/fr/nouvelles/creation-luqia/ ; https://www.crim.ca/en/creation-de-luqia-le-plus-important-laboratoire-dinnovation-industrielle-en-photonique-et-intelligence-artificielle/).
- Priorités : technologies à double usage, défense, aérospatiale, cybersécurité, surveillance (dont l'Arctique) (https://spaceq.ca/ino-and-crim-merge-to-form-luqia-technologies-with-52m-federal-backing/).
- Taille : plus de 250 experts à Québec et à Montréal (https://www.ino.ca/en/news/creation-luqia-en/). Bureau de Montréal rue Ogilvy, d'après un extrait de luqia.ca (https://www.luqia.ca/en/ ; adresse exacte à vérifier). Le CRIM était un OBNL de recherche appliquée en TI et IA, actif depuis 1985 (https://www.crim.ca/en/40ans/).
- Financement : plus de 141 M$ du gouvernement du Québec (https://journalmetro.com/actualites/politique/3211527/141-m-pour-luqia-un-nouveau-laboratoire-dia-et-de-photonique/ ; https://www.newswire.ca/fr/news-releases/appui-a-technologies-luqia-quebec-soutient-un-nouveau-laboratoire-d-innovation-industrielle-en-intelligence-artificielle-et-en-photonique-852754983.html) et 52 M$ de DEC (https://spaceq.ca/ino-and-crim-merge-to-form-luqia-technologies-with-52m-federal-backing/). Les sources ne disent pas si ces montants s'additionnent.
- Clients ou mandats types : PME et grandes entreprises (programme « CRIM — Accompagnement », https://hellodarwin.com/fr/aide-aux-entreprises/programmes/crim-accompagnement) ; lobbying fédéral via une firme-conseil depuis 2021, 4 enregistrements (`data/organisations.csv`).

## Actualités récentes (12 derniers mois)
- 2026-02-20 — Annonce de la création de Luqia par l'INO et le CRIM (https://www.ino.ca/fr/nouvelles/creation-luqia/ ; https://reai.ca/2026/02/25/ino-et-le-crim-lancent-luqia-un-laboratoire-dinnovation-industrielle-en-ia-et-photonique/).
- 2026-03-26 — Premier CoefLab IA du CRIM, à Parc-Extension, dans le cadre de ses 40 ans (https://www.crim.ca/en/le-crim-lance-le-tout-premier-coeflab-ia/ ; https://lesconnecteurs.ca/coeflab-ia-du-crim-une-journee-pour-construire-le-futur-pas-seulement-le-commenter/).
- 2026-03-26 — La Presse présente Luqia comme un guide pour « traverser la vallée de la mort » de l'innovation (https://www.lapresse.ca/affaires/portfolio/2026-03-26/innovation/luqia-un-guide-pour-traverser-la-vallee-de-la-mort.php).
- 2026-04 — Déjeuner IA sur « L'IA dans la défense » au calendrier du CRIM (https://www.crim.ca/en/actualites-et-evenements/ ; date exacte non vérifiée).
- 2026-06-04 — Programme « DÉCLIC AI » pour aider les PME à passer de l'idée à l'action (https://www.crim.ca/en/news/).
- 2026-06-15 — Françoys Labonté nommé président et chef de la direction par intérim de Luqia ; départ d'Alain Chandonnet, ancien président (https://www.crim.ca/en/wp-json/wp/v2/posts/29705 ; date tirée de la liste https://www.crim.ca/en/news/).

## Pourquoi les contacter
- Luqia affiche (agrégateurs) un poste de scientifique des données en **IA de confiance** qui demande la connaissance de la Loi 25. Hubert a mis en place la conformité Loi 25 (EFVP, hébergement au Québec) pour une API (`comp-loi25`, preuve `proj-geo-marketing-api`) et a déployé un classement de texte par LLM avec Azure OpenAI à la Ville de Québec (`exp-vdq-stage`, `proj-vdq-outil-sondages`).
- Les stages et postes en TALN et LLM (post-training, données synthétiques, approches agentiques) recoupent ses travaux : méthode d'extraction de données par LLM publiée (`pub-prompting-the-machine`, 3e auteur), évaluation de GPT en classification politique (`pub-gpt-party`, 5e auteur), fine-tuning de Llama 3.1 8B pour produire des répondants synthétiques (`proj-silicon-sampling`, `comp-fine-tuning`, poids moyen, working paper en cours).
- Recherche sémantique et agents : index Azure AI Search et agent analytique qui rédige des rapports sourcés (`proj-atlas-opubliq`, `comp-rag-recherche-semantique`, `comp-agents-llm`).
- Transfert vers les entreprises : le CRIM accompagne des PME ; Hubert a livré une plateforme encore utilisée par son client (`proj-medaillon-plateforme`, poids fort) et fait du développement des affaires (`exp-opubliq`).

## Angle recommandé
- Poste visé : scientifique des données (IA de confiance ou TALN appliqué), niveau intermédiaire ; sinon professionnel de recherche en IA appliquée.
- Accroche : `pub-prompting-the-machine` + `exp-vdq-stage` (classement par LLM en contexte réel, Azure OpenAI, avec jeu de référence annoté).
- Risques et réponses :
  - Orientation défense, aérospatiale, photonique : loin des sciences sociales. Viser explicitement l'équipe IA de Montréal (ex-CRIM, TALN et IA de confiance) et ne pas prétendre à une expertise défense.
  - Le poste IA de confiance demande 4 ans comme scientifique des données ayant mis des prototypes en production : Hubert a 4 ans à la CLESSN (`exp-clessn`, 2021-2024, titre de scientifique de données à partir de 2023) et une plateforme en production (`proj-medaillon-plateforme`). Dire franchement que son expérience vient de la recherche appliquée et des mandats clients.
  - ISO 42001 et AI Act : rien dans `profil/`. Ne pas l'affirmer.
  - Python : intermédiaire sans IA, avancé avec Claude Code (`comp-python`) ; le dire ainsi.
  - Organisation en pleine intégration (direction par intérim) : embauches possiblement gelées ou réorganisées. Une lettre courte et ciblée vaut mieux qu'un envoi générique.

## À qui écrire
| Nom | Titre | Pourquoi lui/elle | Courriel ou LinkedIn | Source |
|---|---|---|---|---|
| Responsable de l'équipe IA / TALN à Montréal | introuvable | Gestionnaire qui recrute réellement ; à identifier sur LinkedIn (« Luqia » + « TALN » ou « IA de confiance ») | introuvable | — |
| Françoys Labonté | Président et chef de la direction par intérim, Luqia (ex-PDG du CRIM) | Dirige l'ensemble ; à éviter en premier contact, sauf réseau commun | LinkedIn : à chercher (« Françoys Labonté Luqia ») ; courriel introuvable | https://www.crim.ca/en/wp-json/wp/v2/posts/29705 |
| Ressources humaines Luqia | — | Dernier recours ; passer par la page carrières | Page carrières de luqia.ca (URL exacte à vérifier) ; courriel introuvable | https://www.luqia.ca/en/ |

- Ordre recommandé : gestionnaire IA/TALN de Montréal (à trouver), puis candidature à une offre précise sur luqia.ca, puis RH.

## Offres et carrières
- Page carrières : sur luqia.ca, section Montréal (non consultée, site inaccessible depuis la session). L'ancienne page crim.ca indiquée dans `data/candidatures.csv` est probablement remplacée.
- Offres repérées sur des agrégateurs (dates de publication non visibles, à confirmer sur luqia.ca) :
  - Scientifique des données, IA de confiance (4 ans d'exp., AI Act, Loi 25, ISO 42001) — https://www.simplyhired.ca/job/6ndtogbYuHDZg9eSfybc0mn3k8yIC--N1gNb2P70b0ZtDXtqrQMnpA
  - Scientifique senior en IA appliquée et IA générative (TALN), Montréal — repéré sur Glassdoor (URL précise non obtenue)
  - Stage automne 2026, TALN et LLM (maîtrise ou doctorat, 26-29 $/h) — https://www.simplyhired.ca/job/ZqowBJWJrdkuFYUVoXE5K7wOtjXPd21fZTx_d2X0v_UcdCWQMDP_Dw
  - Stage automne 2026, IA de confiance (Transformers sur données structurées et séries temporelles) — https://www.simplyhired.ca/job/UoIrhzO9O-hO3WaAW3V720c1VDNIPHTYHaCm_nHzBGkhyqAQN0f9bw ; https://www.workopolis.com/jobsearch/viewjob/nwTZKSaAShTMbs2M1azCx4twJ34USrPox0TNhN_h-az12CR8RzrLf88UWaXz-J65
  - Stagiaire science des données, hiver 2027 — repéré sur Indeed (https://emplois.ca.indeed.com/q-stage-data-science-l-montr%C3%A9al,-qc-emplois.html)
  - Chef·fe de pratique, Innovation en développement logiciel (6-10 ans, bac en génie) — https://www.genie-inc.com/emploi/241412/chef-fe-de-pratique-innovation-en-developpement-logiciel-luqia-montreal-qc (hors profil)
- L'offre « Conseiller(ère) affaires, stratégie et science des données » citée dans `data/organisations_web.csv` date de 2022 : périmée.

## Sources
- https://www.ino.ca/fr/nouvelles/creation-luqia/
- https://www.ino.ca/en/news/creation-luqia-en/
- https://www.crim.ca/en/creation-de-luqia-le-plus-important-laboratoire-dinnovation-industrielle-en-photonique-et-intelligence-artificielle/
- https://reai.ca/2026/02/25/ino-et-le-crim-lancent-luqia-un-laboratoire-dinnovation-industrielle-en-ia-et-photonique/
- https://spaceq.ca/ino-and-crim-merge-to-form-luqia-technologies-with-52m-federal-backing/
- https://journalmetro.com/actualites/politique/3211527/141-m-pour-luqia-un-nouveau-laboratoire-dia-et-de-photonique/
- https://www.newswire.ca/fr/news-releases/appui-a-technologies-luqia-quebec-soutient-un-nouveau-laboratoire-d-innovation-industrielle-en-intelligence-artificielle-et-en-photonique-852754983.html
- https://www.lapresse.ca/affaires/portfolio/2026-03-26/innovation/luqia-un-guide-pour-traverser-la-vallee-de-la-mort.php
- https://www.crim.ca/en/le-crim-lance-le-tout-premier-coeflab-ia/
- https://lesconnecteurs.ca/coeflab-ia-du-crim-une-journee-pour-construire-le-futur-pas-seulement-le-commenter/
- https://www.crim.ca/en/news/
- https://www.crim.ca/en/actualites-et-evenements/
- https://www.crim.ca/en/wp-json/wp/v2/posts/29705
- https://www.crim.ca/en/40ans/
- https://www.luqia.ca/en/
- https://hellodarwin.com/fr/aide-aux-entreprises/programmes/crim-accompagnement
- https://www.crim.ca/wp-content/uploads/2022/10/Conseillerere-affaires-strategie-et-science-des-donnees-CRIM.pdf
- Offres : URLs simplyhired, workopolis, genie-inc et indeed ci-dessus
