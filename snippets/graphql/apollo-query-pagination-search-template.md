---
Title: Apollo Query Pagination Search Template
Description: Code snippet for Apollo Query Pagination Search Template.
Tags:
  - TODO: add tags
---

```txt
const GET_ITEMS = gql`
  query GetItems($limit: Int, $offset: Int, $search: String) {
    items(limit: $limit, offset: $offset, search: $search) {
      id
      name
    }
  }
`;

const { data } = useQuery<QueryResponse>(GET_ITEMS, {
  variables: {
    limit: 10,
    offset: 0,
    search: "search term"
  },
};
```
