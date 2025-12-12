/* Predicados:
	es_rubio(X). X es rubio
	es_moreno(X). X es moreno

	padre(X,Y). X es padre de Y
	hijo(X,Y). X es hijo de Y
	abuelo(X,Y). X es abuelo de Y

*/

es_rubio(marcos).
es_moreno(juan).

padre(pedro,juan).
padre(marcos,pedro).
padre(juan,ramon).
padre(jorge,marcos).

hijo(X,Y):-padre(Y,X).
abuelo(X,Z):-padre(X,Y),padre(Y,Z).
