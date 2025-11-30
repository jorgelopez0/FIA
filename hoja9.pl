% Hoja 9
% Ejercicio 1
sumar2en2([],[]):-!.
sumar2en2([X],[X]):-!.
sumar2en2([X,Y|Cola],[S|L]):-
	S is X + Y,
	sumar2en2(Cola,L),!.

% Ejercicio 2
dec_bin(0,[]):-!.
dec_bin(1,[1]):-!.
dec_bin(X,L):-
	X > 1,
	C is X // 2,
	R is X mod 2,
	dec_bin(C,L1),
	concatenar(L1,[R],L),!.

% Ejercicio 3
contar(_,[],0):-!.
contar(X,[X|Cola],N):-
	contar(X,Cola,N1),!,
	N is N1 + 1.
contar(X,[Y|Cola],N):-
	X \== Y,
	contar(X,Cola,N),!.


% Ejercicio 4
todos_iguales([_]):-!.
todos_iguales([X,Y|Cola]):-
	X =:= Y,
	todos_iguales([Y|Cola]),!.

% Ejercicio 5
cifras_lista(X,[X]):-
	X < 10.
cifras_lista(X,L):-
	X > 9,
	C is X // 10,
	R is X mod 10,
	cifras_lista(C,L1),
	concatenar(L1,[R],L),!.

% Ejercicio 6
rotar_derecha([],[]).
rotar_derecha([X],[X]):-!.
rotar_derecha([X|Cola],[R,X|L]):-
	quitarultimo([X|Cola],R,[X|L]),!.


quitarultimo([X],X,[]).
quitarultimo([X|Cola],U,[X|R]):-
	quitarultimo(Cola,U,R).

% Ejercicio 7
rotar_derecha_pos(L,0,L).
rotar_derecha_pos(R,N,L):-
	N > 0,
	N1 is N - 1,
	rotar_derecha(R,L1),
	rotar_derecha_pos(L1,N1,L),!.

% Ejercicio 8
repetir(_,0,[]):-!.
repetir(X,N,[X|Cola]):-
	N1 is N - 1,
	repetir(X,N1,Cola),!.

% Ejercicio 9
bueno(juanluis).
bueno(francisco).
caro(juanluis).
razonable(Restaurante):-not(caro(Restaurante)).
	
