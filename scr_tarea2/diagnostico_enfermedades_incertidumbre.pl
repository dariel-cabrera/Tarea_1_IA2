% Base de conocimiento sobre diagnostico de enfermedades

% prop(I,Nombre,Tipo)
% regla(I,Tipo,Ant,Suc,Wr)
% clase(I,Nombre,Lprops)


prop(1,'fiebre',p).
prop(2,'dificultad_respirar ',p).
prop(3,'dolor_muscuslar',p).
prop(4,'fatiga',p).
prop(5,'tos',p).
prop(6,'congestion_nasal',p).
prop(12,'dolor_ojos',p).
prop(13,'glandulas_inflamadas',p).
prop(15,'sarpullido',p).
prop(16,'dolor_cabeza',p).
prop(7,'miccion_frecuente',p).
prop(8,'llagas_no_sanan',p).
prop(9,'vision_borrosa',p).
prop(10,'zonas_piel_oscurecidas',p).
prop(11,'cansancio',p).
prop(14,'entumecido_pies_manos',p).
prop(17,'perdida_peso',p).


% Proposicion inferible

prop(101,'Puede tener Covid19',i).
prop(102,'Puede tener dengue',i).
prop(103,'Puede diabetes tipo II',i).


% Reglas

regla(1,y,[1,2,3,4,5,6],101, 0.8).
regla(2,y,[1,2,3,4,12,13,15,16],102,0.9).
regla(3,y,[7,8,9,10,11,14,17],103,0.5).
