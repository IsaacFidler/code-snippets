---
Title: Fuzzy-Pick and Checkout a Branch
Description: Interactively fuzzy search local branches with fzf and check one out
Tags:
  - git
  - branch
  - fzf
  - fuzzy
  - checkout
---

```zsh
git checkout $(git branch | fzf)
```
