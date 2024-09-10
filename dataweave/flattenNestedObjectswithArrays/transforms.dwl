%dw 2.0
output application/json
---
{
  name: payload.person.name,
  hobbies: flatten(payload.person.hobbies)
}
