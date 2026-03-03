---
Title: Jest Mock Fetch
Description: Mock global fetch for testing API functions with success and error responses
Tags:
  - jest
  - testing
  - fetch
  - mocking
  - api
---

```typescript
// Setup at top of test file
const mockFetch = jest.fn();
global.fetch = mockFetch;

beforeEach(() => {
  mockFetch.mockReset();
});

// Mock successful response
mockFetch.mockResolvedValueOnce({
  ok: true,
  json: async () => ({ data: mockData }),
});

// Mock error response (non-ok status)
mockFetch.mockResolvedValueOnce({
  ok: false,
  status: 404,
  json: async () => ({ message: "Not found" }),
});

// Mock network failure
mockFetch.mockRejectedValueOnce(new Error("Network error"));
```

## With Response Body

```typescript
const mockServices = [
  { id: 1, name: "Service A" },
  { id: 2, name: "Service B" },
];

mockFetch.mockResolvedValueOnce({
  ok: true,
  json: async () => ({
    data: mockServices,
    total: 2,
    page: 1,
    limit: 10,
  }),
});
```

## Verify Call Arguments

```typescript
expect(mockFetch).toHaveBeenCalledWith("/api/services");

// With options
expect(mockFetch).toHaveBeenCalledWith("/api/services", {
  method: "POST",
  headers: { "Content-Type": "application/json" },
  body: JSON.stringify(inputData),
});

// Partial match
expect(mockFetch).toHaveBeenCalledWith(
  expect.stringContaining("/api/services"),
  expect.objectContaining({ method: "POST" }),
);
```
