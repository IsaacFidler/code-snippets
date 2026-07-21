---
Title: DSP (Digital Service Provider)
Description: What a DSP is in the ICE context — streaming platforms and digital music services that submit usage data to ICE for royalty processing.
Tags:
  - definitions
  - dsp
  - ingestion
---

```txt
DSP (Digital Service Provider)
================================
A streaming platform or digital music service that licenses music and
submits usage data (play counts, streams, downloads) to ICE for royalty
processing.

Examples: Spotify, Apple Music, Amazon Music, YouTube Music, Deezer, Tidal

How DSPs fit into the ICE pipeline:
  1. DSP submits a delivery — a package of usage data (DDEX format or TSV)
     via the Ingestion platform or Screen by ICE
  2. ICE ingests, validates, and parses the delivery
  3. The data goes through matching (matching usage to registered works)
  4. Royalties are calculated and distributed to rights holders

Why DSPs matter for monitoring:
  Each DSP has its own delivery patterns, formats, and quality. Anomaly
  detection and monitoring should be per-DSP because what's "normal" for
  Spotify is very different from a smaller DSP.

  Signs a DSP may have a problem:
  - Sudden spike or drop in delivery volume
  - Rising validation error rate (likely a format change on their end)
  - Lower-than-usual match rate
  - Not delivering at all (if they usually deliver weekly)
```
