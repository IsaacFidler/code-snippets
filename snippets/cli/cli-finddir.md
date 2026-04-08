---
Title: Find Directory Path to Clipboard
Description: Fuzzy find a directory and copy its full path to clipboard
Tags:
  - cli
  - fzf
  - directory-search
  - clipboard
---

```bash
# Find directory and copy path to clipboard
finddir components

# Workflow:
# 1. Searches for "components" in all directories
# 2. Fuzzy finder shows matches with tree preview
# 3. Press Enter
# 4. Full path copied to clipboard! 📋
# 5. Paste with Cmd+V

# Then use the path however you want:
cd [Cmd+V]
cp -r [Cmd+V] .
tree [Cmd+V]
```
