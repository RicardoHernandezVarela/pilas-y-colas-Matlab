classdef stack
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Definición de un objeto tipo pila.
%Las propiedades de este objeto son el tope, tamaño actual y tamaño máximo
%de la pila.

    properties
        top
        size
        max_size
    end
    methods
        function obj = stack(max_tam_)
            obj.max_size = max_tam_;
            obj.size = 0;
        end
    end
end