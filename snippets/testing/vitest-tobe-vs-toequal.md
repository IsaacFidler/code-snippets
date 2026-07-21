---
Title: Vitest toBe vs toEqual
Description: toBe uses strict equality (===) for primitives. toEqual does deep equality for objects and arrays.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
// toBe — strict equality (===), use for primitives only
expect(2 + 2).toBe(4);
expect("hello").toBe("hello");
expect(result).toBe(true);

// toEqual — deep equality, use for objects and arrays
expect({ a: 1, b: 2 }).toEqual({ a: 1, b: 2 });
expect([1, 2, 3]).toEqual([1, 2, 3]);
expect(result).toEqual({ id: "123", name: "file.csv" });

// ❌ Don't use toBe for objects — fails even if contents match
// expect({ a: 1 }).toBe({ a: 1 }) → FAILS (different references)
```
