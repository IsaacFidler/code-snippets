---
Title: Service With Prisma Template
Description: Code snippet for Service With Prisma Template.
Tags:
  - TODO: add tags
---

```txt
@Injectable()
export class EventsService {
  constructor(private prisma: PrismaClient) {}

  async findAll() {
    return this.prisma.event.findMany({
      include: { creator: true, location: true }
    });
  }

  async findOne(id: number) {
    return this.prisma.event.findUnique({
      where: { id },
      include: { creator: true, location: true }
    });
  }
}
```
