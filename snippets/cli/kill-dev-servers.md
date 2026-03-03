---
Title: Kill Dev Servers
Description: Code snippet for Kill Dev Servers.
Tags:
  - cli
  - shell
  - terminal
  - dev-server
  - processes
---

```txt
kill $(lsof -ti:3000,4000)
```
