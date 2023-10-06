 %Proposiciones Preguntables:
prop(1,'Posee una sola hornilla',p).
prop(2,'Posee dos hornillas',p).
prop(3,'Potencia m�xima sostenida superior a 2500w',p).
prop(4,'Consumo electrico superior a 2500kw/h',p).
prop(5,'Tarda m�s de 15 minutos en calentar',p).
prop(6,'Una sola hornilla encendida',p).
prop(7,'Dos hornillas encendidas',p).
prop(8,'Potencia m�xima sostenida superior a 1500w',p).
prop(9,'Potencia m�xima sostenida de la primera hornilla superior a 1500w',p).
prop(10,'Potencia maxima sostenida de la segunda hornilla superior a 1000w',p).
%Proposiciones Inferibles:
prop(11,fallo_c1h,i).
prop(12,fallo_c2h,i).
prop(13,condicion1,i).
prop(14,condicion2,i).
prop(15,condicion3,i).
prop(16,condicion4,i).
prop(17,condicion5,i).
%Clase:
clase(100,objetivos,[11,12]).
%Reglas:
regla(1,o,[3,4,5],13,1.0).
regla(2,y,[1,13],11,0.9).
regla(3,o,[8,5],14,0.8).
regla(4,y,[2,6,14],15,0.7).
regla(5,o,[9,10,5],16,0.6).
regla(6,y,[2,7,16],17,0.5).
regla(7,o,[15,17],12,0.4).
%Main
main:-

    nl,writeln('Detectando Fallos en Cocinas El�ctricas teniendo en cuenta la Cantidad de Hornillas'),
    repeat,
    borrar_pesos,
    peso_prop(11,W),reg_peso,nl,write('Se ha detectado un fallo de temperatura en la Cocina Electrica de 1 hornilla con peso: '),
    fwrite(W,'~2f'),
    peso_prop(11,W),reg_peso,nl,write('Se ha detectado un fallo de temperatura en la Cocina Electrica de 2 hornilla con peso: '),
    fwrite(W,'~2f'),
    nl,write(' RESUMEN'), reportar_clase(100,_), nl,write('Desea otra consulta? [s/n]: '),read(R),
   (R=s->fail;true), nl,nl,write(' FIN '),nl,nl.

















