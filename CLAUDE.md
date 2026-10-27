# job_search

Pipeline de recherche d'emploi d'Hubert Cadieux. Voir `spec.md`.

## Deux sources, deux rôles

- `profil/` : **faits** sur Hubert (parcours, réalisations, compétences). Validés entrée par entrée. Lire `profil/README.md` en premier.
- `positionnement/` : **discours** (comment présenter Opubliq, l'usage de l'IA, chaque facette). Ce sont des choix, pas des faits ; ils peuvent changer. Ne jamais y ajouter un fait qui n'est pas dans `profil/`.

Tout document pour un employeur (CV, lettre, réponse) prend ses faits dans `profil/`, son ton dans `positionnement/` et sa forme dans `guides/redaction.md` (à lire avant d'écrire).

## CV et candidatures

- Mise en page : `cv/modele.typ` (Typst). Bases par facette : `cv/base_<facette>.typ`. Lettre : `cv/lettre_modele.typ` (aucun `#trou` rouge à l'envoi).
- Une candidature = un dossier `candidatures/<date>_<org>_<poste>/` avec `offre.md`, `cv.typ`, `lettre.typ`.
- On corrige toujours le `.typ`, puis `typst compile` ; jamais le PDF.
- Avant l'envoi : lancer l'agent `reviewer-candidature` sur le dossier ; il écrit `revue.md`.

## Mettre à jour le profil

Quand Hubert mentionne une nouvelle expérience, réalisation, publication ou compétence :

1. Créer ou modifier l'entrée dans le bon YAML (`experiences`, `projets`, `publications`, `competences`, `formation`), avec un `id` stable.
2. Poser seulement les questions qui comblent les trous (dates, heures, rôle, payé, équipe, montrable).
3. Vérifier ce qui peut l'être (web, repos, Téléchargements) plutôt que de deviner.
4. Lier les preuves dans `competences.yaml`.
5. Lancer `uv run --with pyyaml scripts/build_profil_index.py` : il doit passer sans erreur.
