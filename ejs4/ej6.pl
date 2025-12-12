producto(_,0,0).
producto(0,_,0).
producto(X,Y,P):-
	X > 0,
	Y > 0,
	M is Y-1,
	producto(X,M,S),
	P is S+X.
	
	
	
	
