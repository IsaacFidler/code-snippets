---
Title: Styled Component Template
Description: Code snippet for Styled Component Template.
Tags:
  - TODO: add tags
---

```txt
// src/components/ComponentName/styles.ts
import styled from 'styled-components';

interface StyledProps {
  variant?: 'primary' | 'secondary';
  disabled?: boolean;
}

export const Container = styled.div<StyledProps>`
  padding: ${({ theme }) => theme.spacing.lg};
  background-color: ${({ variant, theme }) =>
    variant === 'primary' ? theme.colors.primary : theme.colors.surface
  };
  border-radius: ${({ theme }) => theme.borderRadius.md};
  color: ${({ theme }) => theme.colors.text.primary};

  /* MUI Class Overrides */
  && .MuiTextField-root {
    margin-bottom: ${({ theme }) => theme.spacing.md};
  }

  && .MuiButton-root {
    background-color: ${({ theme }) => theme.colors.primary};
    color: ${({ theme }) => theme.colors.text.inverse};

    &:hover {
      background-color: ${({ theme }) => theme.colors.primaryHover};
    }
  }

  && .MuiDialogContent-root {
    padding: ${({ theme }) => theme.spacing.lg};
    background-color: ${({ theme }) => theme.colors.background};
  }

  && .MuiDialogTitle-root {
    background-color: ${({ theme }) => theme.colors.primary};
    color: ${({ theme }) => theme.colors.text.inverse};
  }

  && .MuiDialog-paper {
    background-color: ${({ theme }) => theme.colors.background};
    border-radius: ${({ theme }) => theme.borderRadius.lg};
  }

  ${({ disabled, theme }) => disabled && `
    opacity: 0.6;
    cursor: not-allowed;
    background-color: ${theme.colors.border};
  `}
`;
```
