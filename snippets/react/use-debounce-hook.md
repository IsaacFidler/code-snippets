---
Title: useDebounce Hook
Description: Reusable debounce hook for delaying value updates (e.g., search inputs)
Tags:
  - react
  - hooks
  - debounce
  - performance
---

```txt
import { useState, useEffect, useRef } from 'react';

function useDebounce<T>(value: T, delay: number = 500): T {
  const [debouncedValue, setDebouncedValue] = useState<T>(value);
  const timeoutRef = useRef<number | null>(null);

  useEffect(() => {
    window.clearTimeout(timeoutRef.current || 0);

    timeoutRef.current = window.setTimeout(() => {
      setDebouncedValue(value);
    }, delay);

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
