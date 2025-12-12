p(0,1).
p(1,1).
p(2,1).

p(N,R):-
	N > 0,
	N2 is N-2,
	N3 is N-3,
	p(N2,R1),
	p(N3,R2),
	R is R1 + R2. 