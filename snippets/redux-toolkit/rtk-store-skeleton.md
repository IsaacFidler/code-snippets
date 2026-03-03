---
Title: RTK Store Skeleton
Description: Redux Toolkit store setup with configureStore, reducers, RootState, and AppDispatch.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - store
  - configurestore
  - rootstate
  - appdispatch
---

```txt
import { configureStore } from '@reduxjs/toolkit';
import counterReducer from '../features/counter/counterSlice';

export const store = configureStore({
  reducer: {
    counter: counterReducer,
  },
});

export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;
```
