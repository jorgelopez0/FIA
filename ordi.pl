% Ejemplos
miembro(X,[X|_]).
miembro(X,[Y|Cola]):-
	X \== Y,
	miembro(X,Cola).

concatenar([], L, L).
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).

amenor(X,Y):-name(X,L1),name(Y,L2),amenor_aux(L1,L2).
amenor_aux([], [_|_]).
amenor_aux([], []).
amenor_aux([X|_], [Y|_]):-X<Y.
amenor_aux([A|Cola1],[A|Cola2]):-amenor_aux(Cola1,Cola2).

% Ejercicio 1
lista([]).
lista([_|_]).

% Ejercicio 2
longitud([],0).
longitud([_|Cola],L):-
	longitud(Cola,NL),
	L is NL + 1.

% Ejercicio 3
suma([],0).
suma([X|Cola],L):-
	suma(Cola,T),
	L is T + X.

% Ejercicio 4
borrar(X,[X|C],C).
borrar(X,[Y|C],[Y|R]):-
	borrar(X, C, R).
	
% Ejercicio 5
insertar(X,[Y|Cola],[X,Y|Cola]).
insertar(X,[Y|C],[Y|R]):-
	insertar(X,C,R).
insertar(X,[Y|[]],[Y|[X]]).

% Ejercicio 6
creciente([]).
creciente([_]).
creciente([X,Y|Cola]):-
	X =< Y,
	creciente([Y|Cola]).
	
% Ejercicio 7
decreciente([]).
decreciente([_]).
decreciente([X,Y|Cola]):-
	X >= Y,
	decreciente([Y|Cola]).

% Ejercicio 8
sacapos([_|Cola],1,Cola).
sacapos([X|Cola],N,[X|R]):-
	N > 1,
	N1 is N - 1,
	sacapos(Cola, N1, R).
	
	

% Ejercicio 9
maximo([X],X).
maximo([X|Cola],R):-
	maximo(Cola,MaxCola),
	X < MaxCola,
	R = MaxCola.
maximo([X|Cola],R):-
	maximo(Cola,MaxCola),
	X > MaxCola,
	R = X.

% Ejercicio 10
consecut([X,Y|_],X,Y).
consecut([_,Y|Cola],A,B):-
	consecut([Y|Cola],A,B).

% Ejercicio 11
invertir([],[]).
invertir([X],[X]).
invertir([X|Cola],L):-
	invertir(Cola,L1),
	concatenar(L1,[X],L).

% Ejercicio 12
ultimo(X,[X]).
ultimo(X,[_|Cola]):-
	ultimo(X,Cola).

% Ejercicio 13
primeros([_],[]).
primeros([X|Cola],L):-
	primeros(Cola,L1),
	concatenar([X],L1,L).

% Ejercicio 14
% con append
prefijo([],_).
prefijo(L,[X|Cola]):-
	prefijo(L1,Cola),
	concatenar([X],L1,L).
%sin append
prefijo_sin([],_).
prefijo_sin([X|L],[X|Cola]):-
	prefijo_sin(L,Cola).

% Ejercicio 15
% con append¡
sufijo(S,L):-
	concatenar(_,S,L).
% sin append¡
sufijo_sin(L,L).
sufijo_sin(L,[_|Cola]):-
	sufijo_sin(L,Cola).

% Ejercicio 16
sublista(S,L):-
	concatenar(_,R,L),
	prefijo(S,R).

% Ejercicio 17
borrartodos(_,[],[]).
borrartodos(X,[X|Cola],L):-
	borrartodos(X,Cola,L).
borrartodos(X,[Y|L],[Y|R]):-
	X \= Y,
	borrartodos(X,L,R).

% Ejercicio 18
palindromo(L):-
	name(L,L1),
	palindromo_aux(L1).

palindromo_aux([]).
palindromo_aux([_]).
palindromo_aux([X|Cola]):-
	quitar_ultimo(Cola,U,R),
	X =:= U,
	palindromo_aux(R).
	
quitar_ultimo([X],X,[]).
quitar_ultimo([X|Cola],U,[X|R]):-
	quitar_ultimo(Cola,U,R).
	
% Hoja 8
% Ejercicio 1
sumar2en2([],[]).
sumar2en2([X],[X]).
sumar2en2([X,Y|Cola],[S|L1]):-
	S is X + Y,
	sumar2en2(Cola,L1).

% Ejercicio 2
dec_bin(0,[]).
dec_bin(1,[1]).
dec_bin(X,L):-
	X > 1,
	C is X // 2,
	R is X mod 2,
	dec_bin(C,L1),
	concatenar(L1,[R],L).

