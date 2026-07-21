---
Title: User Bin Location (~/.local/bin)
Description: Personal scripts and executables stored in ~/.local/bin — added to $PATH so they run by name from anywhere, without affecting system-wide binaries
Tags:
  - cli
  - scripts
  - path
  - shell
---

```bash
# Location for personal user scripts
~/.local/bin/

# Scripts placed here are available globally by name (no path needed):
sanitise
my-script

# Verify it's on your PATH:
echo $PATH | tr ':' '\n' | grep local

# Add to PATH if not already (in ~/.zshrc or ~/.bashrc):
export PATH="$HOME/.local/bin:$PATH"

# Make a script executable after placing it here:
chmod +x ~/.local/bin/my-script
```
