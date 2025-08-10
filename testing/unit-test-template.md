---
Title: Unit Test Template
Description: Code snippet for Unit Test Template.
Tags:
  - TODO: add tags
---

```txt
describe('EventsService', () => {
  let service: EventsService;
  let prisma: PrismaClient;

  beforeEach(async () => {
    const module = await Test.createTestingModule({
      providers: [
        EventsService,
        { provide: PrismaClient, useValue: mockPrisma }
      ],
    }).compile();

    service = module.get<EventsService>(EventsService);
  });

  it('should find all events', async () => {
    const result = await service.findAll();
    expect(result).toEqual(mockEvents);
  });
});
```
