---
Title: RTK Slice Skeleton
Description: Basic createSlice setup with initial state, reducers, and exported actions.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - slice
  - createslice
  - reducers
---

```txt
import { createSlice, PayloadAction } from '@reduxjs/toolkit';

interface CounterState {
  value: number;
}

const initialState: CounterState = {
  value: 0,
};

const counterSlice = createSlice({
  name: 'counter',
  initialState,
  reducers: {
    increment(state) {
      state.value += 1;
    },
    setCount(state, action: PayloadAction<number>) {
      state.value = action.payload;
    },
  },
});

export const { increment, setCount } = counterSlice.actions;
export default counterSlice.reducer;
```
