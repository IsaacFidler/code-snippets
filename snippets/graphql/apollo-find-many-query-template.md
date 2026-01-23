---
Title: Apollo Find Many Query Template
Description: Code snippet for Apollo Find Many Query Template.
Tags:
  - TODO: add tags
---

```txt
// 1. Define types
interface Item {
  id: string;
  name: string;
  // ... other fields
}

interface QueryResponse {
  items: Item[];  // Note: array of items
}

// 2. Query for multiple items
const GET_ITEMS = gql`
  query GetItems {
    items {
      id
      name
      # ... other fields
    }
  }
`;
```
