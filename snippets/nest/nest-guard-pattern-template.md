---
Title: Guard Pattern Template
Description: Code snippet for Guard Pattern Template.
Tags:
  - nestjs
  - nest
  - typescript
  - backend
  - guard
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
