%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Prueba de la función apilar() con dos listas de instrucciones diferentes.

%Primera lista de instrucciones.
inst_uno = 'EJE*R*CICI***O*F*ACIL*';

%Llamada a la función apilar() con los parámetros de entrada 20 para el
%tamaño de la pila, la lista de instrucciones a procesar y el carácter para
%la operación de extracción. El valor que retorna la función se almacena en
%una variable.
resultado1 = apilar(20, inst_uno, '*');

%Impresión del estado final de la pila.
fprintf('El estado final de la pila es: %s\r\n', resultado1);

%Segunda lista de instrucciones.
inst_dos = 'LA*STI*N*FIR*ST**O*F*ACIL';
resultado2 = apilar(20, inst_dos, '*');
fprintf('El estado final de la pila es: %s\r\n', resultado2);
