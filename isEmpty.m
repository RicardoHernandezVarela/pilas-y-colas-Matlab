function value = isEmpty(stack)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para verificar si una pila o cola est� vacia.

if stack.size == 0
    value = true; %Si la pila o cola est� vacia se retorna el valor verdadero.
else
    value = false; %Si la pila o cola no est� vacia se retorna el valor falso.
end
end