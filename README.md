# diffview.nvim

Fork of [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)

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
