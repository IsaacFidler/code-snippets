---
Title: React useMemo Filtered List
Description: Memoize an expensive derived list so it only recomputes when inputs change.
Tags:
  - react
  - hooks
  - usememo
  - derived-state
  - filtering
  - performance
---

```tsx
import { useMemo, useState } from "react";

const allArticles = [
  "React Performance",
  "Hooks Deep Dive",
  "Testing Library Guide",
  "TypeScript Patterns",
];

export function ArticleList() {
  const [search, setSearch] = useState("");

  const filteredArticles = useMemo(() => {
    const normalizedSearch = search.trim().toLowerCase();

    return allArticles.filter((article) =>
      article.toLowerCase().includes(normalizedSearch),
    );
  }, [search]);

  return (
    <>
      <input
        value={search}
        onChange={(event) => setSearch(event.target.value)}
        placeholder="Filter articles"
      />
      <ul>
        {filteredArticles.map((article) => (
          <li key={article}>{article}</li>
        ))}
      </ul>
    </>
  );
}
```
