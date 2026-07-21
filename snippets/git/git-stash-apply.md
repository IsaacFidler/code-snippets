---
Title: Apply Stash Without Removing
Description: Apply the most recent stash but keep it in the stack. Useful for applying the same changes across multiple branches.
Tags:
  - git
  - version-control
  - stash
---

```zsh
# Apply most recent stash
git stash apply

# Apply a specific stash by index
git stash apply stash@{1}
```
