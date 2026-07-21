---
Title: Vitest Describe and It Structure
Description: How to structure tests with describe and it blocks, including nested scenarios.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
import { describe, it, expect, beforeEach } from "vitest";

// Basic grouping
describe("formatDate", () => {
  it("formats a valid timestamp", () => {
    expect(formatDate(1700000000000)).toBe("2023-11-14");
  });

  it("returns empty string for null", () => {
    expect(formatDate(null)).toBe("");
  });
});

// Nested describe for scenarios
describe("ReportList", () => {
  describe("when data is loading", () => {
    it("shows a spinner", () => {});
  });

  describe("when data is loaded", () => {
    beforeEach(() => {
      // setup scoped to this describe block only
    });

    it("renders a row for each report", () => {});
    it("shows the file name", () => {});
  });
});
```
