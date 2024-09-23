%dw 2.0
output application/json
var arr1= [{
  
  "city": "Rotterdam",
  "country": "Netherlands"

},
{
  
  "city": "Eindhovan",
  "country": "Netherlands"

}]
var arr2= [{
  
  "city": "Amesterdam",
  "country": "Netherlands"

},
{
  
  "city": "Eindhovan",
  "country": "Netherlands"

}]
---
arr1-- (arr2 map {city: $.city, country: $.country})

