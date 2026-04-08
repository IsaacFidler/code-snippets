---
Title: React useEffectEvent Latest Callback In Effect
Description: Read the latest props or state inside an effect without making them dependencies.
Tags:
  - react
  - hooks
  - useeffectevent
  - effects
  - subscriptions
---

```tsx
import { useEffect, useEffectEvent } from "react";

type ChatRoomProps = {
  roomId: string;
  theme: "light" | "dark";
};

export function ChatRoom({ roomId, theme }: ChatRoomProps) {
  const onConnected = useEffectEvent(() => {
    showToast(`Connected to ${roomId}`, theme);
  });

  useEffect(() => {
    const connection = createConnection(roomId);

    connection.on("connected", () => {
      onConnected();
    });

    connection.connect();

    return () => connection.disconnect();
  }, [roomId]);

  return <p>Connecting to {roomId}...</p>;
}

declare function createConnection(roomId: string): {
  on: (eventName: "connected", callback: () => void) => void;
  connect: () => void;
  disconnect: () => void;
};

declare function showToast(message: string, theme: "light" | "dark"): void;
```
