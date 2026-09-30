#!/usr/bin/env bash
# Sync this mod into the Victoria 3 local mod folder, replacing what is there.
# Usage: scripts/install.sh [--yes] [destination]
#   --yes  skip the confirmation prompt (the plan is still printed)
# Default destination: ~/Documents/Paradox Interactive/Victoria 3/mod/victoria-3-canada-mod
set -euo pipefail

# Top-level folders the game reads. Anything else (docs, scripts, .git) stays out.
CONTENT=(.metadata common events localization gfx gui map_data)

yes=0
[[ ${1:-} == --yes ]] && { yes=1; shift; }
repo=$(cd "$(dirname "$0")/.." && pwd)
mods="$HOME/Documents/Paradox Interactive/Victoria 3/mod"
dest=${1:-$mods/victoria-3-canada-mod}

[[ -f $repo/.metadata/metadata.json ]] || { echo "No .metadata/metadata.json in $repo" >&2; exit 1; }
[[ $(basename "$(dirname "$dest")") == mod ]] || { echo "Refusing: $dest is not directly inside a 'mod' folder" >&2; exit 1; }
[[ -d $mods/canadian_sovereignty && $dest != "$mods/canadian_sovereignty" ]] &&
  echo "Warning: an older copy exists at $mods/canadian_sovereignty. Disable it in the launcher to avoid duplicate definitions."

# Stage only the mod content, so --delete also removes anything else in the destination.
stage=$(mktemp -d); trap 'rm -rf "$stage"' EXIT
for d in "${CONTENT[@]}"; do
  [[ -d $repo/$d ]] && rsync -a --exclude .DS_Store "$repo/$d" "$stage/"
done

mkdir -p "$dest"
# -c compares contents, so only real differences are listed. Lines starting with
# "*deleting" will be removed, ">f+++" are new files, ">fc" are files that change.
plan=$(rsync -a -c --delete -i -n "$stage/" "$dest/" | grep -v '^\.d' || true)
if [[ -z $plan ]]; then echo "Already up to date: $dest"; exit 0; fi
echo "Changes to $dest:"; echo "$plan"

if (( ! yes )); then
  read -r -p "Apply these changes? [y/N] " ans
  [[ $ans == [yY]* ]] || { rmdir "$dest" 2>/dev/null; echo "Nothing changed."; exit 1; }
fi
rsync -a -c --delete "$stage/" "$dest/"
echo "Installed to $dest"
