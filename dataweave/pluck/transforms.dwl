%dw 2.0
output application/json
---
payload pluck ((value, key) -> {(key): value * 10})
