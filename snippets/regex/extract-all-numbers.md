---
Title: Extract All Numbers
Description: Extract every number-like segment from a string.
Tags:
  - regex
  - javascript
---

```javascript
const numbers = value.match(/\d+(?:\.\d+)?/g) ?? [];
```
