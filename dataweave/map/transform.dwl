%dw 2.0
output application/json
---
payload map  {
 
  "customerName": $.name,
  "customerAge": $.age,
  "createdOn": now() as Date

}
