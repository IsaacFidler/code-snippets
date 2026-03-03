---
Title: RTL User Click
Description: Set up userEvent and click an element in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - user-event
  - typescript
---

```typescript
const user = userEvent.setup();
await user.click(screen.getByRole("button", { name: /submit/i }));
```
