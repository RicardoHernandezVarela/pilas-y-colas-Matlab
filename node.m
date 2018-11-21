classdef node
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Definición de un objeto tipo nodo.
%Las propiedades de este objeto son el id o valor del nodo, y el apuntador
%al nodo siguiente.

    properties
        id
        nextnode
    end
    methods
        function obj = node(id_)
            obj.id  = id_;
        end
    end
end
