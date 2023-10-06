%Base de conocimiento
%Preposicion
prep(1,'Se quedo sin combustible',p).
prep(2,'El deposito de combustible se vacea rapido',p).
prep(3,'Persibe olor a gasolina',p).
prep(4,'Esta suelta la correa dentada',p).
prep(5,'Esta suelta la cadena de distribucion',p).
prep(6,'Arranque lento del motor',p).
prep(7,'Mal funcionamiento de los dispositivos electronicos',p).
prep(8,'Bateria Hinchada',p).
prep(9,'Olor a huevos podridos',p).
prep(10,'El coche no arranca a la primera',p).
prep(11,'El motor no arranca pese a que se encienden los faros',p).
prep(12,'Ruidos extraños al girar la llave de contacto',p).
prep(13,'Arranque con mucho humo',p).


%Preposicion inferible
prep(101,'Fallo en el sistema de combustible',i).
prep(102,'Fallo con el sistema de transmisión',i).
prep(103,'Bateria dañada o muerta',i).
prep(104,'Motor de arranque defectuoso',i).

clase(20,objectivos,[101,102,103,104]).

%Las reglas
regla(1,y,[1,2,3],101,0.9).
regla(2,o,[4,5],102,0.8).
regla(3,o,[6,7,8,9,10],103,1.0).
regla(4,o,[10,11,12,13],104,0.6).





