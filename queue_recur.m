function cnode = queue_recur(cnode, value)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.

%Con la funci�n queue_recur() se realiza una busqueda por el primer elemento de la cola.
if ~isempty(cnode.nextnode)
    cnode.nextnode = queue_recur(cnode.nextnode,value);
else
    newnode = node(value);
    cnode.nextnode = newnode;
end
end
