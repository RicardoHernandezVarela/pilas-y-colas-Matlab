function value = isFull(stack)
%Ricardo Hern�ndez Varela.
%Ciencias Y Tecnolog�as Biom�dicas.
%Funci�n para verificar si una pila o cola est� llena.

if stack.size == stack.max_size
    value = true; %Si la pila o cola est� llena se retorna el valor verdadero.
else
    value = false; %Si la pila o cola no llena vacia se retorna el valor falso.
end
end