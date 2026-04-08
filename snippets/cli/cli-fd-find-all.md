---
Title: Find All Files Including Hidden
Description: Find all files and directories including hidden and gitignored files
Tags:
  - cli
  - file-search
  - fd
---

```bash
# Find everything including hidden files and gitignored files
fda

# Find hidden config files
fda ".env"

# Find in node_modules (normally ignored)
fda "react"
```
