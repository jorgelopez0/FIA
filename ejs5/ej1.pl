entre(N1,N2,N1):-
N1=<N2.

entre(N1,N2,N3):-
N1<N2,
M1 is N1+1,
entre(M1,N2,N3).

%a
suma(1,1).

suma(N,X):-
N>1,
N1 is N-1,
suma(N1,X1),
X is (N+X1).

%b
suma_intervalo(N1,N2,T):-
	entre(N1,N2,X),
	suma(X,N),
	0 is N mod 2,
	T is N.
	
	


