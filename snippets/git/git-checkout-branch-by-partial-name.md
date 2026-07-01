---
Title: Checkout Branch by Partial Name
Description: Find and switch to a local branch when you only remember part of its name
Tags:
  - git
  - branch
  - grep
  - partial
  - fuzzy
---

```zsh
# Search local branches for a keyword
git branch | grep -i settings

# Glob-style search (no grep needed)
git branch --list '*settings*'

# Fuzzy-pick and check out in one step (requires fzf)
git checkout $(git branch | fzf)
```
