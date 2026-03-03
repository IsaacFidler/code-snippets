---
Title: React Reducer Action Union
Description: Union type for reducer actions with and without payload.
Tags:
  - react
  - typescript
  - reducer
  - actions
  - union
  - usereducer
---

```txt
type Action =
  | { type: 'increment' }
  | { type: 'set'; payload: number };
```
