---
Title: E2E (End-to-End) Status
Description: What E2E status means in the ICE pipeline — a single reliable status for a delivery's full journey from DSP arrival to LION load and beyond.
Tags:
  - definitions
  - e2e
  - ingestion
  - status
---

```txt
E2E (End-to-End) Status
========================
A single, reliable, up-to-date status for a delivery that reflects its
position across the FULL pipeline — not just the ingestion portion.

The problem:
  Currently the Ingestion UI (User Interface) shows status for the
  ingestion steps only: parsing / staged / confirmed / loaded to LION.
  What happens after LION load (matching in Apollo, licensing, invoicing)
  is invisible from the UI. If a delivery loads to LION but fails
  matching, an operator has no way to see that without leaving the app.

What true E2E (End-to-End) status would look like:
  Received → Parsed → Staged → Confirmed → Matched → Licensed → Loaded to LION

What the Ingestion UI currently shows vs. doesn't:
  ✓ Status bar: parsing / failed / loaded to LION
  ✓ LION Packet Item ID (operators can cross-reference manually)
  ✓ "Open In Matching" deep-link (jump to Apollo Matching)
  ✗ Matching outcome
  ✗ Licensing status
  ✗ Invoicing

Ideas to improve:
  - Delivery timeline view: horizontal timeline per delivery showing
    when each stage completed — makes delays visible at a glance
  - "Last seen at" indicator: flag deliveries stuck at the same status
    longer than expected
  - Status webhooks / notifications: alert when delivery reaches a key
    status (or gets stuck)

Related issue: status naming inconsistency (ING-804)
  The same concept is called "Drop", "Set to drop", "To be declined",
  "Pending disapproval", "Disapproved", and "Declined" across different
  views. Normalising status terminology across the whole pipeline would
  reduce operator errors.
```
