---
Title: New Component
Description: Code snippet for New Component.
Tags:
  - TODO: add tags
---

```txt
import React from 'react';
import { Box } from '@mui/material';
import styled from 'styled-components';

const Container = styled(Box)``;

interface CustomComponentProps {
  children: React.ReactNode;
}

export const Button: React.FC<CustomComponentProps> = ({
  children,
  ...props
}) => {
  return <Container {...props}>{children}</Container>;
};

```
