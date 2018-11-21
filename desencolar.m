function cola = desencolar(cola)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para eliminar el elemento del frente de la cola.

%Con un condicional se verifica si la cola esta vacia.
if length(cola) == 0
    disp('La cola est� vac�a'); %Si la cola est� vac�a no se puede sacar ningun elemento.
else
   cola(1) = []; %Si la cola no est� vac�a se elimina el elemento del frente de la cola.
end