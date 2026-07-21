---
Title: Anomaly Detection
Description: What anomaly detection is and how it applies to the ICE ingestion pipeline — flagging unusual patterns before they cause downstream problems.
Tags:
  - definitions
  - anomaly-detection
  - monitoring
  - ai
  - ingestion
---

```txt
Anomaly Detection
=================
Automatically identifying data points or patterns that deviate
significantly from expected behaviour — without requiring a human
to define every possible failure case in advance.

Unlike threshold-based monitoring ("alert if error rate > 5%"),
anomaly detection learns what "normal" looks like over time and
flags deviations from that baseline. Useful when you don't know
the right threshold, or when normal varies seasonally.

Types relevant to ICE:
  - Statistical anomalies  — a value is N standard deviations from its
                             historical mean for this time of day / DSP
  - Volume anomalies       — a DSP usually sends ~10k events; today sent 100
  - Trend anomalies        — error rate has been steadily rising for 3 days
  - Missing data           — a DSP that delivers weekly hasn't sent in 10 days

Where it helps in ICE:
  - Catch DSP format changes before they cause widespread matching failures
  - Spot processing time regressions before operators notice
  - Identify DSPs with worsening data quality for proactive Ops outreach
  - Flag unusually low match rates before they affect royalty calculations

Where anomalies should surface in ICE UIs:
  - Ingestion: the existing /alerts route is the natural home for
    AI (Artificial Intelligence)-generated pipeline alerts
  - DataDog dashboard: a separate view for engineering/Ops
  - Screen by ICE: historical validation data could flag external DSPs
    submitting consistently poor quality files

Camilo's session covers this — he is from the Reporting team.
```
