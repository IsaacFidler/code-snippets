---
Title: RTL User Type
Description: Set up userEvent and type into an input in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - user-event
  - forms
  - typescript
---

```typescript
const user = userEvent.setup();
await user.type(screen.getByLabelText(/name/i), "Isaac");
```
