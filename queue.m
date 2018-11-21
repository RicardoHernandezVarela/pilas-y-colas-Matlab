classdef queue
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Definici�n de un objeto tipo cola.
%Las propiedades de este objeto son el frente, tama�o actual y tama�o m�ximo
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
