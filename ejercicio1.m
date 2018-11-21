%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Prueba de la función para cambiar la primera letra de cada palabra en una frase a
%letras mayúsculas.

%La cadena que ingresa el usuario se almacena en una variable de tipo carácter.
cadena = input('Escribe una cadena: ', 's');
fprintf('\n');

%Se realiza una llamada a la función mayusculas(), el parametro de entrada
%es la cadena de la cual se cambiará la primera letra a mayúsculas. La
%nueva cadena se almacena en una nueva variable.
nueva_cadena = mayusculas(cadena); 

%Impresión de la frase original y la frase con la primera letra de cada
%palabra en mayúsculas.
fprintf('La frase original es: %s\r\n', cadena);
fprintf('La frase con mayúsculas es: %s\r\n', nueva_cadena);
