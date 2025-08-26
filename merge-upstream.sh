#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo -e "⚠  Error ($0:$LINENO): $(sed -n "${LINENO}p" "$0" 2> /dev/null | grep -oE "\S.*\S|\S" || true)" >&2; return 3 2> /dev/null || exit 3' ERR

git fetch upstream

git switch update-readme
git merge --no-edit upstream/main

git switch feat-msys2-support
git merge --no-edit upstream/main

git switch main
git reset --hard $(git rev-list --max-parents=0 HEAD)
git merge --no-edit upstream/main

# git merge --no-edit update-readme feat-msys2-support
git merge --no-edit update-readme
git merge --no-edit feat-msys2-support

git push --all --force
