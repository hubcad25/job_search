# Revue — Analyste principal ou principale de données, La Presse (2026-10-27)

## Verdict
Prêt à envoyer : presque. Les faits sont justes et la structure suit Alto, mais la lettre résume deux fois l'offre (« Le poste demande aussi… », « …que mentionne l'offre »), ouvre le paragraphe 2 sur une formule et répète « bâtir » cinq fois. Ces trois tics font plus « rédigé » qu'Alto.

## Ton IA
- [Lettre] « Ce que je fais le mieux, c'est partir d'un besoin mal défini et en faire un outil que les équipes utilisent. À la Ville de Québec, après avoir consulté d'autres divisions, j'ai proposé aux TI une solution qu'ils ont acceptée et j'ai bâti un outil qui centralise les questions de sondage de la Ville et les classe par LLM selon les services municipaux. »
  → « Cet été, la Ville de Québec m'a confié un mandat encore peu défini sur ses données de sondage. J'ai consulté d'autres divisions avant de proposer aux TI une solution qu'ils ont acceptée et j'ai construit l'outil qui permet de chercher dans les questions de sondage de la Ville et d'en visualiser les résultats. J'y ai aussi classé les questions par LLM selon les services municipaux. »
  Formule en « Ce que…, c'est » (le guide l'interdit) ; « mandat peu défini » est le fait réel (`exp-vdq-stage`), donc le raconter plutôt que l'annoncer. « une solution » reste abstrait mais nommer Azure alourdirait ; à garder tel quel.
- [Lettre] « Le poste demande aussi de mener des projets avec des clients internes et de guider une équipe. »
  → supprimer la phrase et ouvrir directement sur le fait : « Chez Opubliq, l'entreprise que j'ai cofondée, j'ai mené pour le Comité des usagers… ». Paraphraser l'offre est la transition de rédaction typique d'une lettre générée.
- [Lettre] « Je suis aussi à l'aise avec les produits IA que mentionne l'offre. Pour Opubliq, j'ai conçu un agent qui rédige à partir de sondages des rapports chiffrés qui citent leurs sources. »
  → « Pour Opubliq, j'ai aussi conçu un agent qui rédige des rapports chiffrés à partir de 25 sondages et qui cite ses sources. »
  Même tic (renvoi à l'offre) et autoévaluation (« à l'aise ») au lieu du fait. L'ordre « rédige à partir de sondages des rapports » accroche à l'oral.
- [Lettre] « Je cherche maintenant un poste à temps plein où m'investir à long terme. À la CLESSN, un collègue et ami travaillait sur la saillance médiatique. C'est un sujet qui m'intéresse depuis et qui me donne envie de travailler avec les données d'un média. J'ai d'ailleurs analysé l'opinion pour la couverture de La Presse canadienne pendant l'élection québécoise de 2022. »
  → « Je cherche maintenant un poste à temps plein où m'investir à long terme, et celui-ci m'attire parce que j'ai envie de travailler avec les données d'un média. L'intérêt m'est venu à la CLESSN, où un collègue et ami travaillait sur la saillance médiatique. J'y ai aussi analysé l'opinion pour la couverture de La Presse canadienne pendant l'élection québécoise de 2022. »
  Quatre phrases hachées sans lien. La motivation arrivait en dernier ; ici elle suit le « je cherche », comme dans Alto. Le fond (collègue, saillance, PC 2022) est conservé.
- [CV] Accroche : « Scientifique de données formé en science politique et en économie, avec plus de 5 ans d'expérience en analyse de données. Je bâtis des modèles prédictifs, des pipelines de données et des tableaux de bord en R, Python et SQL pour des équipes qui ne sont pas analystes. »
  → « Scientifique de données formé en économie et en science politique et actif en analyse de données depuis 2021. Je livre en R, Python et SQL des modèles prédictifs et des tableaux de bord à des équipes qui ne sont pas analystes. »
  Virgule d'incise « , avec plus de 5 ans », énumération en trois temps, et l'accroche fait 3 lignes alors que le guide en permet 2. Elle répète aussi presque mot pour mot la 2e phrase de la lettre.

