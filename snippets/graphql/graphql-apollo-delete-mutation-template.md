---
Title: Apollo Delete Mutation Template
Description: Code snippet for Apollo Delete Mutation Template.
Tags:
  - graphql
  - apollo
  - mutation
  - delete
  - template
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
