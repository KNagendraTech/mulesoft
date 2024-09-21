%dw 2.0
output application/json
---
flatten(payload scan /[a-z]/) joinBy ""
