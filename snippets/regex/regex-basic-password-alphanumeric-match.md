---
Title: Basic Password Alphanumeric Match
Description: Check whether a password has at least one lowercase letter, one uppercase letter, one digit, and only alphanumeric characters.
Tags:
  - regex
  - javascript
  - password
  - alphanumeric
  - validation
  - auth
---

```javascript
const matchesBasicPasswordRules = (value) =>
  Boolean(value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$/));
```
