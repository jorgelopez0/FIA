


atributo(animal,puede,respirar).

es_un(ave,animal).

atributo(ave,vuela,bien).
atributo(ave,tiene,plumas).
atributo(ave,pone,huevos).

es_un(gorrion,ave).

atributo(gorrion,patas,cortas).

es_un(gorriolin1,gorrion).

atributo(gorriolin1,color,marron).

es_un(gorriolin2,gorrion).

es_un(canario,ave).

atributo(canario,canta,bien).

es_un(piolin,canario).

atributo(piolin, color, amarillo).

es_un(mamifero,animal).

atributo(mamifero,da,leche).

es_un(oveja,mamífero).

atributo(oveja,da,lana).

es_un(catalina,oveja).

es_un(vaca,mamifero).

atributo(vaca, come, hierba).

es_un(rosenda,vaca).

atributo(rosenda,color,amarillo).

es_un(X,Y):-es_un(X,Y).

es_un(X,Z):-
	es_un(X,Y),
	es_un(Y,Z).
	
atributo(Y,P,V):-
	es_un(Y,X),
	atributo(X,P,V).
	
