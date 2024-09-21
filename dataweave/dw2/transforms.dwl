%dw 2.0
output application/json
---
(payload reduce ((item, acc) -> item + acc )) as Number / sizeOf(payload)
