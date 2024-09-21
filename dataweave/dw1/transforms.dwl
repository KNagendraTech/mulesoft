%dw 2.0
output application/json
var a1=[1,2,3,4]
var a2=["x","y"]
---
a1 map ((item, index) -> {

    "id": item,
    "Name": a2[index] default ""
})
