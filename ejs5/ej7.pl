entre(N1,N2,N1):-
	N1=<N2.

entre(N1,N2,N3):-
	N1<N2,
	M is N1 + 1,
	entre(M,N2,N3).

divisor_propio(N,X):-
	N > 0,
	entre(1,N,S),
	0 is N mod S,
	S =\= N,
	X is S.

	
suma_divisores(N,X):-
	sumadivisores_aux(N,1,0,X).

sumadivisores_aux(N,D,Acc,Acc):-
	D > N.

sumadivisores_aux(N,D,Acc,X):-
	D =< N,
	divisor_propio(N,D), 
	NuevoAcc is Acc + D,
	D1 is D + 1,
	sumadivisores_aux(N,D1, NuevoAcc, X).

sumadivisores_aux(N,D,Acc,X):-
	D =< N,
	\+ divisor_propio(N,D),
	D1 is D + 1,
	sumadivisores_aux(N,D1,Acc,X).

amigos(N1,N2):-
	N1 > 0, N2 > 0,
	suma_divisores(N1,X1),
	suma_divisores(N2,X2),
	N1 =:= X2.
	N2 =:= X1.

perfecto(N1):-
	N1 > 0,
	suma_divisores(N1,X1),
	N1 =:= X1.


