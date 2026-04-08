---
Title: React useCallback Stable Handler
Description: Memoize an event handler so a memoized child can skip unnecessary re-renders.
Tags:
  - react
  - hooks
  - usecallback
  - performance
  - memo
  - handlers
---

```tsx
import { memo, useCallback, useState } from "react";

const TodoList = memo(function TodoList({
  items,
  onAdd,
}: {
  items: string[];
  onAdd: () => void;
}) {
  console.log("TodoList render");

  return (
    <section>
      <button onClick={onAdd}>Add item</button>
      <ul>
        {items.map((item) => (
          <li key={item}>{item}</li>
        ))}
      </ul>
    </section>
  );
});

export function TodoApp() {
  const [items, setItems] = useState(["Read docs"]);
  const [filter, setFilter] = useState("");

  const handleAdd = useCallback(() => {
    setItems((currentItems) => [...currentItems, "New task"]);
  }, []);

  return (
    <>
      <input
        value={filter}
        onChange={(event) => setFilter(event.target.value)}
        placeholder="Filter items"
      />
      <TodoList
        items={items.filter((item) =>
          item.toLowerCase().includes(filter.toLowerCase()),
        )}
        onAdd={handleAdd}
      />
    </>
  );
}
```
