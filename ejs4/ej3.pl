% factorial(X,Y). Y es el factorial de X

factorial(0,1). % caso base

factorial(N,X):- 
	N>0,
	M is N-1,
	factorial(M,Y),
	X is Y*N.