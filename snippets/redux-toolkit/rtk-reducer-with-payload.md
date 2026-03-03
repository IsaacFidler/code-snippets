---
Title: RTK Reducer With Payload
Description: Reducer case using PayloadAction in createSlice.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - reducer
  - payloadaction
  - slice
---

```txt
setCount(state, action: PayloadAction<number>) {
  state.value = action.payload;
}
```
