%dw 2.0
output application/json
---
payload map ((item, index) -> {
 
  "customerName": item.name,
  "customerAge": item.age,
  "createdOn": now() as Date

})
