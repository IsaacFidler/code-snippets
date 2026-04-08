---
Title: React useDebugValue Custom Hook Label
Description: Add a readable label in React DevTools for a custom hook.
Tags:
  - react
  - hooks
  - usedebugvalue
  - custom-hook
  - devtools
---

```tsx
import { useDebugValue, useEffect, useState } from "react";

function useOnlineStatus() {
  const [isOnline, setIsOnline] = useState(navigator.onLine);

  useDebugValue(isOnline ? "Online" : "Offline");

  useEffect(() => {
    const goOnline = () => setIsOnline(true);
    const goOffline = () => setIsOnline(false);

    window.addEventListener("online", goOnline);
    window.addEventListener("offline", goOffline);

    return () => {
      window.removeEventListener("online", goOnline);
      window.removeEventListener("offline", goOffline);
    };
  }, []);

  return isOnline;
}

export function StatusBadge() {
  const isOnline = useOnlineStatus();

  return <span>{isOnline ? "Online" : "Offline"}</span>;
}
```
