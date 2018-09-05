# Wednesday, September 5th - Dynamic Semantics

## Logistics
- Grades for HW1 should be released friday or next monday.
- HW2 due Wed, Sept. 19th. 

## Dynamic Semantics
- What is the "meaning" of a program?
- **Operational semantics**: values it computes, intermediate states (What we will mostly focus on)
- **Axiomatic semantics**: specification it fulfills, pre/post conditions it satisfies
- **Denotational semantics**: mathematical function it implements, the program in another language it corresponds to

## Big step operational semantics
- describe how expresssions compute directly to values
- e &darr; v means "expression e evaluates to value p"
- roughly same structure as interpreter
- defined by system of inference rules

## Expressions
Interpreter   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Semantics

Int i -> IntV I &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(i is a number) / i &darr; i

Add (e1, e2) -> eval e1 + eval e2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e1 &darr; i1 &nbsp; e2 &darr; i2 &nbsp; (i = i1 + i2) / e1 + e2 &darr; i

...

