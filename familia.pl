/* Predicados para familias */
/*
hombre(X): X es hombre
mujer(X): X es mujer

madre(X,Y): X es madre de Y
padre(X,Y): X es padre de Y

hijo(X,Y): X es hijo de Y
hija(X,Y): X es hija de Y

hermano(X,Y): X es hermano de Y
hermana(X,Y): X es hermana de Y

abuelo(X,Y): X es abuelo de Y
abuela(X,Y): X es abuela de Y
*/

hombre(pedro).
hombre(juan).
hombre(jose).
hombre(manuel).
hombre(fernando).
hombre(felipe).
hombre(javier).


mujer(paula).
mujer(margarita).
mujer(maria).
mujer(virginia).
mujer(isabel).
mujer(eva).
mujer(alicia).

padre(pedro,juan).
padre(pedro,margarita).
padre(pedro,paula).
padre(juan,isabel).
padre(juan,fernando).
padre(jose,felipe).
padre(manuel,javier).
padre(manuel,eva).
padre(manuel,alicia).

madre(maria,juan).
madre(maria,margarita).
madre(maria,paula).
madre(virginia,isabel).
madre(virginia,isabel).
madre(margarita,felipe).
madre(paula,javier).
madre(paula,eva).
madre(paula,alicia).

hijo(H,M,P):-hombre(H),madre(M,H),padre(P,H).
hija(H,M,P):-mujer(M),madre(M,H),padre(P,H).

hermano(X,Y):-hombre(X),madre(M,X),madre(M,Y),padre(P,X),padre(P,Y),X\=Y.
hermana(X,Y):-mujer(X),madre(M,X),madre(M,Y),padre(P,X),padre(P,Y),X\=Y.

abuelo(X,Z):-padre(X,Y),padre(Y,Z).
abuelo(X,Z):-padre(X,Y),madre(Y,Z).

abuela(X,Z):-madre(X,Y),madre(Y,Z).
abuela(X,Z):-madre(X,Y),padre(Y,Z).