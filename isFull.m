function value = isFull(stack)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para verificar si una pila o cola está llena.

if stack.size == stack.max_size
    value = true; %Si la pila o cola está llena se retorna el valor verdadero.
else
    value = false; %Si la pila o cola no llena vacia se retorna el valor falso.
end
end