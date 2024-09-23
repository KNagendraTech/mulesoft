%dw 2.0
output application/csv header=false
---
payload mapObject ((value, key, index) -> {

    ( "" : (key)) if(value.extensions[0] ~= "mp4")
})
