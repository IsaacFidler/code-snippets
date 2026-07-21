---
Title: SLA (Service Level Agreement)
Description: What an SLA is — a commitment to a measurable standard of service, and how it applies to the ICE ingestion pipeline.
Tags:
  - definitions
  - sla
  - monitoring
  - lead-time
---

```txt
SLA (Service Level Agreement)
==============================
A formal commitment to a measurable standard of service delivery.
Usually expressed as: "X% of [things] will complete within [time window]."

Example: "95% of deliveries will be fully loaded to LION within 7 days
          of the DSP (Digital Service Provider) submitting them."

Components:
  - What is being measured      — deliveries loaded to LION
  - The success condition        — within 7 days
  - The target compliance rate   — 95%
  - The measurement window       — per calendar month

Why SLAs matter:
  Without a defined SLA, there is no agreed standard to monitor against.
  You can observe that things are slow, but you can't say they've been
  BREACHED. SLAs create the baseline for monitoring and accountability.

SLA vs. SLO vs. SLI:
  SLI (Service Level Indicator)   = the actual metric being measured
                                    (e.g. "lead time in days")
  SLO (Service Level Objective)   = your internal target
                                    (e.g. "95% within 7 days")
  SLA (Service Level Agreement)   = the external/contractual commitment
                                    (may be less strict than the SLO)

ICE context:
  Emanuele's session raises the question: do we currently have an SLA
  compliance number? What % of deliveries load to LION within 7 days?
  If no metric exists, that's a measurability problem — the data isn't
  being captured in a way that can answer this question.
```
