---
Title: Express Health Check Endpoint
Description: Health check endpoint with database connectivity check, proper status codes, and structured response
Tags:
  - express
  - health-check
  - api
  - nodejs
  - kubernetes
---

```typescript
import { db } from "./db"; // Your Knex instance

// Health check endpoint
app.get("/api/health", async (_req, res) => {
  try {
    // Test database connectivity (works on any SQL database)
    await db.raw("SELECT 1");

    res.status(200).json({
      status: "ok",
      timestamp: new Date().toISOString(),
      checks: {
        database: "ok",
      },
    });
  } catch {
    res.status(503).json({
      status: "degraded",
      timestamp: new Date().toISOString(),
      checks: {
        database: "error",
      },
    });
  }
});
```

## With Multiple Checks

```typescript
app.get("/api/health", async (_req, res) => {
  const checks: Record<string, "ok" | "error"> = {
    database: "ok",
    redis: "ok",
  };

  // Check database
  try {
    await db.raw("SELECT 1");
  } catch {
    checks.database = "error";
  }

  // Check Redis
  try {
    await redis.ping();
  } catch {
    checks.redis = "error";
  }

  const hasError = Object.values(checks).includes("error");
  const status = hasError ? "degraded" : "ok";
  const statusCode = hasError ? 503 : 200;

  res.status(statusCode).json({
    status,
    timestamp: new Date().toISOString(),
    checks,
  });
});
```

## Kubernetes Liveness vs Readiness

```typescript
// Liveness - is the app running? (restart if fails)
app.get("/api/health/live", (_req, res) => {
  res.status(200).json({ status: "ok" });
});

// Readiness - can it handle traffic? (stop routing if fails)
app.get("/api/health/ready", async (_req, res) => {
  try {
    await db.raw("SELECT 1");
    res.status(200).json({ status: "ok" });
  } catch {
    res.status(503).json({ status: "not ready" });
  }
});
```
