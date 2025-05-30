#!/usr/bin/env bash

set -e

git fetch upstream

git switch update-readme
git merge upstream/main

git switch feat-msys2-support
git merge upstream/main

git switch main
git merge update-readme feat-msys2-support

git push --all
