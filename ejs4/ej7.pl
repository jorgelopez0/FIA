fibonacci(0,1).
fibonacci(1,1).

fibonacci(N,X):-
	N > 0,
	M is N-1,
	B is N-2,
	fibonacci(M,R),
	fibonacci(B,T),
	X is R+T.
	
	
	
	