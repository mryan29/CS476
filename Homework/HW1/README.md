# Homework1

To receive full credit for the following problems, make sure your code compiles, and do not use mutable references (i.e., the ref keyword).

1. (3 points) In class, we defined a type intlist of lists of integers as

`type intlist = Nil | Cons of int * intlist`

Write a function is nil : intlist -> bool that is true for Nil and false for any non-Nil list.

2. (3 points) Write a function sum : intlist -> int that returns the sum of all the elements of an intlist.

3. (4 points) Define a type int or list that has two constructors: Int, which takes an int, and List, which takes an intlist. Write a function is pos : int or list -> bool that is true for any positive int and any list whose sum (as defined in problem 2) is positive, and false otherwise. (A number is positive if it is greater than 0.)