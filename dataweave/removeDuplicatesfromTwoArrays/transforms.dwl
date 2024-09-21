%dw 2.0
output application/json
---
flatten(valuesOf(payload)) distinctBy ((item, index) -> item)
