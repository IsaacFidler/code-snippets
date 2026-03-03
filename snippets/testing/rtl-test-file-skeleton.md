---
Title: RTL Test File Skeleton
Description: Starting point for a new React Testing Library test file with common imports and a basic test.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
  - template
  - test-file
---

```typescript
import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import MyComponent from './MyComponent';

describe('MyComponent', () => {
  it('renders and handles user interaction', async () => {
    const user = userEvent.setup();

    render(<MyComponent />);

    expect(screen.getByText(/hello world/i)).toBeInTheDocument();

    await user.click(screen.getByRole('button', { name: /submit/i }));

    expect(screen.getByText(/success/i)).toBeInTheDocument();
  });
});
```
