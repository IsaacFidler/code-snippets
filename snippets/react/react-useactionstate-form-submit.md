---
Title: React useActionState Form Submit
Description: Track form submission results and pending state with useActionState.
Tags:
  - react
  - hooks
  - useactionstate
  - forms
  - async
  - submit
---

```tsx
import { useActionState } from "react";

type FormState = {
  error: string | null;
  success: boolean;
};

const initialState: FormState = {
  error: null,
  success: false,
};

async function saveProfile(
  previousState: FormState,
  formData: FormData,
): Promise<FormState> {
  const name = formData.get("name")?.toString().trim();

  if (!name) {
    return { error: "Name is required", success: false };
  }

  await new Promise((resolve) => setTimeout(resolve, 500));

  return { error: null, success: true };
}

export function ProfileForm() {
  const [state, formAction, isPending] = useActionState(
    saveProfile,
    initialState,
  );

  return (
    <form action={formAction}>
      <label htmlFor="name">Name</label>
      <input id="name" name="name" />

      <button disabled={isPending} type="submit">
        {isPending ? "Saving..." : "Save profile"}
      </button>

      {state.error && <p role="alert">{state.error}</p>}
      {state.success && <p>Profile saved.</p>}
    </form>
  );
}
```
