function stack = push(stack, value_)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para insertar un elemento en la pila.

%Con un condicional se verifica si la pila está llena.
if isFull(stack)
    disp('Push: Full stack'); %Si está llena no se almacena nada en la pila.
else
    n = node( value_ );  %Si no está llena se genera un nuevo nodo con el valor de entrada.
    n.nextnode = stack.top ;  %Se crea el apuntador hacía el elemento siguiente.
    stack.top = n;  %Se inserta el nuevo elemento al tope de la pila.
    stack.size = stack.size+1; %Se incrementa el tamaño de la pila en una unidad.
end
end
