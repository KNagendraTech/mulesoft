%dw 2.0
output application/json
import * from dw::core::Strings
---
(payload map ((item, index) -> {

 (substringBefore(item,":")) : (substringAfter(item,":"))

})) reduce ((item, acc={}) -> acc ++ item)
