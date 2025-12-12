
entre(N1,N2,N1):-
	N1=<N2.

entre(N1,N2,N3):-
	N1<N2,
	M is N1 + 1,
	entre(M,N2,N3).

divisor(N,X):-
	N > 1,
	entre(1,N,S),
	0 is N mod S,
	X is S.