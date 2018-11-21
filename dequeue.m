function [id, queue] = dequeue(queue)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.

if isEmpty(queue) 
    disp('Dequeue: Empty stack');  %Si la cola est� vac�a no se puede extraer elemento alguno.
    id = [] ; 
else
    id = queue.front.id ;  %Si la cola no est� vac�a se extrae el elemento al frente de la cola.
    queue.front = queue.front.nextnode; %Se asigna la cabeza al elemento siguiente del que se extrajo.
    queue.size = queue.size-1; 
end
end
