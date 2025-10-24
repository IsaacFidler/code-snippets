---
Title: Search File Contents with ripgrep
Description: Fast text search in files with smart case and hidden files included
Tags:
  - cli
  - search
  - ripgrep
---

```bash
# Search for text in all files (smart case - lowercase = case-insensitive)
rg "useState"

# Search with regex
rg "function.*test"

# Search only in specific file types
rg "TODO" --type ts

# Search and show context (3 lines before and after)
rg "error" -A 3 -B 3

# Search for exact case match
rg "ERROR" --case-sensitive
```
