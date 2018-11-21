function [copia] = mayusculas(cadena)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para cambiar la primera letra de cada palabra en una frase a
%letras mayúsculas.

%Creación de una copia de la cadena original.
copia = repmat(cadena,1);

%Comprobación del primer carácter. Si es un espacio el siguiente carácter
%se cambia a mayúsculas con la función upper(), sino el primer es el que se
%cambia.
if copia(1) == ' '
    copia(2) = upper(cadena(2));
else
    copia(1) = upper(cadena(1));
end

%Con un ciclo for se recorre la cadena para encontrar la primer letra de
%cada palabra, en una variable se almacena el carácter actual en cada
%iteración, cuando este es igual a un espacio, el carácter se cambia a
%mayúscula.
for i=2:length(copia)
    caracter = copia(i);
    if caracter == ' '
        copia(i+1) = upper(copia(i+1));
    else
        copia(i) = caracter;
    end
end