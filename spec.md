# Spec — Pipeline de recherche d'emploi

## But

Trouver, à Montréal, les offres d'emploi et les organisations qui correspondent au profil d'Hubert Cadieux, puis les classer pour postuler (offres) ou envoyer une candidature spontanée (organisations).

## À lire avant de travailler

1. `profil/` : source de vérité sur le parcours, validée entrée par entrée. Lire `profil/README.md` puis `profil/index.md`. Ne rien affirmer sur Hubert qui n'y est pas.
2. `context.md` : situation, objectifs et questions de positionnement (Opubliq, IA, portfolio).

## Contraintes

- Lieu : Montréal (ou télétravail depuis Montréal). Prêt à travailler sur place autant que l'employeur le souhaite.
- Emploi stable, à temps plein. Opubliq reste une activité de consultation le soir et la fin de semaine : éviter les employeurs en concurrence directe ou en conflit d'intérêts avec Opubliq, ou au moins les signaler.
- Exécution **ponctuelle**, lancée par Claude à la demande. Pas d'automatisation récurrente pour l'instant.
- Stockage en **CSV** dans le repo. Un mini dashboard interne viendra plus tard ; garder les CSV propres et stables pour qu'il puisse les lire.

## Hors périmètre (pour l'instant)

- Génération de CV et de lettres : on décidera rendu là. Le schéma garde quand même un champ facette pour la préparer.
- Envoi automatique de candidatures.

## Facettes du profil

Chaque offre ou organisation reçoit une facette principale (et une secondaire si pertinent) :

| Facette | Exemples de cibles |
|---|---|
| `sondages` | firmes de sondage et de recherche marketing, instituts, services d'analyse d'opinion |
| `politique` | partis, cabinets, recherche électorale, affaires publiques, médias (équipes data) |
| `techno` | data science, IA appliquée, produit data, ingénierie analytique |
| `public` | ministères, organismes, villes, sociétés d'État (analyse, recherche, innovation) |
| `sport` | équipes, ligues, firmes d'analytique sportive |

La liste peut évoluer ; documenter tout ajout ici.

## Étapes

1. **Collecte des organisations** : bâtir une liste la plus exhaustive possible (voir Sources), puis dédoublonner.
2. **Filtrage** : Montréal ; ~10 à 500 employés ou organisme public (seuil par défaut, ajustable) ; activité qui touche au moins une facette.
3. **Collecte des offres** : sites d'emploi et pages carrières des organisations retenues.
4. **Scoring** : note de 0 à 100 par rapport à `profil/`, avec une justification courte (compétences demandées vs démontrées, niveau, langue, lieu). Signaler les exigences bloquantes (ex. : diplôme d'ingénieur, 7 ans et plus d'expérience, citoyenneté).
5. **Regroupement** : facette, puis priorité (offre forte, candidature spontanée, à surveiller, rejet).
6. **Suivi** : statut de chaque candidature.

## Sources

### Offres
- Sites d'emploi : Indeed, LinkedIn, Jobillico, Québec emploi, Emplois GC.
- Pages carrières des organisations retenues.
- Indeed et LinkedIn bloquent le scraping : passer par le navigateur (Claude in Chrome) ou par une saisie manuelle, pas par un scraper agressif. Respecter les conditions d'utilisation.

### Organisations (liste exhaustive)
- **Secteur public** : listes officielles des ministères et organismes du Québec (Données Québec), liste des ministères et organismes fédéraux (GC InfoBase), services et arrondissements de la Ville de Montréal, sociétés d'État.
- **Entreprises** : Registre des entreprises du Québec (REQ), voir la section dédiée ci-dessous ; fournisseurs ayant obtenu des contrats en données ou sondage sur SEAO (réutiliser `../veille-seao`) ; clients et firmes du registre des lobbyistes (Carrefour Lobby Québec, voir `../veille-gouv`).
- **LinkedIn** : recherche d'entreprises par secteur et lieu (Montréal) ; voir aussi les employeurs des personnes au parcours semblable (anciens de la CLESSN, diplômés en science politique quantitative de Laval et de l'UdeM).
- **Listes sectorielles (larges, non limitatives)** :
  - Sondage et recherche : membres du CRIC, firmes de recherche marketing, d'expérience client et d'études de marché, panels.
  - Affaires publiques et communication : firmes de relations publiques, d'affaires publiques et de stratégie, agences de marketing numérique avec une équipe data.
  - Médias : équipes data et journalisme de données.
  - Conseil : cabinets de conseil en données, analytique, transformation numérique et politiques publiques.
  - Recherche et OSBL : think tanks, instituts, fondations, centres universitaires, organismes communautaires avec un volet évaluation ou données.
  - Organisations qui *utilisent* des données de sondage ou d'opinion : assurances, banques, coopératives, santé, éducation, organisations de défense d'intérêts, syndicats.
  - Sport : équipes et ligues, et entreprises d'analytique sportive, de données sportives, de paris et de technologie sportive. Détail ci-dessous.
