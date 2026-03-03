#!/usr/bin/env bash
# Reset this repo to commit 033df816a5fb54130f27119b2b4a3e5f52972b53
# WARNING: This is destructive — uncommitted changes and commits after the target will be lost.

set -e
TARGET="bbdb0a9fd4b5bab725ffdf41870de9d26ba14ee0"
REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

echo "Target commit: $TARGET"
echo "This will run: git reset --hard $TARGET"
echo "All uncommitted changes and commits after this one will be lost."
  git reset --hard "$TARGET"
  echo "Done. Repository is now at $TARGET"
