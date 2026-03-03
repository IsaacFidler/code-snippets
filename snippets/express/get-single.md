---
Title: Express GET Single
Description: Get single item by ID with 404 handling
Tags:
  - express
  - api
  - rest
---

```ts
router.get("/:id", async (req: Request, res: Response) => {
  try {
    const { id } = req.params;

    const item = await db("items").where({ id }).first();

    if (!item) {
      return res.status(404).json({ error: "Item not found" });
    }

    res.json({ data: item });
  } catch (error) {
    res.status(500).json({ error: "Internal server error" });
  }
});
```
