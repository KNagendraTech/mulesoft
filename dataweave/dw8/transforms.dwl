%dw 2.0
output application/json
import * from dw::core::Arrays
---
(((payload splitBy  "|") divideBy "2") map ((item, index) -> {

   "$(item[1])": item[0]

})) reduce ((item, acc={}) -> acc ++ item)

