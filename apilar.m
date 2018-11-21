function resultado = apilar(max, cadena, toPop)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para procesar una lista de instrucciones sobre una pila
%inicialmente vacia.

%Creaci�n de la pila, el tama�o m�ximo de la pila se define con el
%par�metro max.
    pila = stack(max); 
    
%La lista de instrucciones es la cadena que se introduce como par�metro.
    inst_uno = cadena;

%La funci�n retorna los valores almacendos en la pila en una variable tipo
%string.
    resultado = "";

%Con un ciclo for se recorre la lista de instrucciones, en una variable se
%almacena el valor de la cadena correspondiente a cada iteraci�n. 
    for i=1:length(inst_uno)
        caracter = inst_uno(i);
%Con un condicional se verifica si el valor se encuentra dentro de los car�cteres
%indicados en el parametro toPop, si se cumple la condici�n se saca un
%elemento de la pila, sino ese valor se introduce en la pila.
        if contains(toPop, caracter)
            [~, pila] = pop(pila); %La funci�n pop() saca el elemento del tope de la pila.
        else
            pila = push(pila, inst_uno(i)); %La funci�n push() introduce un elemento al tope de la fila.
        end 
    end

%El valor del tope de la pila se incluye en la cadena del estado final de la pila. 
    resultado = resultado + pila.top.id;
    caracter = pila.top.nextnode;
    
%Con un ciclo for se recorren los valores almacenados en la pila para
%incluirlos en la cadena del estado final de la pila. En cada iteraci�n se
%accesa al valor al que apunta cada elemento de la pila para extraerlo.
    for i=2:pila.size
        valor = caracter.id;
        resultado = resultado + valor;
        caracter = caracter.nextnode;
    end

%Para mostrar los elementos en el orden en que entrar�n a la pila se
%invierte el orden de la cadena del estado final de la pila.
    resultado = reverse(resultado);
end