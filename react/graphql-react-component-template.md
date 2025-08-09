---
Title: Graphql React Component Template
Description: Code snippet for Graphql React Component Template.
Tags:
  - TODO: add tags
---

```txt
// ---------------------------
// Imports
// ---------------------------
import { useQuery, gql } from '@apollo/client';
import { styled } from 'styled-components';

// ---------------------------
// Types
// ---------------------------
interface MyComponentProps {
  title: string;
}

interface Something {
  id: string;
  name: string;
}

interface GetDataResponse {
  something: Something[];
}

// ---------------------------
// GraphQL Queries
// ---------------------------
const QUERY_GET_DATA = gql`
  query GetData {
    something {
      id
      name
    }
  }
`;

// ---------------------------
// Styled Components
// ---------------------------
const StyledContainer = styled.div``;
const StyledTitle = styled.div``;

// ---------------------------
// Component
// ---------------------------
export const MyComponent: React.FC<MyComponentProps> = ({ title }) => {
  const { data, loading, error } = useQuery<GetDataResponse>(QUERY_GET_DATA);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error.message}</p>;

  return (
    <StyledContainer>
      <StyledTitle>{title}</StyledTitle>
      {data?.something?.map((item) => (
        <p key={item.id}>{item.name}</p>
      ))}
    </StyledContainer>
  );
};
```
