---
Title: List All Tables
Description: Code snippet for List All Tables.
Tags:
  - sql
  - database
  - schema
  - tables
  - query
---

```txt
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';
```
