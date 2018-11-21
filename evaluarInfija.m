function [infija, resultado] = evaluarInfija(inst_uno, tam1, tam2)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para convertir expresiones en notación posfija a notación infija y
%evaluar las operaciones para calcular elresultado.

separado = split(string(inst_uno)); %Separación de los caracteres dentro de la cadena.
operadores = '%/*-+'; %Carácteres para realizar las operaciones con los elementod de la pila.
infija = ""; %Variabe en la que se almacenan la expresión en notación infija.
pila = stack(tam1); %Creación del primer objeto tipo pila.
pila2 = stack(tam2); %Creación del segundo objeto tipo pila.

%Ciclo for para recorrer la pila que se utilizapara evaluar la expresión.
for i=1:length(separado)
    valor = separado(i); %En una variable se almacena el carácter actual.
    switch valor %Con un switch se verifica si el carácter es un operador.
        case '-'
            [n1, pila] = pop(pila); %Si es un operaor de resta se sacan los dos últimos elementos y se restan.
            [n2, pila] = pop(pila);
            resultado = n2-n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '*' 
            [n1, pila] = pop(pila); %Si es un operaor de multiplicación se sacan los dos últimos elementos y se multiplican.
            [n2, pila] = pop(pila);
            resultado = n2*n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '+'
            [n1, pila] = pop(pila); %Si es un operaor de suma se sacan los dos últimos elementos y se suman.
            [n2, pila] = pop(pila);
            resultado = n2+n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '/'  
            [n1, pila] = pop(pila); %Si es un operaor de división se sacan los dos últimos elementos y se dividen.
            [n2, pila] = pop(pila);
            resultado = n2/n1;
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        case '%' 
            [n1, pila] = pop(pila);  %Si es un operaor de módulo se sacan los dos últimos elementos y se calcula el módulo.
            [n2, pila] = pop(pila);
            resultado = mod(n2,n1);
            pila = push(pila, resultado); %El resultado se inserta en la pila.
        otherwise
           pila = push(pila, str2double(valor)); %Si el carácter es un número se inserta en la pila.
    end
    
    if contains(operadores, valor) %Con un condicional if se verifica si el carácter es un operador.
        [n1, pila2] = pop(pila2); %Si lo es, se sacan los dos últimos elementos de la segunda pila.
        [n2, pila2] = pop(pila2);
        infija = '(' + n2 + valor + n1 + ')'; %Se construye una cadena con los números y el operador correspondiente.
        pila2 = push(pila2, infija); %Se introduce en la pila el resultado de concatenar la cadena.
    else
        pila2 = push(pila2, valor); %Si el carácter es un número se inserta en la pila.
    end

resultado = pila.top.id; %El resultado de evaluar la operación se retorna.
end