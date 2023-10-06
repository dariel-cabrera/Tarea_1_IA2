 %Proposiciones Preguntables:
prop(1,'Tiene sobrepeso',p).
prop(2,'No hace actividades fisicas',p).
prop(3,'El cuerpo hace resistencia a la insulina',p).
prop(4,'Tiene antecedentes familiares de diabetes',p).
prop(5,'Nivel de azucar alto en sangre',p).
prop(6,'Presion arterial alta',p).
prop(7,'Zona de la piel oscurecidas',p).
prop(8,'miccion frecuente',p).
prop(9,'vision borrosa',p).
prop(10,'aumento del cansancio',p).
prop(11,'entumecimiento e pies y manos',p).
prop(12,'llagas que  no cicatrizan',p).
prop(13,'perdida de peso aparente',p).
prop(14,'la madre tuvo diabetes durante el embarazo',p).


%Proposiciones Inferibles:
prop(15,'prediabetes',i).
prop(16,'presenta sintomas',i).
prop(17,'tiene diabetes mellitud tipo II',i).



%Clase:
clase(100,objetivos,[15,16,17]).


%Reglas:
regla(1,y,[1,2,3,5,6,14],15,0.6).
regla(2,o,[3,4,5,11,10,8],16,0.8).
regla(3,y,[4,13,12,11,10,9,6,5],147,1.0).
