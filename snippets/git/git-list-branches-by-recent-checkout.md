---
Title: List Branches by Most Recent Checkout
Description: List local branches ordered by when they were last checked out, deduplicated, using the reflog
Tags:
  - git
  - branch
  - reflog
  - checkout
---

```zsh
git reflog show --pretty=format:'%gs' | grep -oE 'checkout: moving from .* to .*' | awk '{print $NF}' | awk '!seen[$0]++'
```
