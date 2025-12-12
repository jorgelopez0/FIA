producto(_,0,0).
producto(0,_,0).
producto(X,Y,P):-
	X > 0,
	Y > 0,
	M is Y-1,
	producto(X,M,S),
	P is S+X.

entre(N1,N2,N1):-
	N1=<N2.

entre(N1,N2,N3):-
	N1 < N2,
	M is N1 + 1,
	entre(M,N2,N3).

productosDeMulti5(I,S,F,P):-
	entre(I,S,N),
	0 is N mod 5,
	producto(N,F,P).