/*
derecha_de(X,Y). X esta inmediatamente a la derecha de Y
encima_de(X,Y). X esta inmediatamente encima de Y
*/

derecha_de(llave,tortuga).
derecha_de(semaforo,llave).
derecha_de(martillo,semaforo).
derecha_de(casa,coche).
derecha_de(taza,casa).
derecha_de(balanza,taza).
derecha_de(perro,bombilla).
derecha_de(lupa,perro).


derecha_de(X,Z):- derecha_de(Y,Z), derecha_de(X,Y) .


encima_de(coche,tortuga).
encima_de(bombilla,coche).
encima_de(casa,llave).
encima_de(perro,casa).
encima_de(cuchara,tenedor).
encima_de(semaforo,cuchara).
encima_de(taza,semaforo).
encima_de(lupa,taza).
encima_de(balanza,martillo).

encima_de(X,Z):- encima_de(Y,Z),encima_de(X,Y).

debajo_de(X,Y):-encima_de(Y,X).

debajo_de(X,Z):-encima_de(Y,X),debajo_de(Y,Z).

izquierda_de(X,Y):-derecha_de(Y,X).

izquierda_de(X,Z):-derecha_de(Y,X),izquierda_de(Y,Z).






