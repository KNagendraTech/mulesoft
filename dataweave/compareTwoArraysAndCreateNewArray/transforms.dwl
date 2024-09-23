%dw 2.0
output application/json skipNullOn="everywhere"
var otherReq = [
  {
    "id": "1",
    "age": "40",
    "Gender": "M",

  },
  {
    "id": "2",
    "age": "35",
    "Gender": "M",

  },
  {
    "id": "4",
    "age": "29",
    "Gender": "M",

  }
]
---
flatten(payload map ((item, index) -> otherReq map ((item1, index) -> if(item.id ~= item1.id) {

  "id" : item1.id,
  "Name" : item.name,
  "age" : item1.age,
  "Gender" : item1.Gender,

} else null)))

