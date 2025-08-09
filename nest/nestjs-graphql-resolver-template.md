---
Title: Nestjs Graphql Resolver Template
Description: Code snippet for Nestjs Graphql Resolver Template.
Tags:
  - TODO: add tags
---

```txt
import { Resolver, Query, Mutation, Args } from '@nestjs/graphql';
import { Injectable } from '@nestjs/common';
import { ExampleService } from './example.service';
import { Example } from './models/example.model';

@Resolver(() => Example)
@Injectable()
export class ExampleResolver {
  constructor(private readonly exampleService: ExampleService) {}

  @Query(() => Example, { name: 'getExample' })
  async getExample(@Args('id') id: string): Promise<Example> {
    return this.exampleService.findById(id);
  }

  @Mutation(() => Example)
  async createExample(@Args('name') name: string): Promise<Example> {
    return this.exampleService.create(name);
  }
}
```
