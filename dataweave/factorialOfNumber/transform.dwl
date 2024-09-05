%dw 2.0
output application/json
---
(1 to payload.number) reduce ((item,acc) -> item * acc)
