---
Title: React Controlled Text Input
Description: Controlled text input with useState and onChange.
Tags:
  - react
  - jsx
  - html
  - forms
  - input
  - text
  - onchange
  - controlled-component
---

```txt
import { useState } from 'react';

const [name, setName] = useState('');

<input
  type="text"
  value={name}
  onChange={(e) => setName(e.target.value)}
  placeholder="Enter name"
/>
```
