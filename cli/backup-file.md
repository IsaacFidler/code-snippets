---
Title: Create Timestamped Backup
Description: Quickly create a timestamped backup of a file before editing
Tags:
  - cli
  - file-operations
  - backup
---

```bash
# Create timestamped backup
backup config.json

# Creates: config.json.backup-20251021-143022
# Original file remains unchanged

# Then safely edit the original:
zd config.json

# If you mess up, restore from backup:
cp config.json.backup-20251021-143022 config.json

# Great for: editing configs, .env files, etc.
```
