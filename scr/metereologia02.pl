%Preguntas:
zona_presion_es_baja(X):-nl,write(X),write(: ),write('La presion es baja en la zona donde se está formando la maza ciclónica? [S/N]'),read(R),R=s.
temperatura_atmosferica_es_alta(X):-nl,write(X),write(: ),write('La temperatura atmosferica es superior a 26 grados en la zona donde se está formando la maza ciclonica? [S/N]'),read(R),R=s.
vientos_depresion(X):-nl,write(X),write(: ),write('Los vientos oscilan entre 24 y 63 km/h? [S/N]'),read(R),R=s.
vientos_ciclon(X):-nl,write(X),write(: ),write('Los vientos oscilan entre 63 y 116 km/h? [S/N]'),read(R),R=s.
vientos_huracan(X):-nl,write(X),write(: ),write('Los vientos superan los 119 km/h? [S/N]'),read(R),R=s.

%Reglas:
depresion_atmosferica(X):-zona_presion_es_baja(X),temperatura_atmosferica_es_alta(X),vientos_depresion(X).
ciclon_tropical(X):-zona_presion_es_baja(X),temperatura_atmosferica_es_alta(X),vientos_ciclon(X).
huracan(X):-zona_presion_es_baja(X),temperatura_atmosferica_es_alta(X),vientos_huracan(X).

%Resultados:
pronostico(X):-nl,write(X),write(: ),write('Se investiga fenomeno atmosferico'),depresion_atmosferica(x),nl,write('Es una Depresion Tropical.'),fail.
pronostico(X):-nl,write(X),write(: ),write('Se investiga fenomeno atmosferico'),ciclon_tropical(X),nl,write('Es un Ciclon Tropical.'),fail.
pronostico(X):-nl,write(X),write(: ),write('Se investiga fenomeno atmosferico'),huracan(X),nl,write('Es un Huracan.'),fail.
pronostico(x):-nl,write('No se pudo realizar el Pronostico').