## Formulation et syntaxe
- [Lettre] « bâtir » apparaît 5 fois (« Je bâtis », « j'ai bâti un outil », « j'ai bâti pour Repensons Lévis », « j'ai bâti le modèle »). Avec les réécritures proposées : « construit » (Ville), et pour Lévis → « Pendant l'élection municipale de 2025, le pipeline que j'ai conçu pour Repensons Lévis pondérait chaque matin les données de pointage des bénévoles et mettait à jour le tableau de bord qui guidait mes recommandations à l'équipe de campagne. »
- [Lettre] « À la CLESSN, j'ai bâti le modèle prédictif de l'application Datagotchi pour l'élection américaine de 2024 avec Léger, et plus de 10 000 personnes l'ont utilisée. »
  → « Pour l'élection américaine de 2024, j'étais responsable du modèle de Datagotchi, une application de la CLESSN qui prédit le vote à partir des habitudes de vie. Léger était notre partenaire pour cette version et plus de 10 000 personnes l'ont utilisée. »
  Le recruteur ne sait pas ce qu'est Datagotchi, et « avec Léger » s'accroche mal à « 2024 ». La formulation colle à l'`attention` de `proj-datagotchi`.
- [Lettre] « une consultation de plus de 7 000 commentaires » → « une consultation qui a recueilli plus de 7 000 commentaires » (une consultation ne « compte » pas de commentaires ; c'est la formule d'Alto et du CV).
- [Lettre] « À la CLESSN, je faisais partie de l'équipe de coordination de la chaire. J'y faisais le lien entre les développeurs et les étudiants en science politique et j'ai formé plus de 10 d'entre eux à nos pipelines de données. Je n'ai jamais géré une équipe de façon formelle et je suis prêt à l'apprendre avec vous. Je n'ai pas non plus travaillé avec des données d'audience numérique, mais j'ai segmenté les visiteurs du Musée de la civilisation pour deux rapports d'orientation marketing. »
  → « À la CLESSN, je faisais partie de l'équipe de coordination de la chaire et j'assurais le lien entre les développeurs et les étudiants en science politique. J'ai formé plus de 10 de ces étudiants à nos pipelines de données. Je n'ai jamais géré une équipe de façon formelle et je suis prêt à l'apprendre avec vous. Côté marketing, j'ai segmenté les visiteurs du Musée de la civilisation pour deux rapports d'orientation, mais je n'ai pas encore travaillé avec des données d'audience numérique. »
  « faisais… faisais » trop proches ; « d'entre eux » renvoie aux développeurs aussi. Les deux aveux qui se suivent (« Je n'ai jamais… Je n'ai pas non plus… ») font liste de confessions ; commencer le second par le fait (Musée) l'adoucit.
- [CV] « Proposer aux TI une solution pour centraliser les données de sondage de la Ville et la faire accepter après avoir consulté d'autres divisions. »
  → « Consulter d'autres divisions et faire accepter par les TI une solution pour centraliser les données de sondage de la Ville. » (ordre chronologique, plus court).
  Et « Prendre en charge le développement et les partenaires de la chaire au sein de son équipe de coordination. » → « Être responsable du développement de la chaire et des relations avec ses partenaires au sein de l'équipe de coordination. » (« le développement » se lit comme du développement logiciel ; « les partenaires » ne se « prennent pas en charge »).

## Cohérence CV-lettre
- La 2e phrase de la lettre recopie l'accroche du CV (« modèles, pipelines et tableaux de bord en R, Python et SQL… pas analystes »). Réécrire l'accroche (voir plus haut) suffit à les distinguer.
- La lettre décrit l'outil de la Ville comme un outil qui « centralise et classe » ; le CV, comme un outil pour « chercher et visualiser » (l'atout principal selon `proj-vdq-outil-sondages`). La réécriture proposée aligne la lettre sur le CV.
- Le CV dit qu'Opubliq est « en veille » alors que la lettre en tire deux preuves : ça se tient, mais prépare une réponse pour l'entrevue.

## À vérifier
- Compilation OK (seul un avertissement pdftotext bénin). CV : 2 pages, lettre : 1 page, aucun `#trou`.
- Faits conformes à `profil/` ; `attention` respectées (Datagotchi, Power BI absent) ; aucune `note_privee` utilisée.
- Titre du CV « Scientifique de données » alors que le poste est « Analyste principal de données ». Question pour Hubert : veux-tu « Analyste et scientifique de données » en titre pour le tri par mots-clés ?
- « La Presse canadienne » dans une lettre à La Presse : le recruteur sait que ce n'est pas le même média. La réécriture enlève le « d'ailleurs » qui laissait croire à un lien.
- Mots de l'offre absents de la lettre : « acquisition et engagement des lecteurs », « science de données ». Pas bloquant.
