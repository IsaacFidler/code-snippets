---
Title: React use Resource Promise
Description: Read a promise value with React's use API inside a Suspense boundary.
Tags:
  - react
  - hooks
  - use
  - suspense
  - promises
  - async
---

```tsx
import { Suspense, use } from "react";

type Message = {
  text: string;
};

function Message({ messagePromise }: { messagePromise: Promise<Message> }) {
  const message = use(messagePromise);

  return <p>{message.text}</p>;
}

export function MessagePanel() {
  const messagePromise = fetch("/api/message").then(
    (response) => response.json() as Promise<Message>,
  );

  return (
    <Suspense fallback={<p>Loading message...</p>}>
      <Message messagePromise={messagePromise} />
    </Suspense>
  );
}
```
