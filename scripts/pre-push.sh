#!/usr/bin/env bash
set -euo pipefail
repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$repo_dir"
git diff --check
if command -v actionlint >/dev/null 2>&1 && [ -d .github/workflows ]; then
  actionlint .github/workflows/*.yml
fi
printf 'pre-push: PASS\n'
