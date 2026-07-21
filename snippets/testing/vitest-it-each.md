---
Title: Vitest it.each — Parameterised Tests
Description: Run the same test with multiple inputs using it.each with array of arrays or array of objects.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
// Array of arrays — use %i (number), %s (string), %p (pretty print) in label
it.each([
  [1, 1, 2],
  [2, 3, 5],
  [0, 0, 0],
])("adds %i and %i to get %i", (a, b, expected) => {
  expect(add(a, b)).toBe(expected);
});

// Array of objects — more readable, reference by name in label
it.each([
  { input: "hello", expected: "HELLO" },
  { input: "world", expected: "WORLD" },
  { input: "", expected: "" },
])('uppercases "$input" to "$expected"', ({ input, expected }) => {
  expect(uppercase(input)).toBe(expected);
});
```
