---
Title: RTL Click Button And Wait For Text
Description: Find a button by text, click it, and wait for updated text to appear in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
  - button
  - async
  - user-event
---

```typescript
const user = userEvent.setup();

await user.click(screen.getByRole("button", { name: /submit/i }));

expect(await screen.findByText(/success/i)).toBeInTheDocument();
```
