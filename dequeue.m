function [id, queue] = dequeue(queue)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

if isEmpty(queue) 
    disp('Dequeue: Empty stack');  %Si la cola está vacía no se puede extraer elemento alguno.
    id = [] ; 
else
    id = queue.front.id ;  %Si la cola no está vacía se extrae el elemento al frente de la cola.
    queue.front = queue.front.nextnode; %Se asigna la cabeza al elemento siguiente del que se extrajo.
    queue.size = queue.size-1; 
end
end
