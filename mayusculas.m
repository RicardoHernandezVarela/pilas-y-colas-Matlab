function [copia] = mayusculas(cadena)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para cambiar la primera letra de cada palabra en una frase a
%letras may�sculas.

%Creaci�n de una copia de la cadena original.
copia = repmat(cadena,1);

%Comprobaci�n del primer car�cter. Si es un espacio el siguiente car�cter
%se cambia a may�sculas con la funci�n upper(), sino el primer es el que se
%cambia.
if copia(1) == ' '
    copia(2) = upper(cadena(2));
else
    copia(1) = upper(cadena(1));
end

%Con un ciclo for se recorre la cadena para encontrar la primer letra de
%cada palabra, en una variable se almacena el car�cter actual en cada
%iteraci�n, cuando este es igual a un espacio, el car�cter se cambia a
%may�scula.
for i=2:length(copia)
    caracter = copia(i);
    if caracter == ' '
        copia(i+1) = upper(copia(i+1));
    else
        copia(i) = caracter;
    end
end