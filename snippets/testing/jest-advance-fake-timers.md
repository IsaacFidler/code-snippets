---
Title: Jest Advance Fake Timers
Description: Advance fake timers in a React Testing Library test when the component uses setTimeout.
Tags:
  - jest
  - testing
  - react-testing-library
  - rtl
  - typescript
  - timers
  - async
---

```typescript
jest.useFakeTimers();

render(<MyComponent />);

act(() => {
  jest.advanceTimersByTime(2000);
});

expect(await screen.findByText(/expected text/i)).toBeInTheDocument();

jest.useRealTimers();
```
