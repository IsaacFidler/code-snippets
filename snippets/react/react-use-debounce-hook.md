---
Title: useDebounce Hook
Description: Reusable debounce hook for delaying value updates (e.g., search inputs)
Tags:
  - react
  - hooks
  - debounce
  - performance
---

```typescript
import { useState, useEffect, useRef } from "react";

function useDebounce<T>(value: T, delay: number = 500): T {
  // State consumers use after the debounce delay.
  const [debouncedValue, setDebouncedValue] = useState<T>(value);
  // Holds the currently scheduled timer id across renders.
  const timeoutRef = useRef<number | null>(null);

  useEffect(() => {
    // Cancel previous pending timer so stale values do not apply.
    window.clearTimeout(timeoutRef.current || 0);

    // Schedule latest value update.
    timeoutRef.current = window.setTimeout(() => {
      setDebouncedValue(value);
    }, delay);

    // Cleanup runs before next effect and on unmount.
    return () => window.clearTimeout(timeoutRef.current || 0);
  }, [value, delay]);

  return debouncedValue;
}

// Usage:
// const [searchTerm, setSearchTerm] = useState('');
// const debouncedSearch = useDebounce(searchTerm, 300);
//
// useEffect(() => {
//   // This only runs when user stops typing
//   fetchResults(debouncedSearch);
// }, [debouncedSearch]);
```
