---
Title: Quick Launch Zed Editor
Description: Open Zed editor quickly from terminal
Tags:
  - cli
  - editor
  - zed
---

```bash
# Open current directory in Zed
zd .

# Open specific file
zd file.ts

# Open specific directory
zd ~/dev-projects/farmer-agent-dir

# Open multiple files
zd file1.ts file2.ts

# Zed is set as default editor for:
# - Git commits (git commit opens in Zed)
# - Git diffs (EDITOR variable)
# - Terminal editors (VISUAL variable)
```
