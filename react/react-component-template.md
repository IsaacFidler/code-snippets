---
Title: New Component
Description: Code snippet for New Component.
Tags:
  - React, Functional
---

```txt
import React from 'react';
import styled from 'styled-components';

// ---------------------------
// Types
// ---------------------------

interface CustomComponentProps {
  title: string;
  children: React.ReactNode;
}

// ---------------------------
// Styled Components
// ---------------------------
const StyledContainer = styled.div``;
const StyledTitle = styled.div``;

// ---------------------------
// Component
// ---------------------------

export const Button: React.FC<CustomComponentProps> = ({ children, title }) => {
  return (
    <StyledContainer>
      <StyledTitle>{title}</StyledTitle>
      {children}
    </StyledContainer>
  );
};

```

For the Resident Advisor interview context (React frontend + GraphQL backend in NestJS + Prisma DB), my top 5 boilerplate snippets to have ready would be:

1. React functional component with props (TypeScript)
   • Gets you started instantly when creating new UI elements.
2. Apollo Client useQuery + useMutation hooks
   • Likely to be needed if you have to connect the React side to the GraphQL API quickly.
3. NestJS GraphQL resolver (query + mutation)
   • If they have you add or modify a backend feature, this is the fastest entry point.
4. Prisma findMany / create queries with relations
   • Quick DB access, especially if you need to fetch related entities in one go.
5. React Testing Library test
   • If they throw in a “write a quick test” step, you won’t have to think about the render / screen boilerplate.
