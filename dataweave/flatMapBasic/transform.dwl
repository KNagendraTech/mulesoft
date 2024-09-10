%dw 2.0
output application/json
---
payload flatMap ((item) -> [item, item * 2])
