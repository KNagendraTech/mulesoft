%dw 2.0
output application/json
var groupTech = payload  reduce ((item, acc={}) -> item ++ acc )
                groupBy ((value, key) -> key)
---
groupTech mapObject ((value, key, index) -> {

    (key): sum(valuesOf(value))
})
