---
Title: DataDog
Description: What DataDog is and how ICE uses it — third-party observability platform covering monitoring, RUM, logs, and alerts.
Tags:
  - definitions
  - datadog
  - observability
  - monitoring
---

```txt
DataDog
=======
A third-party SaaS (Software as a Service) observability and monitoring
platform. It aggregates metrics, logs, traces, and browser telemetry from
across a system into dashboards, alerts, and session replays.

Main products relevant to ICE:
  - Dashboards      — visualise pipeline metrics (lead time, error rates,
                      throughput). Arturas uses these for royalty tracking.
  - RUM (Real User Monitoring)
                    — browser SDK that tracks real user sessions in the
                      frontend (page views, errors, performance, interactions).
  - Browser Logs    — ship frontend console logs and errors to DataDog.
  - Alerts          — trigger notifications when a metric crosses a threshold.
  - Session Replay  — record what users actually did in the browser.
  - APM (Application Performance Monitoring)
                    — distributed tracing across backend services.

How it integrates with ICE apps:
  Both Ingestion and Screen by ICE use commons-ui's Train component.
  Train renders DDProvider, which calls datadogRum.init() and
  datadogLogs.init() — but only if the app passes a 'datadog' config
  block to setAppConfig(). Currently neither app does this, so DataDog
  is not active in either FE (Frontend).

  Flagsmith (ICE's feature flag service) is also integrated with DataDog
  RUM — once RUM is enabled, Flagsmith will automatically send feature
  flag data to DataDog with no extra work.

Synthetic tests:
  Ingestion has infra-synthetic-tests.ts — automated tests that simulate
  user journeys from outside the app and report to DataDog. Separate from
  RUM (Real User Monitoring) (which tracks real users).
```
