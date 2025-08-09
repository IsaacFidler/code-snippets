---
Title: Prisma Create With Relations
Description: Code snippet for Prisma Create With Relations.
Tags:
  - TODO: add tags
---

```txt
// create.ts
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

// Create an event and register two existing users to it
export async function createEventWithAttendees() {
  return prisma.event.create({
    data: {
      title: 'Warehouse Party',
      genre: 'TECHNO',
      capacity: 300,
      registrations: {
        create: [
          { user: { connect: { id: 'user_1' } } },
          { user: { connect: { id: 'user_2' } } },
        ],
      },
    },
    include: {
      registrations: { include: { user: true } },
    },
  });
}
```
