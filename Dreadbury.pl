persona(tiaAgatha).
persona(mayordomo).
persona(charles).
persona(milhouse).

viveEnMansion(tiaAgatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).


odia(tiaAgatha, Alguien):-
    vivieEnDreadbury(Alguien),
    not(Alguien = mayordomo),
  


odia(charles, Alguien):-
    vivieEnDreadbury(Alguien),
    not(odia(tiaAgatha, Alguien)),


odia(mayordomo, Alguien):-
    odia(tiaAgatha, Alguien).

masRico(Alguien,agatha):-
    viveEnLaMansion(Alguien),
    not(odia(mayordomo,Alguien)).

asesino(Asesino,Alguien):-
    odia(Asesino,Alguien),
    viveEnLaMansion(Asesino),
    not(masRico(Asesino,Alguien)).


%?- asesino(Asesino,agatha).
% Asesino = agatha 
 
%?- odia(Alguien,milhouse).
%Alguien = agatha ;
%Alguien = mayordomo ;


%Odio a charles.
%odia(charles,Alguien).
%Alguien = mayordomo ;

%?- odia(Alguien,agatha).
%Alguien = agatha ;
%Alguien = mayordomo ;

%- odia(Odiador,Odiado).
%Odiador = Odiado, Odiado = agatha ;
%Odiador = agatha,
%Odiado = charles ;
%Odiador = agatha,
%Odiado = milhouse ;
%Odiador = mayordomo,
%Odiado = agatha ;
%Odiador = mayordomo,
%Odiado = charles ;
%Odiador = mayordomo,
%Odiado = milhouse ;
%Odiador = charles,
%Odiado = mayordomo ;
%false. 


%odia(mayordomo,_).
%true
