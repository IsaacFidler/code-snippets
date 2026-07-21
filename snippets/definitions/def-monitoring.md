---
Title: Monitoring
Description: What monitoring means — tracking known metrics against known thresholds. Distinct from observability.
Tags:
  - definitions
  - monitoring
  - observability
  - datadog
---

```txt
Monitoring
==========
Tracking known metrics against known thresholds and alerting when they
are breached. You define the signal in advance; monitoring checks it.

"Alert me if the LION load failure rate exceeds 5% in a 1-hour window."
"Page someone if a delivery has been in staging for > 48 hours."

Monitoring = checking for the KNOWN.

How it differs from observability:
  Monitoring answers: "is this thing I care about still within bounds?"
  Observability answers: "what is actually happening, and why?"

  A system can be monitored without being observable: you track uptime but
  can't investigate WHY something went down without tailing logs manually.

  A fully observable system is easy to monitor: the data already exists,
  you just add alert conditions on top.

Types of monitoring relevant to ICE:
  - Uptime / availability   — is the service responding?
  - Error rate              — what % of requests/deliveries are failing?
  - Latency / throughput    — how long does each stage take?
  - Lead time               — full delivery lifecycle from DSP arrival → LION load
  - SLA (Service Level Agreement) compliance
                            — what % of deliveries complete within the agreed window?

Tools:
  DataDog dashboards (Arturas's session) = monitoring layer on the pipeline.
  DataDog RUM (Real User Monitoring)     = monitoring of the FE (Frontend) layer.
```
