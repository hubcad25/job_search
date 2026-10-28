#!/usr/bin/env bash
# Compile le CV et la lettre d'une candidature en PDF nommés Hubert_Cadieux_<CV|Lettre>_<SIGLE>.pdf.
# Usage : render <dossier ou bout de nom> [sigle]
#   render stm                  → candidatures/2026-10-28_stm_.../Hubert_Cadieux_CV_STM.pdf
#   render alto Alto            → sigle imposé (sinon : org du nom de dossier, en majuscules)
set -euo pipefail

racine="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
[[ $# -ge 1 ]] || { echo "Usage : render <dossier> [sigle]" >&2; exit 1; }

# Dossier : chemin existant, sinon recherche dans candidatures/
if [[ -d "$1" ]]; then
  dossier="$(cd "$1" && pwd)"
else
  trouves=()
  while IFS= read -r d; do trouves+=("$d"); done < <(find "$racine/candidatures" -mindepth 1 -maxdepth 1 -type d -name "*$1*" | sort)
  case ${#trouves[@]} in
    0) echo "Aucun dossier de candidature ne contient « $1 »." >&2; exit 1 ;;
    1) dossier="${trouves[0]}" ;;
    *) echo "Plusieurs dossiers contiennent « $1 » :" >&2; printf '  %s\n' "${trouves[@]##*/}" >&2; exit 1 ;;
  esac
fi

# Sigle : 2e argument, sinon l'org du nom de dossier (<date>_<org>_<poste>) en majuscules
nom="$(basename "$dossier")"
org="$(cut -d_ -f2 <<<"$nom")"
sigle="${2:-$(tr '[:lower:]' '[:upper:]' <<<"$org")}"

for doc in cv:CV lettre:Lettre; do
  src="$dossier/${doc%%:*}.typ"
  [[ -f "$src" ]] || continue
  out="$dossier/Hubert_Cadieux_${doc##*:}_${sigle}.pdf"
  typst compile --root "$racine" "$src" "$out"
  echo "✓ ${out#$racine/}"
done
