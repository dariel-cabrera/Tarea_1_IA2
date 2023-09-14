%preguntas
malestar(X):-nl,write(X),write(' tiene malestar general ? [S/N]'),read(R),R=s.
fiebre(X):-nl,write(X),write(' tiene fiebre ?[S/N]'),read(R),R=s.
tos(X):-nl,write(X),write('tiene tos ?[S/N]'),read(R),R=s.
sec_nas(X):-nl,write(X),write(' tiene secrecion nasal ?[S/N]'),read(R),R=s.
dolor_art_musc(X):-nl,write(X),write(' tiene dolor en las articulaciones ?[S/N]'),read(R),R=s.
rash(X):-nl,write(X),write(' tiene rash ?[S/N]'),read(R),R=s.

%Reglas
gripe(X):-malestar(X),fiebre(X),tos(X),sec_nas(X).
dengue(X):-malestar(X),fiebre(X),dolor_art_musc(X),rash(X).

%Diagnostico
diagnostico(X):-nl,write('Se investiga gripe'),gripe(X),
    nl,write(X),write(' Tiene sintomas de Gripe'),fail.
diagnostico(X):-nl,write('Se investiga Dengue'),dengue(X),
    nl,write(X),write(' Tiene Sospecha de Dengue'),fail.
diagnostico(X):-nl,write(' No se logro el Diagnostico').


