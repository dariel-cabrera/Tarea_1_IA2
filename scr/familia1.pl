%Los hechos
varon(pepe).
varon(pepin).
hembra(maria).
hembra(mary).
hembra(elsa).
hembra(lolita).
progenitor(pepe,pepin).
progenitor(pepe,mary).
progenitor(maria,pepin).
progenitor(maria,mary).
progenitor(pepin,lolita).
progenitor(elsa,lolita).

%Las Reglas
padre(X,Y):- varon(x),progenitor(X,Y).
madre(X,Y):- hembra(x),progenitor(X,Y).
hijo(X,Y):- varon(x),progenitor(Y,X).
hijo(X,Y):- hembra(x),progenitor(Y,X).







