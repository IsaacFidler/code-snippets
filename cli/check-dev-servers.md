---
Title: Check Dev Servers
Description: Code snippet for Check Dev Servers.
Tags:
  - TODO: add tags
---

```txt
lsof -i -P -n | grep LISTEN | grep -E "3000|3002|4000"
```
