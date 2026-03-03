---
Title: RTK Async Thunk Skeleton
Description: Basic createAsyncThunk and extraReducers builder pattern.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - thunk
  - createasyncthunk
  - extrareducers
  - async
---

```txt
import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';

export const fetchTodos = createAsyncThunk('todos/fetchTodos', async () => {
  const response = await fetch('/api/todos');
  return (await response.json()) as Todo[];
});

const todosSlice = createSlice({
  name: 'todos',
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addCase(fetchTodos.pending, (state) => {
        state.status = 'loading';
      })
      .addCase(fetchTodos.fulfilled, (state, action) => {
        state.status = 'succeeded';
        state.items = action.payload;
      })
      .addCase(fetchTodos.rejected, (state) => {
        state.status = 'failed';
      });
  },
});
```
