/* Source: http://www.anselm.edu/homepage/mmalita/culpro/power0.html */

power(X,0,1) :- !.
power(X,N,R) :- N1 is N-1, power(X,N1,R1), R is R1*X.
