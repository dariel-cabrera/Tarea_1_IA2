%Base de Conocimientos
%Preposicion
prep(1,'zona_presion_baja',p).
prep(2,'temperatura_atmosferica',p).
prep(3,'vientos_depresion',p).
prep(4,'vientos_ciclon',p).
prep(5,'vientos_huracan',p).

%Preposicion inferible
prep(10,'depresion_atmosferica',i).
prep(11,'ciclon_tropical',i).
prep(12,'huracan',i).

clase(20,objetivos,[10,11,12]).

%Reglas
regla(30,y,[1,2,3],10,0.9).
regla(31,y,[1,2,4],11,0.8).
regla(32,y,[1,2,5],12,1.0).

%Programa principal


main:- nl,write('CONSULTA').
nl,nl,
    borrar_pesos,
    write('Entre el ID de la prop a investigar'),
    read(I),
    preguntar(Nom,W):-nl,nl,write('Diga su grado de certeza de '),
                  nl,nl,write(Nom), write(' [-1,1]: '),read(W),
    peso_prop(I,W),
nl,nl,write('RESULTADO'),
    reportar_prop(I).






