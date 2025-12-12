/* ejercicio 2 FIA prolog
Predicados:

ayuda_a(X,Y). X ayuda a Y
trabaja_con(X,Y). X trabaja con Y
es_amigo_de(X,Y). X es amigo de Y
vive_con(X,Y). X vive con Y

Hechos:
*/
es_amigo_de(antonio,carlos).

trabaja_con(juan,Y):-es_amigo_de(Y,carlos).

ayuda_a(antonio,Y):-trabaja_con(Y,antonio).

vive_con(X,manolo):-ayuda_a(X,juan).

