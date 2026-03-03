---
Title: keyof Utility Types
Description: Extract keys from interfaces for type-safe parameters like sortBy, filterBy
Tags:
  - typescript
  - keyof
  - utility-types
  - api
---

```typescript
interface Service {
  id: number;
  name: string;
  description: string;
  owner: string;
  lifecycle: "experimental" | "production" | "deprecated";
  createdAt: string;
  updatedAt: string;
}

// Extract all keys as union
type ServiceKeys = keyof Service;
// Result: "id" | "name" | "description" | "owner" | "lifecycle" | "createdAt" | "updatedAt"

// Extract specific keys only (combine Pick + keyof)
type ServiceSortBy = keyof Pick<Service, "name" | "owner" | "lifecycle">;
// Result: "name" | "owner" | "lifecycle"

// Use in API params
export interface GetServicesParams {
  page?: number;
  limit?: number;
  search?: string;
  sortBy?: ServiceSortBy;
  sortOrder?: "asc" | "desc";
}

// Indexed access - get a property's type
type Lifecycle = Service["lifecycle"];
// Result: 'experimental' | 'production' | 'deprecated'

// Reuse in other interfaces
interface CreateServiceInput {
  name: string;
  description: string;
  owner: string;
  lifecycle: Service["lifecycle"]; // Stays in sync
}
```

## Other Useful Patterns

```typescript
// Create input: omit auto-generated fields
type CreateInput = Omit<Service, "id" | "createdAt" | "updatedAt">;

// Update input: partial + omit
type UpdateInput = Partial<Omit<Service, "id" | "createdAt" | "updatedAt">>;

// Record from union
type StatusCounts = Record<Service["lifecycle"], number>;
// Result: { experimental: number; production: number; deprecated: number }
```
