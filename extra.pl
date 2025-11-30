% PRACTICA 2
% Ejercicio 3
media_aritmetica(X,Y,M):-
	M is (X+Y)/2.

% Ejercicio 4
cuadrado(X,C):-
	C is X*X.

% Ejercicio 7
bisiesto(A):-
	multiplo(A,4),
	no_multiplo(A,100).

bisiesto(A):-
	multiplo(A,4),
	multiplo(A,100),
	multiplo(A,400).

% A es multiplo de B
multiplo(A,B):-
	0 is A mod B.

no_multiplo(A,B):-
	0 =\= A mod B.

