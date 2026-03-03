---
Title: Express DELETE
Description: Delete item by ID
Tags:
  - express
  - api
  - rest
---

```ts
router.delete("/:id", async (req: Request, res: Response) => {
  try {
    const { id } = req.params;

    const deleted = await db("items").where({ id }).del();

    if (!deleted) {
      return res.status(404).json({ error: "Item not found" });
    }

    res.status(204).send(); // No content
  } catch (error) {
    res.status(500).json({ error: "Internal server error" });
  }
});
```
