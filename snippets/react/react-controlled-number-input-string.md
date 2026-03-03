---
Title: React Controlled Number Input (String)
Description: Number input using string state to preserve empty input values.
Tags:
  - react
  - jsx
  - html
  - forms
  - input
  - number
  - onchange
  - controlled-component
---

```txt
import { useState } from 'react';

const [age, setAge] = useState('');

<input
  type="number"
  value={age}
  onChange={(e) => setAge(e.target.value)}
  min="0"
  step="1"
/>
```
