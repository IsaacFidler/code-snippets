---
Title: React useTransition Non Blocking Filter
Description: Mark an expensive state update as non-urgent so typing stays responsive.
Tags:
  - react
  - hooks
  - usetransition
  - transitions
  - performance
  - search
---

```tsx
import { useMemo, useState, useTransition } from "react";

const allCities = Array.from(
  { length: 5000 },
  (_, index) => `City ${index + 1}`,
);

export function CitySearch() {
  const [input, setInput] = useState("");
  const [query, setQuery] = useState("");
  const [isPending, startTransition] = useTransition();

  const results = useMemo(() => {
    return allCities.filter((city) =>
      city.toLowerCase().includes(query.toLowerCase()),
    );
  }, [query]);

  return (
    <>
      <input
        value={input}
        onChange={(event) => {
          const nextValue = event.target.value;

          setInput(nextValue);
          startTransition(() => {
            setQuery(nextValue);
          });
        }}
        placeholder="Search cities"
      />

      {isPending && <p>Updating results...</p>}

      <ul>
        {results.slice(0, 10).map((city) => (
          <li key={city}>{city}</li>
        ))}
      </ul>
    </>
  );
}
```
