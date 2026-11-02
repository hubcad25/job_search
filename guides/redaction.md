# Guide de rédaction — CV et lettres

Règles pour tout document destiné à un employeur. Les faits viennent de `profil/`, le ton de `positionnement/`, la forme d'ici.
Statut : version 1, 2026-10-24. À ajuster après les premières candidatures.

## Principes

1. **Lisible par une personne des RH non technique en 30 secondes.** Elle lit en premier ; le gestionnaire technique lit ensuite.
2. **Concis, clair et précis.** C'est le conseil n° 1 des recruteurs québécois (sondage de l'Ordre des CRHA auprès de 255 recruteurs).
3. **Spécifique et vérifiable.** Les recruteurs repèrent et écartent les CV génériques écrits par IA : formulations vagues, mots à la mode, ton lisse. Chaque puce contient un fait concret (chiffre, client, outil, résultat).
4. **Humain.** Pas de superlatifs (« passionné », « dynamique », « expert reconnu »). Les faits suffisent.
5. **Pas de ton « IA ».** Écrire comme Hubert parle en entrevue : phrases simples, sujet-verbe-complément. À éviter :
   - les formules frappées et les antithèses (« bâtir des données fiables et les outils qui s'en servent », « ils calculent, ils ne lisent pas ») ;
   - les énumérations en trois temps après un deux-points, et les deux-points à répétition ;
   - les images abstraites (« de la donnée brute au rapport », « partir des fondations », « de bout en bout ») ;
   - les transitions de rédaction (« Enfin », « Ce qui m'attire, c'est que »).

## CV

### Format
- Police de 11 pt (recommandation : 11-12 pt). Lettre US, 2 pages max (1 page et demie pour la plupart des offres). Une colonne, pas de tableaux, d'images ni d'icônes (ATS).
- En-tête : nom, ville, téléphone, courriel, LinkedIn en texte brut. Pas de photo, d'âge, d'état civil ni de nationalité.
- GitHub et portfolio : ne pas citer (voir `profil/identite.yaml`).
- Ordre antichronologique dans chaque section, selon la date de début.
- **Mandats simultanés** : regrouper les mandats facturés au nom personnel (`au_nom: perso`) sous un seul bloc « Consultant en analyse de données (travailleur autonome) », une puce par client, le client en tête de puce. Opubliq reste un bloc à part (`au_nom: opubliq`).
- Section « Projets » (pas « Projets choisis », calque de l'anglais) : seulement les projets hors emploi, de poids `fort` ou `moyen` et utiles à l'offre.
- Mise en page : `cv/modele.typ` seulement. Ne jamais retoucher un PDF ; on corrige le `.typ` et on recompile.

### Accroche
- 2 lignes max, sous l'en-tête : le titre visé, la spécialité, ce qui distingue. Pas de « je » répété, pas de méthode de travail.
- **Pas de position sur l'IA au CV** (agents, Claude Code, méthode de travail) : elle va dans la lettre et en entrevue (`positionnement/ia.md`, ligne « Où va l'IA »). Au CV, Claude Code n'apparaît que dans les compétences. Un LLM utilisé *dans le produit* (classification, RAG, agent de rapports) reste un fait technique et peut figurer dans une puce.

### Puces
- **Commencer par un verbe d'action à l'infinitif** : « Concevoir », « Pondérer », « Automatiser », « Former ». Une seule forme dans tout le CV.
- **Structure CAR** : action, puis résultat ou ampleur ; la technologie en dernier, entre parenthèses si utile.
  - Mauvais : « Plateforme de bout en bout : questionnaire hébergé, pipeline AWS Lambda, modèles bayésiens, tableau de bord Quarto. »
  - Bon : « Livrer un tableau de bord mis à jour chaque matin pendant toute la campagne, à partir des données de terrain des bénévoles (AWS, Quarto). »
- Une ligne, deux au plus. 2 à 3 puces par poste récent, 1 pour les postes anciens ou secondaires.
- Chiffrer quand le profil le permet (nombre de sondages, d'utilisateurs, de commentaires). Ne jamais inventer un chiffre.
- Distinguer **responsabilités** (ce que le poste demandait) et **réalisations** (ce qui a changé grâce à Hubert). Privilégier les réalisations.

### Vocabulaire
- **Méthodes en français**, avec le terme courant au Québec : forêts aléatoires, régression, pondération, segmentation, réduction de dimensionnalité.
- **Noms d'outils et de produits tels quels** : R, Shiny, Python, Power BI, Azure AI Search, Claude Code.
- **Reprendre les termes de l'offre** quand ils décrivent un fait vrai (ex. : « qualité des données », « tableaux de bord », « bailleurs de fonds »). Ne pas copier l'offre phrase par phrase ; environ 80 % du CV vient de la base de facette.
- Jargon : un terme technique doit servir l'offre. Pour une offre d'analyste BI, « forêts aléatoires » n'aide pas ; « détection d'anomalies » oui.
- Typographie française : espace insécable avant « : ; ? ! » et dans les nombres (`10~000` en Typst).

### Compétences
- Seulement celles qui servent l'offre. Deux niveaux explicites (`positionnement/ia.md`) : maîtrisé sans IA, et livré avec Claude Code.
- Une compétence n'apparaît qu'une fois : si elle est déjà listée à un niveau sans IA, la ligne Claude Code dit ce qu'elle ajoute (ex. : « applications Python en production ») au lieu de la répéter.
- Une compétence au niveau `notions` va en dernier, sans qualificatif flatteur, ou n'est pas citée.

## Lettre de présentation

- **Obligatoire : partir de `cv/lettre_modele.typ`**, le gabarit tiré de la lettre exo BI. Les règles ci-dessous expliquent ce gabarit ; elles ne remplacent pas la copie.
- 1 page, 3 ou 4 paragraphes courts, adressée à une personne si possible (sinon « Madame, Monsieur » ; pas de bloc destinataire pour un PDF déposé dans un formulaire).
- Exemples de référence : la lettre Teamworks d'Hubert (Google Drive, `coverletter-teamworks`) ; pour le ton, la lettre Alto ; **pour la structure, les écarts et la personnalité, la lettre exo BI** (`candidatures/2026-10-28_exo_conseiller-intelligence-affaires/lettre.typ`, jugée la meilleure par Hubert le 2026-11-02).
1. **Qui je suis et ce que j'apporte** : années d'expérience, spécialité, ce que j'apporte au poste. Ne jamais ouvrir en résumant l'offre (« Votre offre décrit… ») ni sur une actualité prise pour elle-même.
2. **Preuves** : 2 ou 3 réalisations chiffrées du profil, liées aux tâches de l'offre.
3. **Pourquoi ce poste**, plus l'**écart assumé** : ce que le poste doit accomplir et pourquoi ça me ressemble ; un fait sur l'organisation seulement s'il touche directement le poste. Puis nommer franchement, en 1 ou 2 phrases, une exigence où le niveau est plus bas (ex. : notions de Power BI) et ce qui le compense. Ne pas la cacher, ne pas promettre une formation qui n'est pas prévue.
- **Domaine nouveau** (ex. : transport pour exo) : pas de « passionné ». Le dire franchement, puis : « J'aime beaucoup décortiquer un nouveau problème de données », avec les domaines déjà abordés (vote, musée, ville) comme preuve. Ne pas parler des « mêmes méthodes » quand on ignore celles de l'employeur (Hubert, 2026-11-02).
4. **IA**, en dernier : 1 ou 2 phrases **si l'offre s'y prête** (décidé candidature par candidature, `positionnement/ia.md`). Opubliq seulement si pertinent (`positionnement/opubliq.md`).
- Fin : disponibilité pour une entrevue. Pas de formule ampoulée.

### Leçons de la lettre exo BI (2026-11-02)
- **Ne pas réciter le CV.** Chaque paragraphe de preuves part d'un besoin de l'offre (« Le travail de prévision que décrit votre offre ressemble à celui que j'ai fait en campagne électorale ») puis le prouve. Une preuve qui ne démontre pas ce besoin sort, même si elle est bonne (un tableau de bord ne prouve pas une prévision).
- **Écart d'outil = même travail, autre outil.** « Je bâtis des tableaux de bord depuis plusieurs années, mais en R Shiny, en Quarto, en Streamlit et en React plutôt qu'en Power BI, que je connais peu. » Regrouper les écarts, puis **finir le paragraphe sur du positif**, jamais sur un manque.
- **Personnalité par un fait.** « J'aime beaucoup décortiquer un nouveau problème de données », suivi des domaines déjà abordés. Jamais « passionné ».
- **Paragraphe IA : prouver la capacité demandée.** Si l'offre veut un conseiller en IA, raconter une situation où Hubert a conseillé (mandat flou, consultation, solution acceptée par les TI), pas seulement un usage technique. Puis Claude Code en termes généraux : il sert à **combler ses points plus faibles** ; jamais un exemple pointu (« mes requêtes SQL »).
- **Varier les débuts de paragraphe.** Pas trois paragraphes qui commencent par « Ce poste » ou « Le poste ».
- **Ne pas mentionner d'autres candidatures** chez le même employeur : le recruteur lit « il postule partout ».

## Vérification avant l'envoi

- Chaque affirmation pointe vers un `id` de `profil/` (en commentaire dans le `.typ`).
- Les consignes `attention` du profil sont respectées ; aucune `note_privee` n'est utilisée.
- Relu à voix haute : aucune phrase qu'Hubert ne dirait pas en entrevue.

## Sources (consultées le 2026-10-24)
- Ordre des CRHA, sondage auprès de 255 recruteurs : CV concis, clair et précis ; la présentation influence la décision.
- HEC Montréal, [Tutoriel : rédigez votre CV maître](https://www.hec.ca/etudiants/soutien-ressources/gestion-carriere/cv-et-lettres/tutoriel/tutoriel-redigez-cv-maitre.html) : verbes d'action, réalisations distinctes des responsabilités, design sobre pour les logiciels de tri.
- Jobillico, [Rédiger un CV au Québec](https://www.jobillico.com/blog/rediger-un-cv-au-quebec/) : 1-2 pages, format lettre, pas de photo, terminologie québécoise, méthode CAR.
- Resume Genius, [Hiring Insights Report](https://resumegenius.com/blog/job-hunting/hiring-insights-report) : PDF et 2 pages préférés ; CV écrits par IA repérés et écartés.
