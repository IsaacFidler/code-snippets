---
Title: Number Input Guard
Description: Code snippet for Number Input Guard.
Tags:
  - javascript
---

```bash
if (typeof value === "number" || value == null || Number.isNaN(value) || value < 0) {
  return
}
```
