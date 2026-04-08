---
Title: Express PUT Update
Description: Update existing item by ID
Tags:
  - express
  - api
  - rest
---

```ts
router.put("/:id", async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const { name, description } = req.body;

    const [updated] = await db("items")
      .where({ id })
      .update({ name, description })
      .returning("*");

    if (!updated) {
      return res.status(404).json({ error: "Item not found" });
    }

    res.json({ data: updated });
  } catch (error) {
    res.status(500).json({ error: "Internal server error" });
  }
});
```
