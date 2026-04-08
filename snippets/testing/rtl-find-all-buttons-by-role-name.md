---
Title: RTL Find All Buttons By Role Name
Description: Find multiple matching buttons by accessible role and name in React Testing Library, then click the first match.
Tags:
  - react-testing-library
  - rtl
  - testing-library
  - react
  - testing
  - typescript
  - findallbyrole
  - getallbyrole
  - button
  - query
---

```typescript
const actionButtons = await screen.findAllByRole("button", {
  name: /view details/i,
});

await user.click(actionButtons[0]);
```
