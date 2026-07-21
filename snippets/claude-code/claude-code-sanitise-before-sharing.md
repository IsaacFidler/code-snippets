---
Title: Sanitise Text Before Sharing With Claude
Description: Full workflow for stripping PII from text or files before pasting into a Claude Code prompt. Covers clipboard, file, and stdin usage.
Tags:
  - claude-code
  - ai
  - security
  - pii
  - workflow
  - clipboard
---

```bash
# Sanitise clipboard → copy clean version back → paste into prompt
pbpaste | sanitise | pbcopy

# Sanitise a file and print result
sanitise path/to/file.txt

# Sanitise a file and copy result to clipboard
sanitise path/to/file.txt | pbcopy

# Pipe any command output through sanitise before sharing
cat debug.log | sanitise
cat debug.log | sanitise | pbcopy

# Suppress the replacement mapping (e.g. in scripts)
pbpaste | sanitise --no-mapping
```
