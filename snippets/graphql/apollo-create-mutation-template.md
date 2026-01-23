---
Title: Apollo Create Mutation Template
Description: Code snippet for Apollo Create Mutation Template.
Tags:
  - TODO: add tags
---

```txt
// Basic mutation pattern
const CREATE_SOMETHING = gql`
  mutation createSomething($input: CreateSomethingInput!) {
    createSomething(createSomethingInput: $input) {
      id
      name
      # Return fields you need
    }
  }
`;

// Usage
const [createSomething] = useMutation(CREATE_SOMETHING, {
  refetchQueries: [{ query: GET_SOMETHINGS }],
});

const handleSubmit = async (formData) => {
  await createSomething({
    variables: { input: formData }
  });
};
```
