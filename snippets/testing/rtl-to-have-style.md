---
Title: RTL To Have Style
Description: Assert inline or computed styles with toHaveStyle in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
  - style
  - matcher
  - jest-dom
---

```typescript
expect(screen.getByText(/warning/i)).toHaveStyle({
  backgroundColor: "rgb(255, 0, 0)",
  color: "white",
});
```
