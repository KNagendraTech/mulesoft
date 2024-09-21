%dw 2.0
output application/json 
---
[
    typeOf("a b"),
    typeOf(34),
    typeOf([1,2]),
    typeOf({}),
    typeOf(0.2),
    typeOf(true)
    
] 
