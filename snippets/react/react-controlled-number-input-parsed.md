---
Title: React Controlled Number Input (Parsed)
Description: Number input that stores a parsed number while still allowing an empty value.
Tags:
  - react
  - jsx
  - html
  - forms
  - input
  - number
  - onchange
  - controlled-component
  - typescript
---

```txt
import { useState } from 'react';

const [quantity, setQuantity] = useState<number | ''>('');

<input
  type="number"
  value={quantity}
  onChange={(e) =>
    setQuantity(e.target.value === '' ? '' : Number(e.target.value))
  }
  min="1"
  step="1"
/>
```
