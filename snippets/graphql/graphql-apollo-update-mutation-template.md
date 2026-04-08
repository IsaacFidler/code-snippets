---
Title: Apollo Update Mutation Template
Description: Code snippet for Apollo Update Mutation Template.
Tags:
  - graphql
  - apollo
  - mutation
  - update
  - template
---

```txt
const UPDATE_SOMETHING = gql`
  mutation updateSomething($id: Int!, $input: UpdateSomethingInput!) {
    updateSomething(id: $id, updateSomethingInput: $input) {
      id
      name
      updatedAt
    }
  }
`;

// Usage
const [updateSomething] = useMutation(UPDATE_SOMETHING);

const handleUpdate = async (id: number, formData) => {
  await updateSomething({
    variables: {
      id,
      input: formData
    }
  });
};
```
