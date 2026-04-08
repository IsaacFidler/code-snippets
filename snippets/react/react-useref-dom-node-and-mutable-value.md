---
Title: React useRef DOM Node And Mutable Value
Description: Store a DOM ref and a mutable value that persists across renders without causing re-renders.
Tags:
  - react
  - hooks
  - useref
  - refs
  - dom
  - mutable
---

```tsx
import { useRef, useState } from "react";

export function SearchBox() {
  const inputRef = useRef<HTMLInputElement | null>(null);
  const submitCountRef = useRef(0);
  const [submitCount, setSubmitCount] = useState(0);

  function handleSubmit() {
    submitCountRef.current += 1;
    setSubmitCount(submitCountRef.current);
    inputRef.current?.focus();
  }

  return (
    <>
      <input ref={inputRef} placeholder="Search..." />
      <button onClick={handleSubmit}>Submit</button>
      <p>Submitted {submitCount} times</p>
    </>
  );
}
```
