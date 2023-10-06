%Proposiciones Preguntables:
prop(1,'dificultad para respirar',p).
prop(2,'sistema inmune bajo',p).
prop(4,'Tos con esputo',p).
prop(5,'escalofrios',p).
prop(7,'fiebre',p).
prop(8,'dolor en el pecho',p).
prop(9,'temperatura corporal baja',p).
prop(10,'diarrea',p).
prop(11,'nauseas',p).
prop(12,'vomito',p).
prop(13,'adulto mayor de 65 años o mas',p).
prop(14,'niño menor de 12 años',p).


%Proposiciones Inferibles:
prop(15,'presenta neumonia',i).
prop(16,'presenta sintomas de neumonia',i).

%Clase:
clase(100,objetivos,[16,15]).

%Reglas:
regla(1,y,[1,2,4,7,9],16,0.9).
regla(2,o,[1,2,4,11,12,13,14,7,10,9,8],15,1.0).



