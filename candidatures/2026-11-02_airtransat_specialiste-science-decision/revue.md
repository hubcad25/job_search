# Revue — Spécialiste en science de la décision, Air Transat (2026-11-02)

## Verdict
Prêt à envoyer : presque. Il reste un bogue visible au CV (deux « ~ » imprimés tels quels), une phrase sur Python qui insiste sur un manque, et une puce du CV qui finit sur une incise. Le reste se lit comme du Hubert, dans la lignée de la lettre exo.

## Ton IA
- [CV] « …le soir du vote, avec des alertes quand une donnée ne correspond pas. » → « Calibrer les projections de plusieurs agrégateurs, les mettre à jour en direct avec les résultats officiels le soir du vote et déclencher une alerte quand une donnée ne correspond pas. » C'est l'incise de fin de phrase détachée par une virgule.
- [CV] Accroche « Je bâtis des modèles prédictifs, je valide leur calibration et je les garde à jour en production avec des pipelines automatisés. » → « Je bâtis des modèles prédictifs, je vérifie qu'ils restent bien calibrés et je les tiens à jour en production avec des pipelines automatisés. » Le triple « je + verbe » en parallèle fait slogan. Si tu préfères casser le rythme : « Je bâtis des modèles prédictifs et les pipelines qui les gardent à jour en production, et j'en vérifie la calibration. »
- [Lettre] « La validation et la surveillance des modèles que décrit votre offre, je les ai faites surtout en contexte électoral, où un modèle doit rester fiable pendant qu'on s'en sert. » → « J'ai surtout validé et surveillé des modèles en contexte électoral, où un modèle doit rester fiable pendant qu'on s'en sert. C'est le travail que décrit votre offre. » La phrase disloquée (« X, je les ai faites ») est construite pour l'effet. La lettre exo ouvrait plus simplement.

## Formulation et syntaxe
- [CV] Formation : « Mémoire~: probabilités calibrées… » et « Causalité et expérimentation~; science des données » → le `~` est passé dans une chaîne `"…"` de `#entree(lieu: …)`, où Typst ne le lit pas comme une espace insécable. Il s'imprime donc tel quel dans le PDF. Remplacer par le caractère U+00A0 ou passer `lieu: [Mémoire~: …]` en contenu entre crochets. **Bogue visible, à corriger en premier.**
- [Lettre] « J'ai terminé cette année une maîtrise avec mémoire. » → « J'ai terminé cette année une maîtrise dont le mémoire porte sur la calibration de probabilités électorales. » La phrase actuelle n'apprend rien au lecteur, et la nouvelle annonce déjà le fil du paragraphe 2.
- [CV] « Livré en production avec Claude Code : applications Python, AWS et Azure, applications web (TypeScript) » → « Livré en production avec Claude Code : applications Python et web (TypeScript), sur AWS et Azure ». « applications » revient deux fois et la liste se lit mal.
- [Lettre] « Prévoir la demande pour des vols et en mesurer l'effet sur les décisions de prix, c'est le genre de problème que j'ai envie d'apprendre à fond. » → « J'ai envie d'apprendre à fond un problème comme celui-ci : prévoir la demande pour des vols et mesurer l'effet de ces prévisions sur les prix. » Même raison qu'au paragraphe 2 : on évite une deuxième dislocation (« X, c'est… ») dans la même lettre. « en mesurer l'effet » est aussi ambigu (l'effet de quoi ?).

## La lettre sert-elle le poste ?
- [Lettre] « Je programme aussi en Python, mais c'est en R que je suis le plus fort. » → « Je modélise surtout en R, mais j'ai aussi livré en Python, notamment le modèle de Datagotchi et l'outil de recherche de la Ville de Québec. » L'offre exige une « excellente maîtrise » de Python, et la phrase actuelle se lit comme un aveu. Ta leçon dit « même travail, autre outil » : la réécriture garde l'écart honnête et l'appuie sur des preuves déjà au CV.
- [Lettre] Paragraphe 2 : l'offre demande de « concevoir des KPI et des cadres de mesure de la qualité des modèles ». Ta meilleure preuve sur ce point est au CV, mais pas dans la lettre : à la Ville, tu as mesuré la précision du classement sur un jeu de référence annoté. → Remplacer la phrase du mémoire (qui passe dans le paragraphe 1, voir plus haut) par : « À la Ville de Québec cet été, j'ai mesuré la précision d'un modèle de langage qui classait les questions de sondage, en la comparant à un jeu de référence annoté. » Ça raccourcit aussi le paragraphe, qui aligne quatre preuves.
- [Lettre] « et je cherche maintenant un poste permanent » → « et je cherche maintenant un poste où ce travail est au cœur des décisions. » (ou supprimer). L'offre ne précise pas la permanence, et la phrase parle de ton besoin, pas du leur. Question pour Hubert : veux-tu garder l'idée de stabilité ?

## Cohérence CV-lettre
- L'outil Shiny pour tester le modèle : au CV, il est rattaché à la puce ARIMA (« bâtir un outil Shiny pour tester le modèle en équipe ») ; dans la lettre, il est rattaché à Datagotchi. Le profil (proj-datagotchi) le place dans Datagotchi USA 2024. Le déplacer dans la puce Datagotchi du CV, ou au moins vérifier que les deux disent la même chose.
- Résultat de l'agrégateur : « majorité péquiste » (CV) contre « gouvernement péquiste majoritaire » (lettre). C'est mineur, mais mieux vaut uniformiser avec « gouvernement péquiste majoritaire » partout.

## À vérifier
- Compilation : OK. CV de 2 pages, lettre d'1 page, aucun `#trou` ; les PDF du dossier correspondent aux sources.
- Bogue `~` visible dans la section Formation du CV (voir plus haut).
- Lettre : « permettait à l'équipe de le tester avant chaque mise à jour ». Le profil dit seulement « outil Shiny interne pour tester le modèle en équipe ». « avant chaque mise à jour » est-il exact ? Sinon : « qui permettait à l'équipe de le tester ».
- Mots-clés absents : « KPI » et « aide à la décision ». Le tableau de bord de Lévis « utilisé pour conseiller l'équipe de campagne » pourrait porter « aide à la décision » au CV, si Hubert le juge juste.
