# prolog-examples

Some examples of Prolog programs.

## Programs
- factorial.pl: factorial function.

## Useful commands
- Load a file: `consult('path-to-file').`
- Display the current contents of the Prolog database: `listing.`
- Quit:  `halt.`

## Quick example: how to compute the factorial 10 ?

```
$ prolog 
Welcome [...]
?- consult('programs/factorial.pl').
% programs/factorial.pl compiled 0.00 sec, 3 clauses
true.

?- listing.

:- thread_local thread_message_hook/3.
:- dynamic thread_message_hook/3.
:- volatile thread_message_hook/3.

factorial(0, 1).
factorial(A, C) :-
	A>0,
	B is A+ -1,
	factorial(B, D),
	C is A*D.
true.

?- factorial(10, Res).
Res = 3628800 .
```