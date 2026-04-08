---
Title: Local Storage Save and Load JSON
Description: Save structured data to localStorage and load it back safely with JSON parse guards.
Tags:
  - javascript
  - browser
  - local-storage
  - storage
  - json
  - persistence
  - save
  - load
---

```js
const STORAGE_KEY = "saved-items";

export const saveToLocalStorage = (value) => {
  // localStorage only stores strings, so objects/arrays need JSON.stringify
  localStorage.setItem(STORAGE_KEY, JSON.stringify(value));
};

export const loadFromLocalStorage = () => {
  // getItem returns null if the key does not exist yet
  const storedValue = localStorage.getItem(STORAGE_KEY);

  if (!storedValue) {
    return [];
  }

  try {
    return JSON.parse(storedValue);
  } catch {
    // Fallback if storage was corrupted or shape changed
    return [];
  }
};

// What to remember:
// 1. localStorage is browser-only, so guard it in SSR/server code.
// 2. Save objects/arrays with JSON.stringify.
// 3. Read with getItem, then JSON.parse.
// 4. Handle null and parse errors.
// 5. Remove with localStorage.removeItem(STORAGE_KEY) when needed.
```
