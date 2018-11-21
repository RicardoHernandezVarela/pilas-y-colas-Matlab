function stack = push(stack, value_)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para insertar un elemento en la pila.

%Con un condicional se verifica si la pila est� llena.
if isFull(stack)
    disp('Push: Full stack'); %Si est� llena no se almacena nada en la pila.
else
    n = node( value_ );  %Si no est� llena se genera un nuevo nodo con el valor de entrada.
    n.nextnode = stack.top ;  %Se crea el apuntador hac�a el elemento siguiente.
    stack.top = n;  %Se inserta el nuevo elemento al tope de la pila.
    stack.size = stack.size+1; %Se incrementa el tama�o de la pila en una unidad.
end
end
