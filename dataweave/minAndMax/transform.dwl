%dw 2.0
output application/json
---
{
    "min": min(payload),
    "max": max(payload)
}
