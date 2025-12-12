potencia(X,0,1).

potencia(N1,N2,X):-
	N2 > 0,
	E is N2-1,
	potencia(N1,E,Y),
	X is Y*N1.

entre(N1,N2,N1):-
	N1=<N2.

entre(N1,N2,N3):-
	N1<N2,
	M1 is N1+1,
	entre(M1,N2,N3).

potenciasDeMulti5(I,S,E,N,R):-
	entre(I,S,N),
	0 is N mod 5,
	potencia(N,E,R).
	