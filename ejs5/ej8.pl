cuadrado_digitos(N,X):-
	N < 10,
	X is N^2.

cuadrado_digitos(N,X):-
	N >= 10,
	N1 is N//10,
	N2 is N mod 10,
	cuadrado_digitos(N1,X1),
	cuadrado_digitos(N2,X2),
	X is X1 + X2.

feliz(N):-
	feliz_con_contador(N,0).

feliz_con_contador(N,_):-
	cuadrado_digitos(N,X),
	X is 1.

feliz_con_contador(N,C):-
	C < 8,
	cuadrado_digitos(N,X),
	X =\= 1,
	NC is C + 1,
	feliz_con_contador(X,NC).

