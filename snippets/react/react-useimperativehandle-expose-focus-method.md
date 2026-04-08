---
Title: React useImperativeHandle Expose Focus Method
Description: Expose a small imperative API from a child component through a ref.
Tags:
  - react
  - hooks
  - useimperativehandle
  - refs
  - focus
---

```tsx
import { forwardRef, useImperativeHandle, useRef } from "react";

type SearchInputHandle = {
  focus: () => void;
  clear: () => void;
};

const SearchInput = forwardRef<SearchInputHandle, { placeholder?: string }>(
  function SearchInput({ placeholder = "Search" }, ref) {
    const inputRef = useRef<HTMLInputElement | null>(null);

    useImperativeHandle(ref, () => ({
      focus: () => inputRef.current?.focus(),
      clear: () => {
        if (inputRef.current) {
          inputRef.current.value = "";
        }
      },
    }));

    return <input ref={inputRef} placeholder={placeholder} />;
  },
);

export function SearchToolbar() {
  const searchInputRef = useRef<SearchInputHandle | null>(null);

  return (
    <>
      <SearchInput ref={searchInputRef} />
      <button onClick={() => searchInputRef.current?.focus()}>
        Focus search
      </button>
      <button onClick={() => searchInputRef.current?.clear()}>
        Clear search
      </button>
    </>
  );
}
```
