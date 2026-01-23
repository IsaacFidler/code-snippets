---
Title: Guard Pattern Template
Description: Code snippet for Guard Pattern Template.
Tags:
  - TODO: add tags
---

```txt
@Injectable()
export class AuthGuard implements CanActivate {
  canActivate(context: ExecutionContext): boolean {
    const request = context.switchToHttp().getRequest();
    return request.user != null;
  }
}

// Usage
@UseGuards(AuthGuard)
@Query(() => [Event])
events() { /* ... */ }
```
