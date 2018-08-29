# Aug29

# Language 1: Expressions
- Simple arithmetic, boolean operations
- Every term computes to a *value*, either int or bool
- That's it

- Arithmetic operators: plus, minus, times
- Boolean operators: and, or, not, comparison, if-then-else

- 3 + 5 * 9
- if 1 = 0 or 1 = 1 then 2 else 4

## Expressions Syntax
- Arithmetic operators: plus, minus, times
- Boolean operators: and, or, not, comparison, if-then-else

BNF Grammar:
```
E ::= <#>
  | E+E | E-E | E*E
  | <bool>
  | E and E | E or E
  | not E
  | E=E
  | if E then E else E
```
`<#>` and `<bool>` means I'm going to include numbers and booleans

Do we need to include <#>? Yes, because otherwise our only terminating symbols are T and F and won't be able to do anything with arithmetic

Nothing about this grammar stops us from doing arithmetic using booleans

Do we need to explicitly include T or F? Yes if we want them to explicitly exist as T or F. However, we could define 0 = 0 as true and 0=1 as false instead.

In OCaml Data types...
type exp = Int of int
  | Add of exp * exp | ...
  | Bool of bool
  | And of exp *exp | ...
  | Not of exp
  | Eq of exp * exp
  
  ## Interpreter
  - Every term computes to a value, either int or bool
  type value = IntV of int | BoolV of bool
  
  let rec eval (e:exp) : value = (* let erc eval e=*)
| If of exp * exp * exp
....

