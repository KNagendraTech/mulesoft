%dw 2.0
output application/json
var arr = (2 to (payload.number/2))
var remainders = arr map ((item,index) ->  payload.number mod item)
---
if (payload.number == 2) "Prime Number"

else if (remainders contains  0) "Not a Prime Number"

else "Prime Number"
