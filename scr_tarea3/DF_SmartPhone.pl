%Propocisiones Prguntables sobre fallos en la pantalla:
prop(2,'Algunas zonas de la pantalla no responden al tacto',p).
prop(3,'La pantalla no enciende',p).
prop(4,'La pantalla tiene pixeles muertos',p).
prop(5,'Hay fugas de luz(disformidad en colores oscuros) en los bordes de la pantalla',p).
prop(6,'Hay fugas de luz no solo en los bordes de la pantalla',p).
prop(7,'Las im�genes se queden marcadas en la pantalla incluso despu�s de haber cambiado de elementos',p).
prop(8,'La pantalla cambia de color completamente',p).
prop(9,'Las apps se abren solas y el teclado pulsa teclas sin quue toques la pantalla',p).
prop(10,'La pantalla parpadea',p).
prop(11,'La pantalla muestra l�neas verticales y horizontales',p).
prop(12,'La pantalla muestra manchas de distinto color',p).
prop(13,'La pantalla se torna de color blanca',p).
%Propocisiones Prguntables sobre fallos en los datos moviles:
prop(18,'Esta activado el modo avi�n',p).
prop(19,'El SmartPhone no tiene cobertura',p).
prop(20,'La targeta SIM no funciona correctamente',p).
prop(21,'Est� desactivada la opci�n "Seleccionar Red Autom�ticamente" en el SmartPhone',p).
prop(22,'Est� desactivada la opci�n "Itinerancia de Datos" en el SmartPhone',p).
prop(23,'Se desactivo temporalmente el Servicio de la Operadora',p).
prop(24,'El tel�fono tiene establecido un l�mite de consumo en los datos del plan',p).
prop(25,'La red m�vil est� saturada osea hay muchos usuarios conectados a ella',p).
prop(26,'Hubo un cambio de Red en el SmartPhone',p).
%Proposiciones Inferibles:
prop(16,fallo_tactil,i).
prop(17,fallo_retroiluminaci�n,i).
prop(15,fallo_pantalla,i).
prop(27,fallo_datos,i).
prop(28,fallo_red,i).
%Clase
clase(100,objetivos,[15,27]).
%Reglas:
regla(1,o,[2,10,11],16,1.0).
regla(2,o,[5,6,12,13],17,0.9).
regla(3,o,[3,4,7,8,9,16,17],15,0.8).
regla(4,y,[26,21],28,0.7).
regla(5,o,[18,19,20,22,23,24,25],27,0.6).
%Main
main:-
    nl,writeln('Detectando Fallos en un SmartPhone'),
    repeat,
    borrar_pesos,
    peso_prop(15,W),reg_peso,nl,write('Se ha detectado un fallo en la Pantalla del SmartPhone con peso: '),
    fwrite(W,'~2f'),
    peso_prop(27,W),reg_peso,nl,write('Se ha detectado un fallo en el Flujo de Datos M�viles del SmartPhone con peso: '),
    fwrite(W,'~2f'),
    nl,write(' RESUMEN'), reportar_clase(100,_),
  nl,write('Desea otra consulta? [s/n]: '),read(R),
   (R=s->fail;true), nl,nl,write(' FIN '),nl,nl.






