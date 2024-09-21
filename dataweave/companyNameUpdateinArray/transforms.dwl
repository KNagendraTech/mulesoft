%dw 2.0
output application/json
import update from dw::util::Values
---
payload map ((item, index) -> item update "company" with "IBM")
