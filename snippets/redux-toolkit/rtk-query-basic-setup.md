---
Title: RTK Query Basic Setup
Description: Minimal RTK Query API slice, store wiring, and generated hook usage for a reusable fetch pattern.
Tags:
  - redux
  - redux-toolkit
  - rtk
  - rtk-query
  - query
  - api
  - createapi
  - fetchbasequery
  - store
  - react
---

```tsx
import { configureStore } from "@reduxjs/toolkit";
import { createApi, fetchBaseQuery } from "@reduxjs/toolkit/query/react";

type Item = {
  id: string;
  name: string;
};

export const itemsApi = createApi({
  reducerPath: "itemsApi",
  baseQuery: fetchBaseQuery({ baseUrl: "/api" }),
  endpoints: (build) => ({
    getItems: build.query<Item[], void>({
      query: () => "items",
    }),
  }),
});

export const { useGetItemsQuery } = itemsApi;

export const store = configureStore({
  reducer: {
    [itemsApi.reducerPath]: itemsApi.reducer,
  },
  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware().concat(itemsApi.middleware),
});

export function ItemsList() {
  const { data, isLoading, error } = useGetItemsQuery();

  if (isLoading) return <p>Loading...</p>;
  if (error) return <p>Error loading items</p>;

  return <ul>{data?.map((item) => <li key={item.id}>{item.name}</li>)}</ul>;
}
```
