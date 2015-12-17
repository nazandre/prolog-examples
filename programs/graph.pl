/* Source: https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_15A.pl */

/* graph description */
edge(A,B).
edge(A,C).
edge(C,E).
edge(E,F).
edge(B,F).

/* undirected graph (bi-directionnal links) */
connected(X,Y) :- edge(X,Y) ; edge(Y,X).




