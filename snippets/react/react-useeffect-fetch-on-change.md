---
Title: React useEffect Fetch On Change
Description: Fetch data when a dependency changes and ignore stale responses in cleanup.
Tags:
  - react
  - hooks
  - useeffect
  - fetch
  - async
  - cleanup
---

```tsx
import { useEffect, useState } from "react";

type User = {
  id: number;
  name: string;
};

export function UserSearch() {
  const [query, setQuery] = useState("Ada");
  const [users, setUsers] = useState<User[]>([]);
  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    let ignore = false;

    async function loadUsers() {
      setIsLoading(true);

      const response = await fetch(`/api/users?q=${encodeURIComponent(query)}`);
      const data: User[] = await response.json();

      if (!ignore) {
        setUsers(data);
        setIsLoading(false);
      }
    }

    loadUsers();

    return () => {
      ignore = true;
    };
  }, [query]);

  return (
    <>
      <input value={query} onChange={(event) => setQuery(event.target.value)} />
      {isLoading ? (
        <p>Loading...</p>
      ) : (
        <pre>{JSON.stringify(users, null, 2)}</pre>
      )}
    </>
  );
}
```
