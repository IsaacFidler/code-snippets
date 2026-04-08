---
Title: Alphanumeric Only Test
Description: Check whether a string contains only letters and numbers.
Tags:
  - regex
  - javascript
---

```javascript
const isAlphaNumericOnly = (value) => /^[A-Za-z0-9]+$/.test(value);
```
