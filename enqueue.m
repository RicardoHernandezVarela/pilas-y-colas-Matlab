function queue = enqueue(queue,value_)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.

if isFull(queue)
    disp('Enqueue: Full queue') %Si la cola est� llena no se puede insertar elemento alguno.
else
    if isEmpty(queue)  %Si la cola no est� llena se crea un nuevo nodo y se inserta en la cola.
        newnode = node(value_);
        queue.front = newnode;
        queue.size = queue.size+1;
    else
        queue.front = queue_recur(queue.front,value_); %Con la funci�n queue_recur() se realiza una busqueda por el primer elemento de la cola.
        queue.size = queue.size+1;
    end
end
end
