---
Title: Basic Email Test
Description: Basic regex check for common email formats.
Tags:
  - regex
  - javascript
---

```javascript
const isBasicEmail = (value) => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
```
