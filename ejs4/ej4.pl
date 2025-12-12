% enlace(Ciudad1,Ciudad2, Distancia). 

enlace(a,b,3).
enlace(a,c,2).
enlace(c,d,4).
enlace(c,e,5).
enlace(e,f,6).
enlace(e,g,3).
enlace(g,h,7).

ruta(X,Y,D):-enlace(X,Y,D).


ruta(X,Z,D):-
	enlace(X,Y,D1),
	ruta(Y,Z,D2),
	D is D1 + D2.