function cola = encolar(cola, valor)
%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.
%Función para introducir un elemnto en la cola.

%Se  verifica si la longitud de la cola es igual a 8.
if length(cola) == 8
    disp('La cola está llena');  %Si es igual a 8 no se inserta nada en la cola.
else
    cola = [cola valor]; %Si la cola aun no esta llena se inserta el valor indicado.
end
end