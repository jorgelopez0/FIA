sumaimpares(1,1).

sumaimpares_aux(1,1,1).

sumaimpares_aux(N,S,M):-
	N > 1, M > 1,
	N2 is N-1,
	M2 is M-2,
	sumaimpares_aux(N2,S2,M2),
	S is S2+M.

sumaimpares(N,R):-
	N > 1,
	M is N*2 - 1,
	sumaimpares_aux(N,R,M).



entre(N1,N2,N1):-
	N1=<N2.

entre(N1,N2,N3):-
	N1<N2,
	M1 is N1 + 1,
	entre(M1,N2,N3).


	