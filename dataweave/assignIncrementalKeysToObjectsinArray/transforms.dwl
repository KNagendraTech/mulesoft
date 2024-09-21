%dw 2.0
output application/json 
---
payload map ((item, index) -> item mapObject ((value, key, index2) -> {

  "$(key ++ (index + 1))": value

}))
