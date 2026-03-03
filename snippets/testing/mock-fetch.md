---
Title: Mock Fetch
Description: Code snippet for Mock Fetch.
Tags:
  - testing
---

```typescript
const mockFetch = (data: unknown, ok = true, status = 200) => {
  global.fetch = jest.fn(() =>
    Promise.resolve({
      ok,
      status,
      json: () => Promise.resolve(data),
    } as Response),
  );
};
```
