classdef stack
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Definici�n de un objeto tipo pila.
%Las propiedades de este objeto son el tope, tama�o actual y tama�o m�ximo
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