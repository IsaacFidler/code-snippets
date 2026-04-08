---
Title: RTK Store Subscribe
Description: Subscribe to Redux Toolkit store updates and unsubscribe when no longer needed.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - store
  - subscribe
  - unsubscribe
  - listener
---

```ts
const unsubscribe = store.subscribe(() => {
  const state = store.getState();
  console.log("Store updated:", state);
});

// Later, when you no longer need updates:
unsubscribe();
```
