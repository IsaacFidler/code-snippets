---
Title: RTK Simple Selector
Description: Basic selector for reading a value from Redux state.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - selector
  - rootstate
---

```txt
import type { RootState } from '../../app/store';

export const selectCount = (state: RootState) => state.counter.value;
```
