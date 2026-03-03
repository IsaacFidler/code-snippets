---
Title: RTK Typed Hooks
Description: Typed useAppDispatch and useAppSelector hooks for Redux Toolkit.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - hooks
  - useappdispatch
  - useappselector
  - react-redux
---

```txt
import { TypedUseSelectorHook, useDispatch, useSelector } from 'react-redux';
import type { RootState, AppDispatch } from './store';

export const useAppDispatch = () => useDispatch<AppDispatch>();
export const useAppSelector: TypedUseSelectorHook<RootState> = useSelector;
```
