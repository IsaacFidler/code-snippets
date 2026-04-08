---
Title: To Title Case
Description: Code snippet for To Title Case.
Tags:
  - javascript
---

```javascript
export const toTitleCase = (value) =>
  value
    .split(" ")
    .map((word) => word[0].toUpperCase() + word.slice(1))
    .join(" ");
```
