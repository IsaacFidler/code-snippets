---
Title: Clean Test Jest
Description: Code snippet for Clean Test Jest.
Tags:
  - jest
  - testing
  - cleanup
  - unit-test
---

```txt
jest __tests__ src --testPathIgnorePatterns=/node_modules/ e2e/ \
  --silent \
  --bail=1 \
  --expand \
  --testLocationInResults
```
