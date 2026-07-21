---
Title: Observability
Description: What observability means in software and data pipelines — and how it differs from monitoring.
Tags:
  - definitions
  - observability
  - monitoring
  - datadog
---

```txt
Observability
=============
Your system emits enough data (logs, metrics, traces) that you can answer
NEW questions about it — questions you didn't think to ask when you built it.

A system is observable if you can understand its internal state from its
external outputs alone. You don't need to redeploy or add new instrumentation
to investigate a failure — the data is already there.

Observability = ability to investigate the UNKNOWN.

vs. Monitoring (see def-monitoring):
  Monitoring = tracking known metrics against known thresholds ("alert if
  error rate > 5%"). Reactive — you get paged when a known thing breaks.
  Observability = asking arbitrary new questions about why something broke.

vs. Measurability (see def-measurability):
  Measurability is the prerequisite. If nothing is instrumented, you can
  neither monitor nor observe.

The three pillars of observability:
  1. Logs    — structured records of discrete events ("file X failed at step Y")
  2. Metrics — numeric measurements over time (error rate, latency, throughput)
  3. Traces  — the path a single request/delivery took through distributed systems

In ICE context:
  - Emanuele's session asks: do we know what's happening INSIDE the pipeline
    in real time? Can we investigate why a delivery failed matching without
    someone manually tailing logs?
  - Neither Ingestion nor Screen by ICE FE (Frontend) currently sends any
    data to DataDog — so observability at the FE layer is zero.
  - "A healthy pipeline baseline" is the first step: define what normal looks
    like before you can recognise when something is anomalous.
```
