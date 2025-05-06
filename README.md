# diffview.nvim

Fork of [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim).

Patches:

- fix for `cygwin` based `git` (`MSYS2`, `mingw`);

### How to merge

```sh
git fetch upstream

git switch update-readme
git merge upstream/main

git switch feat-msys2-support
git merge upstream/main

git switch main
git merge update-readme feat-msys2-support

git push --all
```
