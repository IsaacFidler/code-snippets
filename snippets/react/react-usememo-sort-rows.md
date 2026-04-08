---
Title: React useMemo Sort Rows
Description: Memoized table sorting with a reusable compare helper and asc/desc order.
Tags:
  - react
  - typescript
  - usememo
  - sorting
  - table
  - compare
  - comparator
  - derived-state
  - rows
---

```tsx
// rowData: the unsorted rows array
// order: 'asc' | 'desc'
// orderBy: the current key to sort by, e.g. 'name' or 'amount'
const compareBy = (a: string | number, b: string | number) => {
  if (a === b) return 0;
  return a > b ? 1 : -1;
};

const sortedRows = useMemo(() => {
  return [...rowData].sort((a, b) => {
    const comparison = compareBy(a[orderBy], b[orderBy]);
    return order === "asc" ? comparison : -comparison;
  });
}, [rowData, order, orderBy]);
```
