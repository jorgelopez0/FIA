

mcd(N1,N2,N1):-
	N1 =:= N2.
mcd(N1,N2,T):-
	N1 > N2,
	N3 is N1 - N2,
	mcd(N2,N3,T).

mcd(N1,N2,T):-
	N1 < N2,
	N3 is N2 - N1,
	mcd(N1,N3,T).

	