/*
precio_transporte(X,Y). el transporte a X cuesta Y
precio_alojamiento(X,Y,Z). el alojamiento en X cuesta Y en Z
*/
precio_transporte(roma,200).
precio_transporte(londres,250).
precio_transporte(tunez,150).

precio_alojamiento(roma,250,Hotel).
precio_alojamiento(londres,150,Hotel).
precio_alojamiento(tunez,100,Hotel).
precio_alojamiento(roma,150,Hostal).
precio_alojamiento(londres,100,Hostal).
precio_alojamiento(tunez,80,Hostal).
precio_alojamiento(roma,100,Camping).
precio_alojamiento(londres,100,Camping).
precio_alojamiento(Tunez,50,Camping).

precio_viaje(Precio, X, Y)


