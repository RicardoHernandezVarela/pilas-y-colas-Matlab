function [infija, resultado] = evaluarInfija(inst_uno, tam1, tam2)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para convertir expresiones en notaci�n posfija a notaci�n infija y
%evaluar las operaciones para calcular elresultado.

separado = split(string(inst_uno)); %Separaci�n de los caracteres dentro de la cadena.
operadores = '%/*-+'; %Car�cteres para realizar las operaciones con los elementod de la pila.
infija = ""; %Variabe en la que se almacenan la expresi�n en notaci�n infija.
pila = stack(tam1); %Creaci�n del primer objeto tipo pila.
pila2 = stack(tam2); %Creaci�n del segundo objeto tipo pila.

%Ciclo for para recorrer la pila que se utilizapara evaluar la expresi�n.
for i=1:length(separado)
    valor = separado(i); %En una variable se almacena el car�cter actual.
    switch valor %Con un switch se verifica si el car�cter es un operador.
        case '-'
            [n1, pila] = pop(pila); %Si es un operaor de resta se sacan los dos �ltimos elementos y se restan.
            [n2, pila] = pop(pila);
            resultado = n2-n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '*' 
            [n1, pila] = pop(pila); %Si es un operaor de multiplicaci�n se sacan los dos �ltimos elementos y se multiplican.
            [n2, pila] = pop(pila);
            resultado = n2*n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '+'
            [n1, pila] = pop(pila); %Si es un operaor de suma se sacan los dos �ltimos elementos y se suman.
            [n2, pila] = pop(pila);
            resultado = n2+n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '/'  
            [n1, pila] = pop(pila); %Si es un operaor de divisi�n se sacan los dos �ltimos elementos y se dividen.
            [n2, pila] = pop(pila);
            resultado = n2/n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '%' 
            [n1, pila] = pop(pila);  %Si es un operaor de m�dulo se sacan los dos �ltimos elementos y se calcula el m�dulo.
            [n2, pila] = pop(pila);
            resultado = mod(n2,n1);
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        otherwise
           pila = push(pila, str2double(valor)); %Si el car�cter es un n�mero se inserta en la pila.
    end
    
    if contains(operadores, valor) %Con un condicional if se verifica si el car�cter es un operador.
        [n1, pila2] = pop(pila2); %Si lo es, se sacan los dos �ltimos elementos de la segunda pila.
        [n2, pila2] = pop(pila2);
        infija = '(' + n2 + valor + n1 + ')'; %Se construye una cadena con los n�meros y el operador correspondiente.
        pila2 = push(pila2, infija); %Se introduce en la pila el resultado de concatenar la cadena.
    else
        pila2 = push(pila2, valor); %Si el car�cter es un n�mero se inserta en la pila.
    end

resultado = pila.top.id; %El resultado de evaluar la operaci�n se retorna.
end