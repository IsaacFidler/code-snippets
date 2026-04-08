---
Title: Omit Object Properties Type
Description: Remove one or more keys from an object type using TypeScript Omit.
Tags:
  - typescript
  - ts
  - utility-types
  - omit
  - object-types
  - typing
---

```typescript
interface User {
  id: string;
  email: string;
  name: string;
  role: "admin" | "member";
  createdAt: string;
  updatedAt: string;
}

// Good for create DTOs where server-generated fields should not be provided by client
type CreateUserInput = Omit<User, "id" | "createdAt" | "updatedAt">;
// {
//   email: string;
//   name: string;
//   role: "admin" | "member";
// }

// Also useful for update payloads
type UpdateUserInput = Partial<Omit<User, "id" | "createdAt" | "updatedAt">>;
```

Rule of thumb: use `Omit` on object shapes (interfaces/types with properties).