% Ejercicio 3
familia(persona(juan,perez,50),
persona(maria,alonso,45),
[persona(carlos,perez,20),
persona(andres,perez,18),
persona(elena,perez,12)]).
familia(persona(pedro,lopez,40),
persona(carmen,ruiz,39),
[persona(carlos,lopez,19),
persona(teresa,lopez,8)]).
familia(persona(carlos,martinez,25),
persona(lola,garcia,22),
[]).
edad(persona(_,_,E),E).

% apartado a
ultimo(X,Y,Z):-
	familia(X,Y,L),
	ultimo_elem(L,Z).

ultimo_elem([X],X).
ultimo_elem([_|Cola],U):-
	ultimo_elem(Cola,U).

% apartado b
numhijospar(X,Y,H,N):-
	familia(X,Y,H),
	numhijos(H,N),
	0 is N mod 2.

numhijos([],0).	
numhijos([_|Cola],N):-
	numhijos(Cola,N1),
	N is N1 + 1.

numhijosimpar(X,Y,H,N):-
	familia(X,Y,H),
	numhijos(H,N),
	1 is N mod 2.

% apartado c y d

media(X,Y,M):-
	familia(X,Y,H),
	edad(X,E1),
	edad(Y,E2),
	%mediahijos(H,E3),
	E is (E1 + E2),
	M is E / 2. 

mediahijos([H|Cola],E):-
	numhijos([H|Cola],N),
	edad(H,EN),
	mediahijos(Cola,EN),
	concatenar([EN], L1, L2),
	mediahijos_aux(L2,N).

%mediahijos_aux([X|Cola],N):-

	

% Ejercicio 4
todos_iguales([_]).
todos_iguales([X,Y|Cola]):-
	X =:= Y,
	todos_iguales([Y|Cola]).

% Ejercicio 5
cifras_lista(X,[X]):-
	X < 10.
cifras_lista(X,L):-
	X > 9,
	C is X // 10,
	R is X mod 10,
	cifras_lista(C,L1),
	concatenar(L1,[R],L).

% Ejercicio 6
rotar_derecha([],[]).
rotar_derecha([X],[X]).
rotar_derecha([X|Cola],[R,X|L]):-
	quitar_ultimo2(Cola,R,L).
	

quitar_ultimo2([X],X,[]).
quitar_ultimo2([X|Cola],U,[X|R]):-
	quitar_ultimo2(Cola,U,R).

% Ejercicio 7
rotar_derecha_pos(L,0,L).
rotar_derecha_pos(L,N,R):-
	N > 0,
	N1 is N - 1,
	rotar_derecha(L,L1),
	rotar_derecha_pos(L1,N1,R).
	
% Ejercicio 8
repetir(_,0,[]).
repetir(X,N,[X|Cola]):-
	N > 0,
	N1 is N - 1,
	repetir(X,N1,Cola).

% Ejercicio 9
contar(_,[],0).
contar(X,[X|Cola],N):-
	contar(X,Cola,N1),
	N is N1 + 1.
contar(X,[Y|Cola],N):-
	X \== Y,
	contar(X,Cola,N).

% Ejercicio 10
distintos([]).
distintos([X|Cola]):-
	contar(X,[X|Cola],N),
	N < 2,
	distintos(Cola).

% Ensayo 2
% Ejercicio 1
mezclar([],[],[]).
mezclar(L,[],L).
mezclar([],L,L).
mezclar([X|Cola1],[Y|Cola2],L):-
	X =< Y,
	concatenar([X,Y],L1,L),
	mezclar(Cola1,Cola2,L1).
mezclar([X|Cola1],[Y|Cola2],L):-
	X >= Y,
	concatenar([Y,X],L1,L),
	mezclar(Cola1,Cola2,L1).

% Ejercicio 2
mezclar_corte([],[],[]):-!.
mezclar_corte(L,[],L):-!.
mezclar_corte([],L,L).
mezclar_corte([X|Cola1],[Y|Cola2],L):-
	X =< Y,
	concatenar([X,Y],L1,L),
	mezclar_corte(Cola1,Cola2,L1),!.
mezclar_corte([X|Cola1],[Y|Cola2],L):-
	X >= Y,
	concatenar([Y,X],L1,L),
	mezclar_corte(Cola1,Cola2,L1),!.


% Ejercicio 3
sumaa([],0).

sumaa([X|Cola],R):-
	es_lista(X),
	sumaa(X,R1),
	sumaa(Cola,R2),
	R is R1 + R2.
sumaa([X|Cola],R):-
	not(es_lista(X)),
	sumaa(Cola,R2),
	R is R2 + X.
	

es_lista([]).
es_lista([_|_]).
	
	
