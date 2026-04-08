---
Title: Monorepo Fix Script
Description: Lint, format, and type-check command for yarn workspaces monorepo
Tags:
  - eslint
  - prettier
  - typescript
  - monorepo
---

```txt
"fix": "eslint --fix client server && prettier --write \"**/*.{ts,tsx,js,json}\" && tsc --noEmit"
```
