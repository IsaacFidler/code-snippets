---
Title: React useContext Theme Context
Description: Read shared theme state from context in a child component.
Tags:
  - react
  - hooks
  - usecontext
  - context
  - theme
---

```tsx
import { createContext, useContext, useState } from "react";

type Theme = "light" | "dark";

const ThemeContext = createContext<{
  theme: Theme;
  toggleTheme: () => void;
} | null>(null);

function ThemeToggleButton() {
  const themeContext = useContext(ThemeContext);

  if (!themeContext) {
    throw new Error("ThemeToggleButton must be used inside ThemeProvider");
  }

  return (
    <button onClick={themeContext.toggleTheme}>
      Current theme: {themeContext.theme}
    </button>
  );
}

export function ThemeProviderExample() {
  const [theme, setTheme] = useState<Theme>("light");

  return (
    <ThemeContext.Provider
      value={{
        theme,
        toggleTheme: () =>
          setTheme((currentTheme) =>
            currentTheme === "light" ? "dark" : "light",
          ),
      }}
    >
      <ThemeToggleButton />
    </ThemeContext.Provider>
  );
}
```
