---
Title: Vitest Test Modifiers — only, skip, todo
Description: Focus, skip, or placeholder individual tests or describe blocks during development.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
// Run only this test — all others in the file are skipped
// ⚠️ Do not commit .only — silently skips other tests
it.only("focused test", () => {});

// Skip this test — shows as skipped in output, not failed
it.skip("broken or WIP test", () => {});

// Placeholder — shows as todo in output, reminds you to write it
it.todo("should handle empty state");

// All modifiers work on describe blocks too
describe.only("focused group", () => {});
describe.skip("skipped group", () => {});
```
