---
Title: Remove Array Object Duplicates
Description: Code snippet for Remove Array Object Duplicates.
Tags:
  - typescript
---

```typescript
const dedupe = <T>(arr: T[], key: keyof T): T[] => {
  return [...new Map(arr.map((item) => [item[key], item])).values()];
};
```
