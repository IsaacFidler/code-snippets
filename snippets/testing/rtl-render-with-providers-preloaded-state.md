---
Title: RTL Render With Providers Preloaded State
Description: Render a React component with a preloaded Redux state in React Testing Library.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - redux
  - redux-toolkit
  - providers
  - preloadedstate
  - typescript
---

```typescript
renderWithProviders(<MyComponent />, {
  preloadedState: {
    mySlice: {
      items: [{ id: 1, name: 'Example' }],
      isLoading: false,
    },
  },
});
```
