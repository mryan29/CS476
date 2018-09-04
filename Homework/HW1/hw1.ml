type intlist = Nil | Cons of int * intlist;;
type int_or_list = Int of int | List of intlist;;

let is_nil (x:intlist) : bool = 
	match x with 
		 Nil -> true 
		| _ -> false;;

let rec sum (l:intlist) : int = 
	match l with
  	| Nil -> 0
	| Cons(i, rest) -> i + sum rest;;

let is_pos (x:int_or_list) : bool =
	match x with
	| Int i -> if i > 0 then true else false
	| List l -> if sum l > 0 then true else false;;
