---
Title: RTL Wait For Text With Timeout
Description: Wait for text to be present using waitFor with a custom timeout in React Testing Library.
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
await waitFor(
  () => expect(screen.getByText(/expected text/i)).toBeInTheDocument(),
  { timeout: 3000 },
);
```
