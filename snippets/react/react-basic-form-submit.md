---
Title: React Basic Form Submit
Description: Basic form with onSubmit and preventDefault.
Tags:
  - react
  - jsx
  - html
  - forms
  - form
  - onsubmit
  - preventdefault
  - typescript
---

```txt
import { FormEvent } from 'react';

const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
  e.preventDefault();
  // submit logic
};

<form onSubmit={handleSubmit}>
  <button type="submit">Submit</button>
</form>
```
