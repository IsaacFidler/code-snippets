---
Title: RTL Seed Redux Store With Dispatch
Description: Seed Redux state in a test by dispatching setup actions before rendering.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - redux
  - redux-toolkit
  - dispatch
  - store
  - typescript
---

```typescript
store.dispatch(
  addItem({
    id: 1,
    name: 'Example',
  })
);

renderWithProviders(<MyComponent />);

expect(screen.getByText(/example/i)).toBeInTheDocument();
```
