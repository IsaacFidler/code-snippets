---
Title: Cursor Agent CLI
Description: Launch the Cursor AI agent from the terminal for interactive or scripted use.
Tags:
  - cli
  - cursor
  - agent
  - ai
---

```bash
# Start interactive agent in current directory
cursor agent

# Start with an initial prompt
cursor agent "refactor the auth module to use JWT"

# Non-interactive mode (print output, useful for scripts)
cursor agent -p "explain the folder structure"

# Print as JSON
cursor agent -p --output-format json "list all TODO comments"

# Stream JSON output
cursor agent -p --output-format stream-json --stream-partial-output "fix the failing tests"

# Use a specific API key
cursor agent --api-key YOUR_KEY "summarise recent changes"
```
