---
Title: Apollo Client UseQuery Variables Graphql
Description: Code snippet for Apollo Client UseQuery Variables Graphql.
Tags:
  - graphql
  - apollo
  - react
  - query
  - usequery
---

```txt
  const { data, error, loading } = useQuery(GET_EVENT, {
    variables: { id: Number(id) },
    skip: !id,
  });
```
