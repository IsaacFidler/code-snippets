---
Title: Find And Replace
Description: Find files containing "data-uploads" and replace
Tags:
  - TODO: add tags
---

```txt
grep -rl "data-uploads" . | xargs sed -i '' 's/data-uploads/data/g'
```
