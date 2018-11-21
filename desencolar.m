function cola = desencolar(cola)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para eliminar el elemento del frente de la cola.

%Con un condicional se verifica si la cola esta vacia.
if length(cola) == 0
    disp('La cola está vacía'); %Si la cola está vacía no se puede sacar ningun elemento.
else
   cola(1) = []; %Si la cola no está vacía se elimina el elemento del frente de la cola.
end