---
Title: Vitest describe.each — Parameterised Test Groups
Description: Parameterise an entire describe block to run a group of tests with different inputs.
Tags:
  - vitest
  - testing
  - typescript
---

```typescript
describe.each([
  { role: "admin", canDelete: true },
  { role: "viewer", canDelete: false },
])("user with role $role", ({ role, canDelete }) => {
  it(`should ${canDelete ? "be able" : "not be able"} to delete`, () => {
    expect(canUserDelete(role)).toBe(canDelete);
  });

  it("can always view files", () => {
    expect(canUserView(role)).toBe(true);
  });
});
```
