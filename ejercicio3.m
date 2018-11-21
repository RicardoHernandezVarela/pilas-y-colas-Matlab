%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

%Expresión en notación posfija.
exp_uno = '2 5 9 * 11 - +';
  
%Llamado a la función evaluarInfija(), indicando la expresión en notación
%posfija y el tamaño para la pila que se utiliza para evaluar la expresión
%y la segunda pila para convertir la expresión a notación infija.
[infija, resultado] = evaluarInfija(exp_uno, 20, 20);

%Impresión de la expresión en notación infija y el resultado de evaluar la
%expresión.
fprintf('La notación infija de la expresión "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_uno, infija, resultado);

%Expresión en notación posfija.
exp_dos = '2 5 * 9 11 - +';
[infija, resultado] = evaluarInfija(exp_dos, 20, 20);
fprintf('La notación infija de la expresión "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_dos, infija, resultado);

%Expresión en notación posfija.
exp_tres = '30 7 % 8 + 2 /';
[infija, resultado] = evaluarInfija(exp_tres, 20, 20);
fprintf('La notación infija de la expresión "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_tres, infija, resultado);

%Expresión en notación posfija.
exp_cuatro = '30 7 8 2 % + /';
[infija, resultado] = evaluarInfija(exp_cuatro, 20, 20);
fprintf('La notación infija de la expresión "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_cuatro, infija, resultado);