
/* length */
length2([],0).
length2([_|T],L) :- length2(T,L1), L is L1+1.

/* maximum */
max2(X,Y,R) :- X >= Y, R is X; X < Y, R is Y.
max([],0).
max([H|T], R) :- max(T,R1), max2(H,R1,R).

/* append */
append([],L,L).
append([H|T1],L2,[H|L3]) :- append(T1,L2,L3).
