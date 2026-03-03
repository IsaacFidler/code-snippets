---
Title: UUID V4 Test
Description: Check whether a string matches the UUID v4 format.
Tags:
  - regex
  - javascript
---

```javascript
const isUuidV4 = (value) =>
  /^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i.test(
    value,
  );
```
