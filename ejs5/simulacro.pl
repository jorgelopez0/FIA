primo(N):-
	N > 2,
	sin_divisores(N,2).


sin_divisores(X,D):-
	D >= X.

sin_divisores(X,D):-
	X mod D =\= 0,
	D1 is D.
	
	
conjGB(N,P1,P2):-
	N > 3.

conjGB(N,P1,P2):-
	
