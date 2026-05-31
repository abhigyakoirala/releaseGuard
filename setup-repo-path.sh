#!/usr/bin/env bash
set -euo pipefail

PLACEHOLDER="/change/this/path/to/your/path"
LEGACY_PATH="/Users/akdev/development/my-profolio"
LEGACY_RUNTIME_PATH="/home/lab/development/my-protfolio"

FILES=(
  "AGENTS.md"
  "SKILL.md"
  "PLAN.md"
  "QUICKSTARTCODEX.md"
  "README.md"
  "STEPS.md"
  ".codex/skills/updateplansteps/SKILL.md"
  "docs/README.md"
  "resources/README.md"
)

if [[ -f "VMSetup.md" ]]; then
  FILES+=("VMSetup.md")
fi

if [[ -f "vm/README.md" ]]; then
  FILES+=("vm/README.md" "vm/TMUX-CHEATSHEET.md" "vm/scripts/sync-placeholder-folder.sh")
fi

read -r -p "Enter the absolute repo path to use in the template files: " TARGET_PATH

if [[ -z "${TARGET_PATH}" ]]; then
  echo "No path provided." >&2
  exit 1
fi

TARGET_PATH="${TARGET_PATH%/}"

for file in "${FILES[@]}"; do
  [[ -f "${file}" ]] || continue
  perl -0pi -e "s|\Q${PLACEHOLDER}\E|${TARGET_PATH}|g; s|\Q${LEGACY_PATH}\E|${TARGET_PATH}|g; s|\Q${LEGACY_RUNTIME_PATH}\E|${TARGET_PATH}|g" "${file}"
done

echo "Updated template path references to: ${TARGET_PATH}"
