---
Title: React Testing Library Template
Description: Code snippet for React Testing Library Template.
Tags:
  - TODO: add tags
---

```txt
// ExampleComponent.test.tsx
import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import ExampleComponent from './ExampleComponent';

describe('ExampleComponent', () => {
  it('renders the component and handles user interaction', async () => {
    render(<ExampleComponent />);

    // Check initial render
    expect(screen.getByText(/hello world/i)).toBeInTheDocument();

    // Simulate a click
    await userEvent.click(screen.getByRole('button', { name: /click me/i }));

    // Assert post-click behavior
    expect(screen.getByText(/clicked/i)).toBeInTheDocument();
  });
});
```
