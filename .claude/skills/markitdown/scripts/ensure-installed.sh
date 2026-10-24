#!/usr/bin/env bash
# Install markitdown (editable, all extras) from this repo if the CLI is missing.
set -euo pipefail

if command -v markitdown >/dev/null 2>&1; then
  markitdown --version
  exit 0
fi

repo_root="$(git -C "$(dirname "$0")" rev-parse --show-toplevel)"
pip install -q -e "${repo_root}/packages/markitdown[all]"
markitdown --version
