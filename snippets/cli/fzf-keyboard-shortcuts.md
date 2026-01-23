---
Title: FZF Keyboard Shortcuts Reference
Description: Essential keyboard shortcuts for fuzzy finding in terminal
Tags:
  - cli
  - fzf
  - keyboard-shortcuts
  - reference
---

```bash
# FZF Built-in Keyboard Shortcuts

## File Finding
Ctrl+T          # Fuzzy find FILES (paste path to command line)
                # Shows files with syntax-highlighted preview
                # Works from anywhere

## Directory Navigation
Alt+C           # Fuzzy find DIRECTORIES and cd into selection
(Option+C)      # (On Mac - requires macos-option-as-alt = true in Ghostty)
                # Shows directories with tree preview

## Command History
Ctrl+R          # Search command history
                # Find and re-run previous commands
                # Smart fuzzy matching

# Navigation Within FZF
↑ ↓             # Navigate results
Enter           # Select current item
Esc / Ctrl+C    # Cancel/exit
Ctrl+N / Ctrl+P # Alternative up/down navigation
Tab             # Multi-select (in multi-select mode)

# Custom Aliases (faster to type)
fzf-edit        # Find file → open in Zed
fzf-cd          # Find directory → cd (same as Alt+C but typed)
fzf-projects    # Find project → cd
fzf-global-file # Find ANY file in dev-projects
fzf-global-dir  # Find ANY directory in dev-projects
```
