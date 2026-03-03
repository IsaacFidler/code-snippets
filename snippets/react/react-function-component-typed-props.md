---
Title: React Function Component Typed Props
Description: Function component using explicitly typed props.
Tags:
  - react
  - typescript
  - component
  - props
  - function-component
---

```txt
type MyComponentProps = {
  title: string;
};

function MyComponent({ title }: MyComponentProps) {
  return <div>{title}</div>;
}
```
