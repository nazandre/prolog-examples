/* source: https://www.cpp.edu/~jrfisher/www/prolog_tutorial/1.html */

factorial(0,1).
factorial(A,B) :- A > 0, C is A-1, factorial(C,D), B is A*D.