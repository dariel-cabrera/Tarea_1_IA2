%Proposiciones Preguntables:
prop(1,'Tos intensa desde 3 semanas o mas',p).
prop(2,'Dolor en el pecho',p).
prop(3,'Tos con sangre ',p).
prop(4,'Tos con esputo',p).
prop(5,'fatiga',p).
prop(6,'escalofrios',p).
prop(7,'fiebre',p).
prop(8,'sudores nocturnos',p).
prop(9,'analisis positivo a la tuberculosis',p).
prop(10,'sin sintomas',p).
prop(11,'no se siente mal',p).
prop(12,'sistema inmune bajo',p).

%Proposiciones Inferibles:
prop(13,'presenta tuberculosis pulmonar',i).
prop(14,'presenta sintomas de tuberculosis',i).
prop(15,'tiene tuberculosis latente',i).



%Clase:
clase(100,objetivos,[13,14,15]).


%Reglas:
regla(1,o,[1,2,3,5,6,7],13,0.7).
regla(2,o,[12,2,4,5,7,10,8],14,0.8).
regla(3,y,[4,10,11,9],15,1.0).
