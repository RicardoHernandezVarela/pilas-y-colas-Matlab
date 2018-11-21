%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

%Operaciones realizadas en una cola implementada como un vector.
%encolar(), introduce un elemento al final de la cola.
%desencolar(), elimina el elemento del frente de la cola.
%cabeza(), retorna el elemento del frente de la cola.
q_vector = [];

q_vector = encolar(q_vector, 10);
q_vector = encolar(q_vector, 20);
q_vector = encolar(q_vector, 30);

x = cabeza(q_vector);
q_vector = desencolar(q_vector);
y = cabeza(q_vector);

q_vector = desencolar(q_vector);
q_vector = encolar(q_vector, 40);
z = cabeza(q_vector);

q_vector = desencolar(q_vector);
q_vector = encolar(q_vector, 50);
q_vector = encolar(q_vector, 60);

x = cabeza(q_vector);
q_vector = desencolar(q_vector);
q_vector = encolar(q_vector, x);
q_vector = encolar(q_vector, y);

%Impresión de los valores almacenados en la cola al final de las
%operaciones realizadas.
fprintf('Los valores dentro de la cola son: %d %d %d %d\r\n', q_vector);

%Impresión de los valores almacenados en las variables x, y, z.
fprintf('Los valores finales de x, y, z son: x = %d, y = %d, z = %d\r\n', x, y, z);
