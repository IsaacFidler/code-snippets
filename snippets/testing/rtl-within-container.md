---
Title: RTL Within Container
Description: Scope a query to a specific container with within in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
---

```typescript
const row = screen.getByRole("row", { name: /flowers/i });
expect(
  within(row).getByRole("button", { name: /view details/i }),
).toBeInTheDocument();
```
