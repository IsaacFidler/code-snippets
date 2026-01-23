---
Title: Find Markdown Files with Fuzzy Search
Description: Recursively find and fuzzy search markdown files, copy path to clipboard
Tags:
  - cli
  - fzf
  - fd
  - markdown
  - search
---

```bash
# Alias: fmd
fmd

# Full command
fd -t f -e md | fzf | pbcopy

# How it works:
# 1. fd finds all .md files recursively from current directory
# 2. fzf provides fuzzy search interface
# 3. pbcopy copies selected file path to clipboard

# Usage:
# - Type 'fmd' in any directory
# - Start typing to fuzzy search markdown files
# - Use arrow keys to navigate
# - Press Enter to copy full path to clipboard
# - Cmd+V to paste the path

# Great for: "I need to reference a markdown file path but don't want to type it out"
```
