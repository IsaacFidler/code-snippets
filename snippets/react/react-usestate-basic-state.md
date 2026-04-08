---
Title: React useState Basic State
Description: Manage local component state for a simple controlled form.
Tags:
  - react
  - hooks
  - usestate
  - state
  - forms
---

```tsx
import { useState } from "react";

export function SignupForm() {
  const [form, setForm] = useState({
    name: "",
    email: "",
  });

  return (
    <form>
      <input
        value={form.name}
        onChange={(event) =>
          setForm((currentForm) => ({
            ...currentForm,
            name: event.target.value,
          }))
        }
        placeholder="Name"
      />
      <input
        value={form.email}
        onChange={(event) =>
          setForm((currentForm) => ({
            ...currentForm,
            email: event.target.value,
          }))
        }
        placeholder="Email"
      />
      <pre>{JSON.stringify(form, null, 2)}</pre>
    </form>
  );
}
```
