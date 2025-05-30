#!/usr/bin/env bash

set -e

git fetch upstream

git switch update-readme
git merge --no-edit upstream/main

git switch feat-msys2-support
git merge --no-edit upstream/main

git switch main
git merge --no-edit update-readme feat-msys2-support

git push --all
