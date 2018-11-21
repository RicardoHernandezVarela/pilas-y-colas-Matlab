function value = isEmpty(stack)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para verificar si una pila o cola está vacia.

if stack.size == 0
    value = true; %Si la pila o cola está vacia se retorna el valor verdadero.
else
    value = false; %Si la pila o cola no está vacia se retorna el valor falso.
end
end