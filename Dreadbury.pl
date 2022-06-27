 
persona(tiaAgatha).
persona(mayordomo).
persona(charles).
persona(milhouse).

viveEnMansion(tiaAgatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).


odia(tiaAgatha, Alguien):-
    viveEnMansion(Alguien),
    not(Alguien = mayordomo).
  


odia(charles, Alguien):-
    viveEnMansion(Alguien),
    not(odia(tiaAgatha, Alguien)).


odia(mayordomo, Alguien):-
    odia(tiaAgatha, Alguien).

masRico(Alguien,agatha):-
    viveEnMansion(Alguien),
    not(odia(mayordomo,Alguien)).

asesino(Asesino,Alguien):-
    odia(Asesino,Alguien),
    viveEnMansion(Asesino),
    not(masRico(Asesino,Alguien)).

% asesino(Asesino,tiaAgatha).
% Asesino = tiaAgatha 
 
%?- odia(Alguien,milhouse).
%Alguien = tiaAgatha ;
%Alguien = mayordomo ;


%Odio a charles.
%odia(charles,Alguien).
%Alguien = mayordomo ;

%?- odia(Alguien,tiaAgatha).
%Alguien = tiaAgatha ;
%Alguien = mayordomo ;

%- odia(Odiador,Odiado).
%Odiador = Odiado, Odiado = tiaAgatha ;
%Odiador = tiaAgatha,
%Odiado = charles ;
%Odiador = tiaAgatha,
%Odiado = milhouse ;
%Odiador = mayordomo,
%Odiado = tiaAgatha ;
%Odiador = mayordomo,
%Odiado = charles ;
%Odiador = mayordomo,
%Odiado = milhouse ;
%Odiador = charles,
%Odiado = mayordomo ;
%false. 


%odia(mayordomo,_).
%true
