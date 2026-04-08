---
Title: React useOptimistic Add Comment
Description: Show an optimistic UI update immediately while an async action finishes.
Tags:
  - react
  - hooks
  - useoptimistic
  - optimistic-ui
  - async
  - comments
---

```tsx
import { useOptimistic, useState } from "react";

type Comment = {
  id: string;
  text: string;
  pending?: boolean;
};

const initialComments: Comment[] = [{ id: "1", text: "First comment" }];

export function CommentForm() {
  const [comments, setComments] = useState(initialComments);
  const [optimisticComments, addOptimisticComment] = useOptimistic(
    comments,
    (currentComments, newText: string) => [
      ...currentComments,
      { id: crypto.randomUUID(), text: newText, pending: true },
    ],
  );

  async function handleSubmit(formData: FormData) {
    const text = formData.get("comment")?.toString().trim();

    if (!text) return;

    addOptimisticComment(text);

    await new Promise((resolve) => setTimeout(resolve, 500));

    setComments((currentComments) => [
      ...currentComments,
      { id: crypto.randomUUID(), text },
    ]);
  }

  return (
    <>
      <form
        action={async (formData) => {
          await handleSubmit(formData);
        }}
      >
        <input name="comment" placeholder="Write a comment" />
        <button type="submit">Post</button>
      </form>

      <ul>
        {optimisticComments.map((comment) => (
          <li key={comment.id}>
            {comment.text} {comment.pending ? "(Sending...)" : ""}
          </li>
        ))}
      </ul>
    </>
  );
}
```