- **Sport, liste élargie** :
  - Grosses organisations à garder malgré le seuil de taille : Groupe CH, Loto-Québec (Mise-o-jeu), Alouettes, CF Montréal, etc.
  - Fédérations et organismes : fédérations sportives québécoises et canadiennes, Sports Québec, INS Québec.
  - Médias sportifs : RDS, TVA Sports, The Athletic, Sportsnet, etc. (équipes data et contenu analytique).
  - Clubs juniors et universitaires : LHJMQ et ses équipes, Rouge et Or, Carabins, Stingers, Redbirds.
  - **Fournisseurs des organisations sportives** (type Winnia : SaaS B2B qui vend aux équipes, revenus, billetterie, partisans, performance, vidéo, paris). Les méthodes de repérage :
    1. Pages de partenaires et de fournisseurs des équipes et des ligues.
    2. Répertoires de startups filtrés sur le sport à Montréal et au Québec (Crunchbase, Dealroom, Québec Tech, incubateurs et accélérateurs).
    3. Listes d'exposants et de conférenciers des conférences de sport tech et d'analytique (ex. : MIT Sloan Sports Analytics Conference).
    4. LinkedIn : où vont travailler les anciens employés des équipes et des ligues de Montréal ; entreprises « logiciel » dont les clients sont des équipes.
    5. Sites d'emploi propres au sport (ex. : TeamWork Online) pour repérer les entreprises qui recrutent.
- Le filtre de taille (~10 à 500) ne s'applique pas à la facette `sport`.
- **À inclure absolument** (demandé par Hubert, ne pas filtrer sans lui en parler) :
  - Winnia — https://winnia.com/fr/company (sport, ajouté le 2026-10-23).
- Pas de ciblage des laboratoires de recherche fondamentale en IA (Mila, etc.) : le profil est celui d'un praticien qui applique l'IA à des domaines précis (sondages, politique), pas d'un chercheur en IA.
- Garder pour chaque organisation la source et la date de collecte.

### REQ : téléchargement et filtrage (pas de scraping)
- Jeu de données complet sur Données Québec : https://www.donneesquebec.ca/recherche/dataset/registre-des-entreprises (ZIP d'environ 225 Mo, mis à jour aux deux semaines, licence CC-BY-NC-SA 4.0, usage non commercial). Guide des champs : `guideutilisation.pdf` dans le même jeu.
- Fichiers utiles : Entreprise, Nom, Établissement, Domaines de valeur.
- Champs pour filtrer : `COD_STAT_IMMAT` (garder les entreprises immatriculées), `COD_ACT_ECON_CAE` et `COD_ACT_ECON_CAE2` + descriptions `DESC_ACT_ECON_ASSUJ*` (activité), `COD_INTVAL_EMPLO_QUE` (ordre de grandeur des employés au Québec), adresses des établissements (Montréal).
- Méthode : (1) liste blanche de codes CAE par facette (sondage, recherche marketing, conseil, services informatiques, relations publiques, etc.) ; (2) recherche de mots-clés dans les descriptions d'activité (« sondage », « recherche marketing », « opinion », « analyse de données », « statistique », « affaires publiques », « analytique sportive », etc.) ; (3) filtres de lieu et de taille ; (4) validation du résultat (site web, LinkedIn).
- Limites : la classification CAE est ancienne et déclarée par les entreprises, donc bruitée. Traiter le REQ comme une source de candidats à valider, pas comme une liste finale.

## Données

Dossier `data/`. Encodage UTF-8, séparateur virgule, une ligne par entité, identifiants stables.

### `data/organisations.csv`
`org_id, nom, type (entreprise|public|osbl|universite), secteur, facette_principale, facette_secondaire, taille, ville, site_web, page_carrieres, source, date_collecte, priorite (spontanee|surveiller|rejet), justification, notes`

### `data/offres.csv`
`offre_id, org_id, titre, url, source, date_publication, date_collecte, lieu, mode (sur_place|hybride|teletravail), salaire, langue, facette_principale, facette_secondaire, score, justification_score, exigences_bloquantes, priorite (forte|moyenne|faible|rejet), statut, notes`

### `data/candidatures.csv`
`candidature_id, offre_id, org_id, type (offre|spontanee), date_envoi, documents (chemins), contact, statut (a_faire|envoyee|entrevue|refus|offre|sans_reponse), date_relance, notes`

Les CSV bruts de collecte vont dans `data/raw/` (non édités à la main).

## Stack et conventions

- Python avec `uv`, scripts dans `scripts/`. Polars ou pandas, au choix.
- Chaque script est relançable sans créer de doublons (identifiants déterministes : `org_id` = id fourni par la source (`gc-…`, `qc-…`, `mtl-…`), sinon domaine du site sans « www. », sinon `neq-<NEQ>`, sinon nom normalisé ; une organisation est aussi retrouvée par son NEQ ; URL normalisée pour les offres). Ajouts à la main : `data/ajouts_manuels.csv`, lu par `scripts/fusion_orgs.py`.
- Le scoring par LLM doit citer les ids de `profil/` qu'il utilise, pour être vérifiable.

## Premier cas d'usage

L'offre Indeed https://ca.indeed.com/viewjob?jk=72f965c04024059a : la récupérer, la scorer, la classer et l'inscrire dans `offres.csv`. Elle sert à valider le schéma et le scoring avant de passer à l'échelle.

## Questions ouvertes

- Seuil de taille des organisations (10–500 employés par défaut).
- Salaire plancher (non fixé).
- Forme du dashboard interne.
- Génération de CV et lettres : dans ce pipeline ou à part.
