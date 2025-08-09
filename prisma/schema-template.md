---
Title: Schema Template
Description: Code snippet for Schema Template.
Tags:
  - TODO: add tags
---

```txt
// schema.prisma
datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

generator client {
  provider = "prisma-client-js"
}

model User {
  id            String         @id @default(cuid())
  name          String
  email         String         @unique
  registrations Registration[]
}

model Event {
  id            String         @id @default(cuid())
  title         String
  genre         String?
  capacity      Int?
  registrations Registration[]
}

model Registration {
  id      String @id @default(cuid())

  userId  String
  eventId String

  user    User   @relation(fields: [userId], references: [id])
  event   Event  @relation(fields: [eventId], references: [id])

  @@unique([userId, eventId]) // one registration per user per event
}
```
