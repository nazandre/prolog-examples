/* Source: https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_15A.pl */

/* graph description */
edge(a,b).
edge(a,c).
edge(c,e).
edge(e,f).
edge(b,f).

/* undirected graph (bi-directionnal links) */
connected(X,Y) :- edge(X,Y) ; edge(Y,X).

/* path between two vertices */
%% not correclty tested, may be buggy
path(X,Y,[X,Y]) :- connected(X,Y).
path(X,Z,Path) :- connected(Y,Z), Z \= X, path(X,Y,P1), append(P1,[Z],Path).

