---
Title: Apollo Query Template With Variable
Description: Code snippet for Query Template With Variable.
Tags:
  - TODO: add tags
---

```txt
// 1. Define TypeScript interfaces
interface YourDataType {
  id: string;
  name: string;
  // ... other fields
}

interface QueryResponse {
  yourQueryName: YourDataType;
}

// 2. Define the GraphQL query
const YOUR_QUERY = gql`
  query YourQueryName($id: Int!) {
    yourQueryName(id: $id) {
      id
      name
      # ... other fields
    }
  }
`;
```
