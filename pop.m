function [n, stack] = pop(stack)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para extraer el elemento del tope de la pila.

%Con un condicional se verifica si la pila est� vac�a.
if isEmpty(stack)                                     
    disp('Pop: Empty stack') ; %Si est� vac�a no se puede extraer nada.                 
    n = []; 
else
    n = stack.top.id;  %Si no est� vac�a se puede extaer el tope de la pila.   
    stack.top = stack.top.nextnode; %El tope de la pila se asigna al elemento siguiente del que fue extraido.
    stack.size = stack.size-1; %El tama�o de la pila disminuye en una unidad.
end
end
