---
Title: Prisma Findmany Template
Description: Code snippet for Prisma Findmany Template.
Tags:
  - TODO: add tags
---

```txt
// queries.ts
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

// Get events and include each registration's user
export async function listEventsWithAttendees() {
  return prisma.event.findMany({
    orderBy: { title: 'asc' },
    include: {
      registrations: {
        include: { user: true },
      },
    },
  });
}

// Filter by genre and only return some fields
export async function listTechnoEventsTitles() {
  return prisma.event.findMany({
    where: { genre: { equals: 'TECHNO' } },
    select: {
      id: true,
      title: true,
      registrations: {
        select: { user: { select: { id: true, name: true } } },
      },
    },
  });
}
```
