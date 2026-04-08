---
Title: Generic API Response Types
Description: Reusable generic types for API responses - PaginatedResponse<T> and ApiResponse<T> pattern for monorepo shared packages
Tags:
  - typescript
  - generics
  - api
  - monorepo
  - shared-types
---

```typescript
// Entity types
export interface Service {
  id: number;
  name: string;
  description: string;
  owner: string;
  lifecycle: "experimental" | "production" | "deprecated";
  createdAt: string;
  updatedAt: string;
}

export interface Component {
  id: number;
  name: string;
  description: string;
  type: "service" | "website" | "library";
  createdAt: string;
  updatedAt: string;
}

// Generic paginated response - works for any entity
export interface PaginatedResponse<T> {
  data: T[];
  count: number;
}

// Generic single-item response
export interface ApiResponse<T> {
  data: T;
  message?: string;
}

// Error response
export interface ApiError {
  error: string;
  message: string;
}

// Input types using indexed access
export interface CreateServiceInput {
  name: string;
  description: string;
  owner: string;
  lifecycle: Service["lifecycle"]; // Reuses the union type
}
```

## Usage in API functions

```typescript
// client/src/api/services.ts
import { Service, Component, PaginatedResponse } from "@dev-portal/shared";

export const getServices = async (): Promise<PaginatedResponse<Service>> => {
  const response = await fetch("/api/services");
  return response.json();
};

export const getComponents = async (): Promise<
  PaginatedResponse<Component>
> => {
  const response = await fetch("/api/components");
  return response.json();
};
```
