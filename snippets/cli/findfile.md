---
Title: Find File Path to Clipboard
Description: Fuzzy find a file and copy its full path to clipboard
Tags:
  - cli
  - fzf
  - file-search
  - clipboard
---

```bash
# Find file and copy path to clipboard
findfile Button

# Workflow:
# 1. Searches for "Button" in all files
# 2. Fuzzy finder shows matches with preview
# 3. Press Enter
# 4. Full path copied to clipboard! 📋
# 5. Paste with Cmd+V

# Then use the path however you want:
cp [Cmd+V] .
mv [Cmd+V] ./components
zd [Cmd+V]
```
