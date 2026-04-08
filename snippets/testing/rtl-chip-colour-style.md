---
Title: React Testing Library Chip Colour
Description: Code snippet for React Testing Library Chip Colour.
Tags:
  - testing
---

```typescrip
    const chipLabel = screen.getByText('FAILED')
    const chip = chipLabel.closest('.MuiChip-root')
    expect(chip).toHaveStyle({ backgroundColor: 'rgb(211, 47, 47)' })
```
