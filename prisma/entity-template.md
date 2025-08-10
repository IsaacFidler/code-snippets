---
Title: Entity Template
Description: Code snippet for entity Template.
Tags:
  - TODO: add tags
---

```txt
// src/events/entities/event.entity.ts
import { ObjectType, Field, Int } from '@nestjs/graphql';
import { User } from '../../users/entities/user.entity';
import { Location } from '../../locations/entities/location.entity';
import { Artist } from '../../artists/entities/artist.entity';

@ObjectType()
export class Event {
  @Field(() => Int)
  id: number;

  @Field()
  title: string;

  @Field()
  description: string;

  @Field()
  genre: string;

  @Field(() => Int)
  capacity: number;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;

  // Relations
  @Field(() => User)
  creator: User;

  @Field(() => Location)
  location: Location;

  @Field(() => [Artist])
  artists: Artist[];
}
```
