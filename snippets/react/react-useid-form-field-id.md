---
Title: React useId Form Field Id
Description: Generate stable accessible ids for label and input pairs.
Tags:
  - react
  - hooks
  - useid
  - accessibility
  - forms
  - ids
---

```tsx
import { useId } from "react";

export function EmailField() {
  const emailId = useId();
  const hintId = `${emailId}-hint`;

  return (
    <div>
      <label htmlFor={emailId}>Email</label>
      <input
        id={emailId}
        type="email"
        aria-describedby={hintId}
        placeholder="you@example.com"
      />
      <p id={hintId}>We will only use this for account updates.</p>
    </div>
  );
}
```
