---
Title: Curl Post Request
Description: Code snippet for Curl Post Request.
Tags:
  - TODO: curl, api, post, bearer
---

```text
curl -X POST https://api.example.com/endpoint \
  -H "Authorization: Bearer YOUR_TOKEN_HERE" # gitleaks:allow \
  -H "Content-Type: application/json" \
  -d '{"key": "value"}'
```
