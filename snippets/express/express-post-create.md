---
Title: Express POST Create
Description: Create new item with validation
Tags:
  - express
  - api
  - rest
---

```ts
router.post("/", async (req: Request, res: Response) => {
  try {
    const { name, description } = req.body;

    // Basic validation
    if (!name) {
      return res.status(400).json({ error: "Name is required" });
    }

    const [newItem] = await db("items")
      .insert({ name, description })
      .returning("*");

    res.status(201).json({ data: newItem });
  } catch (error) {
    res.status(500).json({ error: "Internal server error" });
  }
});
```
