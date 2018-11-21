function queue = enqueue(queue,value_)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

if isFull(queue)
    disp('Enqueue: Full queue') %Si la cola está llena no se puede insertar elemento alguno.
else
    if isEmpty(queue)  %Si la cola no está llena se crea un nuevo nodo y se inserta en la cola.
        newnode = node(value_);
        queue.front = newnode;
        queue.size = queue.size+1;
    else
        queue.front = queue_recur(queue.front,value_); %Con la función queue_recur() se realiza una busqueda por el primer elemento de la cola.
        queue.size = queue.size+1;
    end
end
end
