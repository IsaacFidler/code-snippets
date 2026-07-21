---
Title: Snowflake
Description: What Snowflake is and how ICE uses it — cloud data warehouse for analytics and reporting downstream of the ingestion pipeline.
Tags:
  - definitions
  - snowflake
  - data-warehouse
  - analytics
---

```txt
Snowflake
=========
A cloud-hosted data warehouse (third-party SaaS — separate from ICE's
own AWS infrastructure). It stores large volumes of structured data and
is optimised for analytical queries rather than transactional operations.

Think of it as: a place to ask big questions across all historical data,
not a place to run the live system.

How ICE uses it:
  Snowflake sits DOWNSTREAM of the ingestion pipeline. Once a delivery is
  processed and loaded to LION, relevant usage data is also made available
  in Snowflake for:
    - Trend analysis (e.g. delivery volumes per DSP over time)
    - Royalty reporting and auditing
    - Cross-DSP (Digital Service Provider) comparison
    - Input to RoyCalc (Royalty Calculator) for payment computations

Konrad's session (Direct integration with Snowflake / RoyCalc):
  Currently there are manual steps between "delivery processed in ingestion"
  and "data available in Snowflake." Konrad is working on a direct
  integration to remove those hops — so processed ingestion data flows
  into Snowflake (and on to RoyCalc) automatically and faster.

Snowflake vs. operational databases (e.g. PostgreSQL):
  PostgreSQL (what ICE uses for the Ingestion and Screen by ICE databases)
    = transactional DB. Fast reads/writes for the live application. Not
      designed for large analytical queries across millions of rows.
  Snowflake = analytical DB. Designed for complex queries across huge datasets.
    Slower to write but very fast to query at scale.
```
