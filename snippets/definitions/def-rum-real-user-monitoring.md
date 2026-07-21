---
Title: RUM (Real User Monitoring)
Description: What RUM is — a browser SDK that tracks real user interactions, performance, and errors in a frontend app.
Tags:
  - definitions
  - rum
  - datadog
  - frontend
  - observability
---

```txt
RUM (Real User Monitoring)
==========================
A browser-side SDK that runs in a frontend app and sends telemetry back
to a monitoring platform (e.g. DataDog). It tracks real user sessions —
not synthetic tests, but actual user interactions in production.

What it captures automatically (once initialised):
  - Page views and navigation (which routes users visit, how long pages take to load)
  - JS errors and unhandled promise rejections
  - Network requests (XHR/fetch) — latency, status codes, failed calls
  - Core Web Vitals — LCP (Largest Contentful Paint), FID (First Input Delay),
    CLS (Cumulative Layout Shift)
  - Session replay (if enabled) — a recording of what the user saw and did

What it does NOT capture automatically:
  - Custom user actions ("user clicked Keep on delivery X")
  - Business-level events ("file upload started", "staging decision made")
  - User identity (you must call datadogRum.setUser(...) explicitly)

Custom events (must be added manually):
  datadogRum.addAction('keep_decision', { deliveryId, dsp })
  datadogRum.addError(error, { context: 'upload_failed' })

ICE current state:
  Neither Ingestion nor Screen by ICE has DataDog RUM (Real User Monitoring)
  initialised. Both apps use the commons-ui Train component which contains
  a DDProvider — but setAppConfig() in each app's appconfig.ts has no
  'datadog' key, so DDProvider early-returns and nothing is sent.

  To enable: add a datadog: { rumInitConfiguration, logsInitConfiguration }
  block to setAppConfig() in frontend/src/appconfig.ts for each app.
  The infrastructure in commons-ui is fully ready — it just needs wiring up.

DataDog Session Replay:
  Included in RUM. Records a pixel-accurate replay of the user's session.
  commons-ui has a user-consent toggle (DDSessionRecorderDialog) in the
  navbar — users can opt in. Already wired up; will work once RUM is enabled.
```
