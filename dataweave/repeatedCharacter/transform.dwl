%dw 2.0
output application/java
---
((valuesOf(payload.name splitBy "" groupBy ($))) orderBy ((item, index) -> sizeOf(item) ))[-1][0]
