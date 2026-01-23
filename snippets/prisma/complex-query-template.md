---
Title: Complex Query Template
Description: Code snippet for Complex Query Template.
Tags:
  - TODO: add tags
---

```txt
// Filtering with relations
const events = await prisma.event.findMany({
  where: {
    genre: 'ROCK',
    capacity: { gte: 100 },
    createdAt: { gte: new Date('2024-01-01') }
  },
  include: {
    creator: true,
    location: true,
    artists: true
  },
  orderBy: { createdAt: 'desc' },
  take: 10,
  skip: 0
});
```
