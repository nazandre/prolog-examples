/* maximum of two and three numbers */

max2(X,Y,R) :- X >= Y, R is X; X < Y, R is Y.
max3(X,Y,Z,R) :- max2(X,Y,R1), max2(R1,Z,R).

