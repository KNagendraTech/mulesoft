%dw 2.0
output application/json
import update from dw::util::Values
---
flatten(valuesOf(payload)) distinctBy ((item, index) -> item)
