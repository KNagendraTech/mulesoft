%dw 2.0
output application/json
var arr1= [
    {
        "IDENTITY": "D3000",
        "NM": "DELTA",
        "CODE": "D12",

    },
    {
        "IDENTITY": "E40000",
        "NM": "DELTA",
        "CODE": "D11",

    }
]
var arr2= [
    {
        "CODE": "A11",
        "NAME": "DELTA",
        "ID": "C10000",

    },
    {
        "CODE": "D12",
        "NAME": "DELTA",
        "ID": "D3000",

    },
    {
        "CODE": "E12",
        "NAME": "ECHO",
        "ID": "E5000",

    }
]
---
arr1 flatMap (v) -> (
  arr2 filter (v.IDENTITY == $.ID and v.NM ~= $.NAME)
)

