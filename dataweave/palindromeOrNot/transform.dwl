%dw 2.0
output application/json
---
if(payload.key == payload.key[-1 to 0]) "palindrome" else "not palindrome"
