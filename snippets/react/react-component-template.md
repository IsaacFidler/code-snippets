---
Title: React Component Template
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
