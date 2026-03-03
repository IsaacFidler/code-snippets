---
Title: RTL Fill Input And Click Button
Description: Find an input by label, update its value, and click a button in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
  - input
  - forms
  - user-event
---

```typescript
const user = userEvent.setup();

const input = screen.getByLabelText(/pages read/i);

await user.clear(input);
await user.type(input, "12");

expect(input).toHaveValue(12);

await user.click(screen.getByRole("button", { name: /log pages read/i }));
```
