---
Title: React useDeferredValue Deferred Search
Description: Keep an input responsive while deferring expensive filtering work.
Tags:
  - react
  - hooks
  - usedeferredvalue
  - search
  - performance
---

```tsx
import { useDeferredValue, useMemo, useState } from "react";

const allProducts = Array.from({ length: 1000 }, (_, index) => ({
  id: index,
  name: `Product ${index + 1}`,
}));

export function ProductSearch() {
  const [query, setQuery] = useState("");
  const deferredQuery = useDeferredValue(query);

  const filteredProducts = useMemo(() => {
    return allProducts.filter((product) =>
      product.name.toLowerCase().includes(deferredQuery.toLowerCase()),
    );
  }, [deferredQuery]);

  return (
    <>
      <input
        value={query}
        onChange={(event) => setQuery(event.target.value)}
        placeholder="Search products"
      />

      {query !== deferredQuery && <p>Updating results...</p>}

      <ul>
        {filteredProducts.slice(0, 10).map((product) => (
          <li key={product.id}>{product.name}</li>
        ))}
      </ul>
    </>
  );
}
```
