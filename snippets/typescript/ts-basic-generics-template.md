---
Title: Basic Generics Template
Description: Code snippet for Basic Generics Template.
Tags:
  - typescript
  - generics
  - typing
  - template
---

```txt
// Function with generic type
function identity<T>(arg: T): T {
  return arg;
}

// Usage
const result = identity<string>("hello");
const result2 = identity(123); // TypeScript infers number
```
