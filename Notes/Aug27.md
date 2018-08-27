# August 27th, 2018
CS 476 - Programming Language Design
# OCaml: functional language in ML(metalanguage) family
	Strongly-typed w/ references, based on lambda calc w pattern matching
	Closely related to SML, F#
Demo: The Read-Eval-Print loop
```
$ ocaml
# w::
# 3* 4::
# "hi"::
# let b = 3 + 4;;
# let word = "hi";;
# let tup = (b, word);;
# fst tup;;
# fst tup > 0;;
# if fst tup > 0 then "yes" else "no";;
# let f = x -> x + 1;;
# f 3;;
# let f x = x + 1;; 
# #quit;;

$ cat test.ml
print_string "Hello world"
$ ocaml
# #use "test.ml";;
```

cannot change variables

# Inductive data types
can make our own types using `type` keyword
`type season = Spring | Summer | Fall | Winter`
`type val = Intval of int | Stringval of string | Floatval of float` 
	of keyword separates constructor from arguments
`type intlist = Nil | Cons of int * intlist`

# Pattern matching and recursion
```
let get_temp v = match v with
	| Intval i -> print_int i
	| Stringval s -> print_string s
	| Floatval f -> print_float f
```
```
let rec length l = match l with
	| Nil -> 0
	| Cons (i, rest) -> length rest + 1
```

# Lecture 2
Syntax <--
Semantics
Pragmatics

## Context-Free Grammars
Way of describing set of sequence of characters
- Terminals: a, b, c, +, *, (, ...
- Nonterminals:  A, B, C, ...
- Productions: A-> aAc | B | ef

## BNF Grammars
Convenient notation for context-free grammars
- A ::= a | aA
- B ::= b | bB
- S ::= A | B | (S) | SS
- type S = cA of A | cB of B | cParen of S | c2 of S * S

- E ::= <#> | E+E | E-E | E*E | -E
Ocaml type:
	type_E = cInt of int | cAdd of type_E * type_E | ...
- C ::= <var> = E | if E then C else C | C; C | while(E) C
Ocaml type:
	type_C = cIf of type_E * type_C  type_C | ...





