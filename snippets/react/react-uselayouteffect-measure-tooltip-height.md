---
Title: React useLayoutEffect Measure Tooltip Height
Description: Measure layout synchronously before paint when positioning UI.
Tags:
  - react
  - hooks
  - uselayouteffect
  - layout
  - measurement
  - tooltip
---

```tsx
import { useLayoutEffect, useRef, useState } from "react";

export function Tooltip({ text }: { text: string }) {
  const tooltipRef = useRef<HTMLDivElement | null>(null);
  const [height, setHeight] = useState(0);

  useLayoutEffect(() => {
    if (tooltipRef.current) {
      setHeight(tooltipRef.current.getBoundingClientRect().height);
    }
  }, [text]);

  return (
    <div style={{ position: "relative" }}>
      <button aria-describedby="tooltip">Hover me</button>
      <div
        id="tooltip"
        ref={tooltipRef}
        style={{ position: "absolute", top: `-${height + 8}px` }}
      >
        {text}
      </div>
    </div>
  );
}
```
