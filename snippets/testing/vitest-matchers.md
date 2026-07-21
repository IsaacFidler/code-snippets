---
Title: Vitest Matchers Reference
Description: Quick reference for common Vitest matchers — truthiness, numbers, strings, arrays, errors, async, and mocks.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
// Equality
expect(x).toBe(y); // strict (===) — primitives only
expect(x).toEqual(y); // deep equality — objects/arrays
expect(x).not.toBe(y); // negation works on any matcher

// Truthiness
expect(x).toBeTruthy();
expect(x).toBeFalsy();
expect(x).toBeNull();
expect(x).toBeUndefined();
expect(x).toBeDefined();

// Numbers
expect(x).toBeGreaterThan(5);
expect(x).toBeLessThan(10);
expect(x).toBeCloseTo(3.14, 2); // floating point (2 decimal places)

// Strings
expect(str).toContain("hello"); // substring
expect(str).toMatch(/^hello/); // regex

// Arrays / objects
expect(arr).toContain(item); // contains item (===)
expect(arr).toContainEqual({ id: 1 }); // contains item (deep equal)
expect(arr).toHaveLength(3);
expect(obj).toHaveProperty("name", "Isaac");

// Errors
expect(fn).toThrow();
expect(fn).toThrow("error message");
expect(fn).toThrow(TypeError);

// Async
await expect(promise).resolves.toEqual({ data: [] });
await expect(promise).rejects.toThrow("Network error");

// Mocks
expect(mockFn).toHaveBeenCalled();
expect(mockFn).toHaveBeenCalledTimes(2);
expect(mockFn).toHaveBeenCalledWith("arg1", "arg2");
expect(mockFn).toHaveBeenLastCalledWith("arg1");
```
