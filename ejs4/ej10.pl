sucesion(0,1).

sucesion(N,X):-
	N > 0,
	0 is N mod 2,
	N1 is N - 1,
	sucesion(N1,Y),
	X is Y*2.

sucesion(N,X):-
	N > 0,
	0 =\= N mod 2,
	N1 is N - 1,
	sucesion(N1,Y),
	X is (Y*2) + 1.

	