# Profil — mode d'emploi pour les agents

Source de vérité sur Hubert Cadieux. Validé entrée par entrée avec Hubert le 2026-10-23.

## Comment l'utiliser

1. Lire `index.md` : une ligne par entrée (id, titre, facettes, poids, validation).
2. Ouvrir seulement les entrées pertinentes dans les fichiers YAML (`grep -n "id: exp-environics"`).
3. Dans tout output, citer les `id` utilisés. Toute affirmation sur Hubert doit pointer vers une entrée.
4. Ne rien affirmer qui n'est pas dans une entrée. Un champ `TROU` ou `null` = inconnu : ne pas deviner.
5. Respecter le `poids` : une entrée `faible` ne doit pas être présentée comme un atout central.

## Fichiers

| Fichier | Contenu | Préfixe d'id |
|---|---|---|
| `identite.yaml` | coordonnées, langues, objectif, titres utilisés | — |
| `formation.yaml` | diplômes, formations, bourses | `form-`, `bourse-` |
| `experiences.yaml` | emplois, contrats, mandats, entreprise, enseignement, bénévolat | `exp-` |
| `projets.yaml` | produits et projets construits, actifs montrables | `proj-` |
| `publications.yaml` | articles, chapitres, prépublications, mémoire, billets, conférences, médias | `pub-`, `conf-`, `media-` |
| `competences.yaml` | compétences, chacune liée à ses preuves | `comp-` |

## Champs communs

- `facettes` : `sondages`, `politique`, `techno`, `public`, `sport`, `recherche` (voir `../spec.md`).
- `poids` : substance de l'entrée (durée, rôle, résultat), pas sa pertinence ; la pertinence dépend de l'offre, c'est à l'agent de la juger.
  - `fort` : rôle central, durée ou résultat substantiel, preuve vérifiable.
  - `moyen` : réel et pertinent, mais court, partiel ou secondaire.
  - `faible` : mineur, ancien ou peu pertinent ; à citer seulement si l'offre le demande.
- `role` : `responsable` (a dirigé ou porté seul) ou `contributeur` (a participé).
- `regime` : `temps_plein`, `temps_partiel`, `ponctuel`, `inconnu`.
- `remunere` : `oui`, `non`, `inconnu`. `au_nom` : `perso`, `opubliq`, `employeur`.
- `montrable` : `public`, `sur_permission` (travail client), `sur_demande` (remis en ligne pour une démo), `captures` (non public, captures possibles), `non`.
- `preuves` : URLs ou ids d'autres entrées.
- `attention` : formulation à respecter (ex. : ne pas dire « auteur » ou « créateur »). Obligatoire à suivre.
- `note_privee` : contexte pour Hubert seulement. Ne jamais l'utiliser dans un document destiné à un employeur.
- `validation` : `a_valider` (extrait de l'ancien profil, non relu), `valide` (relu par Hubert), `valide_lot` (entrée faible acceptée en lot, sans relecture détaillée), `a_corriger`.

## Compétences

Chaque compétence liste ses `preuves` (ids d'expériences, de projets ou de publications). Sans preuve, ne pas l'affirmer.

Deux niveaux : `niveau_sans_ia` (ce qu'Hubert défend en entrevue technique sans IA) et `niveau_avec_ia` (ce qu'il livre avec Claude Code). Dans un CV ou une lettre, ne jamais présenter le niveau avec IA comme un niveau sans IA ; dire par exemple « livre des API FastAPI en production avec Claude Code ».

## Mise à jour

Après une modification des YAML : `uv run --with pyyaml scripts/build_profil_index.py` (depuis la racine du repo) régénère `index.md` et vérifie les ids (doublons, renvois brisés).
