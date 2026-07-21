---
Title: Lead Time (Ingestion Pipeline)
Description: What lead time means in the ICE ingestion pipeline — delivery arrival through to LION load, and why it matters.
Tags:
  - definitions
  - lead-time
  - ingestion
  - monitoring
---

```txt
Lead Time (Ingestion Pipeline)
==============================
How long it takes from a DSP (Digital Service Provider) submitting a
delivery to that delivery being fully loaded into LION (the royalty
processing system).

Stages in the journey:
  DSP submits → Received → Parsed/Validated → Staged (awaiting operator
  decision) → Operator confirms → Matched in Apollo → Loaded to LION

Lead time spans this entire chain. Currently the DataDog dashboards
Arturas presents cover the backend processing steps. It's unclear whether
"lead time" includes the time a delivery sits in staging waiting for a
human decision — worth asking.

Why it matters:
  LION calculates royalties from ingested data. The faster data reaches
  LION, the sooner rights holders get paid accurately. Delays compound
  — if a DSP delivers late AND processing is slow AND an operator takes
  days to confirm, the royalty cycle slips.

What slows it down:
  - Validation failures requiring resubmission
  - Operator bottlenecks at the staging / confirmation step
  - Processing time anomalies (one delivery type slower than others)
  - Integration hops between ingestion → Snowflake → RoyCalc → LION

Measuring it:
  A complete lead time metric would timestamp each stage transition and
  compute the delta between DSP arrival and LION load. If this metric
  doesn't exist end-to-end today, that's a measurability gap.
```
