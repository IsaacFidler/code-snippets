---
Title: Conditional Array Item
Description: Conditionally include an item in an array using spread syntax.
Tags:
  - javascript
  - js
  - array
  - conditional
  - spread
---

```txt
[...arr, ...(condition ? [newItem] : [])]
```

In a definition:

```txt
const arr = [
  item1,
  ...(condition ? [item2] : []),
  item3,
];
```
