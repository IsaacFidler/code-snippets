---
Title: Dto Template
Description: Code snippet for Dto Template.
Tags:
  - TODO: add tags
---

```txt
// src/events/dto/create-event.input.ts
import { InputType, Field, Int } from '@nestjs/graphql';
import { IsString, IsInt, IsOptional, Min, MaxLength } from 'class-validator';

@InputType()
export class CreateEventInput {
  @Field()
  @IsString()
  @MaxLength(100)
  title: string;

  @Field()
  @IsString()
  @MaxLength(500)
  description: string;

  @Field()
  @IsString()
  genre: string;

  @Field(() => Int)
  @IsInt()
  @Min(1)
  capacity: number;

  @Field(() => Int)
  @IsInt()
  creatorId: number;

  @Field(() => Int)
  @IsInt()
  locationId: number;

  @Field(() => [Int], { nullable: true })
  @IsOptional()
  artistIds?: number[];
}
```
