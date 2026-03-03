---
Title: Letters And Spaces Only Test
Description: Check whether a string contains only letters and spaces.
Tags:
  - regex
  - javascript
---

```javascript
const isLettersAndSpacesOnly = (value) => /^[A-Za-z\s]+$/.test(value.trim());
```
