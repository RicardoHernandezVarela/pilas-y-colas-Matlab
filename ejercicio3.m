%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.

%Expresi�n en notaci�n posfija.
exp_uno = '2 5 9 * 11 - +';
  
%Llamado a la funci�n evaluarInfija(), indicando la expresi�n en notaci�n
%posfija y el tama�o para la pila que se utiliza para evaluar la expresi�n
%y la segunda pila para convertir la expresi�n a notaci�n infija.
[infija, resultado] = evaluarInfija(exp_uno, 20, 20);

%Impresi�n de la expresi�n en notaci�n infija y el resultado de evaluar la
%expresi�n.
fprintf('La notaci�n infija de la expresi�n "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_uno, infija, resultado);

%Expresi�n en notaci�n posfija.
exp_dos = '2 5 * 9 11 - +';
[infija, resultado] = evaluarInfija(exp_dos, 20, 20);
fprintf('La notaci�n infija de la expresi�n "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_dos, infija, resultado);

%Expresi�n en notaci�n posfija.
exp_tres = '30 7 % 8 + 2 /';
[infija, resultado] = evaluarInfija(exp_tres, 20, 20);
fprintf('La notaci�n infija de la expresi�n "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_tres, infija, resultado);

%Expresi�n en notaci�n posfija.
exp_cuatro = '30 7 8 2 % + /';
[infija, resultado] = evaluarInfija(exp_cuatro, 20, 20);
fprintf('La notaci�n infija de la expresi�n "%s" es %s\r\n y el resultado es: %0.2f\r\n', exp_cuatro, infija, resultado);