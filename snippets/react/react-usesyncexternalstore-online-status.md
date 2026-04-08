---
Title: React useSyncExternalStore Online Status
Description: Subscribe to external browser state with a snapshot function and cleanup.
Tags:
  - react
  - hooks
  - usesyncexternalstore
  - external-store
  - subscriptions
  - browser
---

```tsx
import { useSyncExternalStore } from "react";

function subscribe(callback: () => void) {
  window.addEventListener("online", callback);
  window.addEventListener("offline", callback);

  return () => {
    window.removeEventListener("online", callback);
    window.removeEventListener("offline", callback);
  };
}

function getSnapshot() {
  return navigator.onLine;
}

function getServerSnapshot() {
  return true;
}

export function OnlineStatus() {
  const isOnline = useSyncExternalStore(
    subscribe,
    getSnapshot,
    getServerSnapshot,
  );

  return <p>{isOnline ? "Online" : "Offline"}</p>;
}
```
