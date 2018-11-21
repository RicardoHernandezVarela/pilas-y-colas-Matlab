%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Prueba de la funci�n apilar() con dos listas de instrucciones diferentes.

%Primera lista de instrucciones.
inst_uno = 'EJE*R*CICI***O*F*ACIL*';

%Llamada a la funci�n apilar() con los par�metros de entrada 20 para el
%tama�o de la pila, la lista de instrucciones a procesar y el car�cter para
%la operaci�n de extracci�n. El valor que retorna la funci�n se almacena en
%una variable.
resultado1 = apilar(20, inst_uno, '*');

%Impresi�n del estado final de la pila.
fprintf('El estado final de la pila es: %s\r\n', resultado1);

%Segunda lista de instrucciones.
inst_dos = 'LA*STI*N*FIR*ST**O*F*ACIL';
resultado2 = apilar(20, inst_dos, '*');
fprintf('El estado final de la pila es: %s\r\n', resultado2);
