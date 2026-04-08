---
Title: React useReducer State Machine
Description: Manage related state transitions with a reducer instead of several useState calls.
Tags:
  - react
  - hooks
  - usereducer
  - reducer
  - state
---

```tsx
import { useReducer } from "react";

type CounterState = {
  count: number;
  step: number;
};

type CounterAction =
  | { type: "increment" }
  | { type: "decrement" }
  | { type: "setStep"; payload: number };

function counterReducer(
  state: CounterState,
  action: CounterAction,
): CounterState {
  switch (action.type) {
    case "increment":
      return { ...state, count: state.count + state.step };
    case "decrement":
      return { ...state, count: state.count - state.step };
    case "setStep":
      return { ...state, step: action.payload };
    default:
      return state;
  }
}

export function StepCounter() {
  const [state, dispatch] = useReducer(counterReducer, { count: 0, step: 1 });

  return (
    <>
      <input
        type="number"
        value={state.step}
        onChange={(event) =>
          dispatch({
            type: "setStep",
            payload: Number(event.target.value) || 1,
          })
        }
      />
      <button onClick={() => dispatch({ type: "decrement" })}>-</button>
      <span>{state.count}</span>
      <button onClick={() => dispatch({ type: "increment" })}>+</button>
    </>
  );
}
```
