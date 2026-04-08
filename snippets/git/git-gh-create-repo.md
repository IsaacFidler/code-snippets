---
Title: Create GitHub Repo with gh CLI
Description: Create a new GitHub repo from existing local project
Tags:
  - git
  - github
  - gh-cli
---

```txt
# Create repo and push in one command
gh repo create REPO_NAME --private --source=. --push

# Or interactively
gh repo create

# Flags:
# --private / --public    visibility
# --source=.              use current directory
# --push                  push after creating
```
