---
Title: Feature/Leaf Component Boilerplate
Description: Template for a smaller feature-level component - self-fetches its own data via RTK Query + a selector, and uses a real discriminated union for either-or props instead of an unused one
Tags:
  - react
  - rtk-query
  - typescript
---

```tsx
import * as React from 'react';
import { useGetThingQuery } from './thing.api';
import { selectThing } from './thingSelectors';
import useAppSelector from '../../common/hooks/useAppSelector';

// Either-or props enforced for real: the component below is typed
// with this exact union, not a separate all-optional type that
// would silently allow both/neither to be passed.
export type ThingActionProps = {
  label: string;
} & ({ onClick: () => void } | { href: string; external?: boolean });

// Component name matches the file name (ThingAction lives in ThingAction.tsx).
export const ThingAction: React.FC<ThingActionProps> = (props) => {
  const { label } = props;
  const linkProps = 'href' in props ? { href: props.href, target: props.external ? '_blank' : undefined } : {};
  const onClick = 'onClick' in props ? props.onClick : undefined;

  return (
    <button {...linkProps} onClick={onClick}>
      {label}
    </button>
  );
};

// "Smart leaf" component: fetches its own data via the RTK Query hook
// + a selector instead of requiring the parent to prop-drill it down.
// RTK Query dedupes/caches identical queries, so re-calling the hook
// here is cheap even if a parent already called it.
export interface ThingSummaryProps {
  thingId: string;
}

export const ThingSummary: React.FC<React.PropsWithChildren<ThingSummaryProps>> = ({ thingId, children }) => {
  const { data } = useGetThingQuery();
  const thing = useAppSelector((state) => selectThing(state, data, thingId));

  if (!thing) {
    return null;
  }

  return (
    <div>
      <span>{thing.name}</span>
      {children}
    </div>
  );
};
```
