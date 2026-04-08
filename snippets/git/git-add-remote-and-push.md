---
Title: Add Remote and Push
Description: Connect local repo to GitHub and push branches
Tags:
  - git
  - github
  - remote
---

```txt
# Check existing remotes
git remote -v

# Add remote (HTTPS)
git remote add origin https://github.com/USERNAME/REPO.git

# Add remote (SSH)
git remote add origin git@github.com:USERNAME/REPO.git

# Push with tracking (-u sets upstream)
git push -u origin main
git push -u origin feature-branch

# If remote exists and you want to change it
git remote remove origin
git remote add origin NEW_URL
```
