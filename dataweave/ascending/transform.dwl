%dw 2.0
output application/json
---
payload orderBy ((item, index) -> item)
