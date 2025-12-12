le_gusta(juan,X):-es_comida(X).
le_gusta(guillermo,cacahuetes).
le_gusta(susana,X):-le_gusta(guillermo,X).

es_comida(manzana).
es_comida(pollo).
es_comida(cacahuetes).

se_come(manzana).
se_come(pollo).
se_come(cacahuetes).


