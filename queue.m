classdef queue
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Definición de un objeto tipo cola.
%Las propiedades de este objeto son el frente, tamaño actual y tamaño máximo
%de la cola.

properties
        front  
        size
        max_size
    end
    methods
        function obj = queue(max_tam_)
            obj.max_size = max_tam_;
            obj.size = 0;
        end
    end
end
