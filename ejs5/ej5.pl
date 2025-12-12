sumadigitos(N,X):-
	N < 10,
	X is N.
	
sumadigitos(N,X):-
	N > 10,
	S is N//10,
 	sumadigitos(S,X1),
	X is X1 + N mod 10.