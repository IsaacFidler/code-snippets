---
Title: RTK Array Add Remove Reducers
Description: Common add and remove reducer patterns for array state.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - reducer
  - array
  - add
  - remove
  - slice
---

```txt
addTodo(state, action: PayloadAction<Todo>) {
  state.items.push(action.payload);
},
removeTodo(state, action: PayloadAction<string>) {
  state.items = state.items.filter((item) => item.id !== action.payload);
}
```
