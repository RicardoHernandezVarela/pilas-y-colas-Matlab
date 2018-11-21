function cnode = queue_recur(cnode, value)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

%Con la función queue_recur() se realiza una busqueda por el primer elemento de la cola.
if ~isempty(cnode.nextnode)
    cnode.nextnode = queue_recur(cnode.nextnode,value);
else
    newnode = node(value);
    cnode.nextnode = newnode;
end
end
