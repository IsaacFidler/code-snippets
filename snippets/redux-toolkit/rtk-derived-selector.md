---
Title: RTK Derived Selector
Description: Derived selector that computes a value from Redux state.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - selector
  - derived
  - rootstate
---

```txt
import type { RootState } from '../../app/store';

export const selectIsComplete = (state: RootState) =>
  state.todos.items.every((todo) => todo.done);
```
