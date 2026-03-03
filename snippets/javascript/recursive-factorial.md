---
Title: Recursive Factorial
Description: Code snippet for Recursive Factorial.
Tags:
  - javascript
---

```javascript
function factorial(n: number): number {
  // TODO: Implement this function
  if (n === 0) {
    return 1;
  }
  return n * factorial(n - 1);
}
```
