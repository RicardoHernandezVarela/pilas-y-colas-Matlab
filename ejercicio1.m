%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Prueba de la funci�n para cambiar la primera letra de cada palabra en una frase a
%letras may�sculas.

%La cadena que ingresa el usuario se almacena en una variable de tipo car�cter.
cadena = input('Escribe una cadena: ', 's');
fprintf('\n');

%Se realiza una llamada a la funci�n mayusculas(), el parametro de entrada
%es la cadena de la cual se cambiar� la primera letra a may�sculas. La
%nueva cadena se almacena en una nueva variable.
nueva_cadena = mayusculas(cadena); 

%Impresi�n de la frase original y la frase con la primera letra de cada
%palabra en may�sculas.
fprintf('La frase original es: %s\r\n', cadena);
fprintf('La frase con may�sculas es: %s\r\n', nueva_cadena);
