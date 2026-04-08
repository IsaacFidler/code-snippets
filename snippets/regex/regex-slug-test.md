---
Title: Slug Test
Description: Check whether a string is a lowercase kebab-case slug.
Tags:
  - regex
  - javascript
---

```javascript
const isSlug = (value) => /^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(value);
```
