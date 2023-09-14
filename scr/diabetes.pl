%preguntas:
llagas_que_no_sanan(X):-nl,write(X),write(' Tiene llagas que no sanan?[S/N]'),read(R),R=s.
visión_borrosa(X):-nl,write(X),write(' Tiene vision borrosa?[S/N]'),read(R),R=s.
entumecimiento_de_las_manos_y_pies(X):-nl,write(X),write(' Tiene entumecimiento de las manos y pies?[S/N]'),read(R),R=s.
zona_de_la_piel_oscurecida(X):-nl,write(X),write(' Tiene zona de la piel oscurecida?[S/N]'),read(R),R=s.
micción_frecuente(X):-nl,write(X),write(' Tiene miccion frecuente?[S/N]'),read(R),R=s.
cansancio(X):-nl,write(X),write(' Tiene cansancio?[S/N]'),read(R),R=s.
perdida_de_peso_sin_razón(X):-nl,write(X),write(' Tiene perdida de peso sin razon ?[S/N]'),read(R),R=s.

%Regla:
diabetes_tipo_2(X):-llagas_que_no_sanan(X),visión_borrosa(X),entumecimiento_de_las_manos_y_pies(X),zona_de_la_piel_oscurecida(X),micción_frecuente(X),cansancio(X),perdida_de_peso_sin_razón(X).

%Diagnostico:
diagnostico(X):-nl,write('Se investiga Diabetes de tipo 2'),diabetes_tipo_2(X),
    nl,write(X),write(' Tiene sintomas de Diabetes de tipo 2').
diagnostico(X):-nl,write('NO SE LOGRO DIGNOSTICO').
