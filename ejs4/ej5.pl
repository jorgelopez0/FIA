potencia(X,0,1).

potencia(N1,N2,X):-
	N2 > 0,
	E is N2-1,
	potencia(N1,E,Y),
	X is Y*N1.
	