---
Title: Hex Color Test
Description: Check whether a string is a 3-digit or 6-digit hex color.
Tags:
  - regex
  - javascript
---

```javascript
const isHexColor = (value) =>
  /^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{6})$/.test(value);
```
