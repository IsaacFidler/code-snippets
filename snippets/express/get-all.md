---
Title: Express GET All
Description: Basic list endpoint with pagination
Tags:
  - express
  - api
  - rest
---

```ts
router.get("/", async (req: Request, res: Response) => {
  try {
    const page = Number(req.query.page) || 1;
    const limit = Number(req.query.limit) || 10;
    const offset = (page - 1) * limit;

    const items = await db("items").select("*").limit(limit).offset(offset);

    res.json({ data: items });
  } catch (error) {
    res.status(500).json({ error: "Internal server error" });
  }
});
```
