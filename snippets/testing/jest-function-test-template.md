---
Title: Jest Function Test Template
Description: Basic Jest test structure with AAA pattern for unit testing functions
Tags:
  - jest
  - testing
  - unit-test
  - typescript
---

```typescript
// functionName.test.js

import { functionName } from './functionName';

describe('functionName', () => {
  it('should return the expected result for a given input', () => {
    // Arrange
    const input = /* your test input */;

    // Act
    const result = functionName(input);

    // Assert
    expect(result).toBe(/* expected output */);
  });

  // Optional: more test cases
  it('should handle edge cases', () => {
    const input = /* edge case input */;
    const result = functionName(input);
    expect(result).toBe(/* expected output */);
  });
});
```
