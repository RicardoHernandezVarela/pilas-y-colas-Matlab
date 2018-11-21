function [n, stack] = pop(stack)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para extraer el elemento del tope de la pila.

%Con un condicional se verifica si la pila está vacía.
if isEmpty(stack)                                     
    disp('Pop: Empty stack') ; %Si está vacía no se puede extraer nada.                 
    n = []; 
else
    n = stack.top.id;  %Si no está vacía se puede extaer el tope de la pila.   
    stack.top = stack.top.nextnode; %El tope de la pila se asigna al elemento siguiente del que fue extraido.
    stack.size = stack.size-1; %El tamaño de la pila disminuye en una unidad.
end
end
