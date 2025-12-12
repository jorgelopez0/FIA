/*Primer ejercicio de prolog FIA*/
/* Predicados:
es_inteligente(x). x es inteligente

asignatura_de(X,Y). X es una asignatura de Y

enseña_asignatura(X,Y). X enseña la asignatura Y
profesor_carrera(X,Y). X enseña en la carrera Y

*/
//Hechos
ensena_asignatura(juan,alg).
ensena_asignatura(mujerjuan,ia).

asignatura_de(ia,info).
asignatura_de(alg,mate).

profesor_carrera(X,Y):-ensena_asignatura(X,Z),asignatura_de(Z,Y).

es_inteligente(X):-profesor_carrera(X,info).

