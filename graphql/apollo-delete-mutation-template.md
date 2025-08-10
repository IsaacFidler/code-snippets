---
Title: Apollo Delete Mutation Template
Description: Code snippet for Apollo Delete Mutation Template.
Tags:
  - TODO: add tags
---

```txt
const DELETE_SOMETHING = gql`
  mutation deleteSomething($id: Int!) {
    deleteSomething(id: $id) {
      id
      success
    }
  }
`;

// Usage
const [deleteSomething] = useMutation(DELETE_SOMETHING, {
  refetchQueries: [{ query: GET_SOMETHINGS }],
});

const handleDelete = async (id: number) => {
  await deleteSomething({
    variables: { id }
  });
};
```
