---
Title: Measurability
Description: Whether a system or process can be quantified at all — the prerequisite for monitoring and observability.
Tags:
  - definitions
  - measurability
  - observability
  - monitoring
---

```txt
Measurability
=============
Whether a system or process emits enough data to be quantified.
Measurability is the prerequisite for both monitoring and observability.

If nothing is instrumented, you have no measurability.
If you have measurability, you can build monitoring on top.
If your instrumentation is rich enough, you have observability.

The hierarchy:
  Measurability → Observability → Monitoring
  (can you measure?) → (can you answer new questions?) → (are thresholds met?)

Questions that test measurability:
  "Do we have a number for SLA (Service Level Agreement) compliance?"
  "What % of deliveries load to LION within 7 days?"
  "How long does the staging step take on average?"
  "What is the error rate per DSP (Digital Service Provider) over the last 30 days?"

If you can't answer these, the first problem is measurability — the data
isn't being captured at all, not just not being watched.

In ICE context:
  - Emanuele's session is partly about this: before we can improve pipeline
    performance, we need to agree on what we're measuring.
  - Neither Ingestion nor Screen by ICE FE (Frontend) currently sends any
    telemetry to DataDog, so FE measurability = zero.
  - A "healthy pipeline baseline" can only be defined once measurability exists.
```
