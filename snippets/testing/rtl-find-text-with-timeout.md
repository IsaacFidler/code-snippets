---
Title: RTL Find Text With Timeout
Description: Wait for text to appear with a custom timeout in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - async
  - jest
  - typescript
  - timeout
---

```typescript
expect(
  await screen.findByText(/expected text/i, {}, { timeout: 3000 }),
).toBeInTheDocument();
```
