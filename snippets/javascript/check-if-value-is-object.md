---
Title: Check If Value Is Object
Description: Code snippet for Check If Value Is Object.
Tags:
  - javascript
---

```javascrip
  if (typeof error === 'object' && error !== null && 'message' in error) {
    return error.message as string;
  }
```
