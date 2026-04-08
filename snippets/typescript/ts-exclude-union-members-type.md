---
Title: Exclude Union Members Type
Description: Remove one or more members from a union type using TypeScript Exclude.
Tags:
  - typescript
  - ts
  - utility-types
  - exclude
  - union-types
  - typing
---

```typescript
type ColumnId = "id" | "name" | "status" | "actions" | "metadata";

// Keep only sortable columns
type SortableColumnId = Exclude<ColumnId, "actions" | "metadata">;
// "id" | "name" | "status"

function sortBy(column: SortableColumnId) {
  // sorting logic
}
```

Rule of thumb: use `Exclude` on union types (string unions, number unions, etc).
