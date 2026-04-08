---
Title: React useInsertionEffect Inject Styles
Description: Insert styles before layout effects run in CSS-in-JS style code.
Tags:
  - react
  - hooks
  - useinsertioneffect
  - styles
  - css-in-js
---

```tsx
import { useInsertionEffect } from "react";

export function ColoredBadge({ color }: { color: string }) {
  const className = `badge-${color}`;

  useInsertionEffect(() => {
    const style = document.createElement("style");
    style.textContent = `
      .${className} {
        background: ${color};
        color: white;
        border-radius: 999px;
        padding: 0.25rem 0.5rem;
      }
    `;

    document.head.appendChild(style);

    return () => {
      document.head.removeChild(style);
    };
  }, [className, color]);

  return <span className={className}>Status</span>;
}
```
