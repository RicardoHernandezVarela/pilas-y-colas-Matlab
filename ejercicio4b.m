%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

%Ricardo Hernández Varela.
%Ciencias Y Tecnologías Biomédicas.

%Operaciones realizadas en una cola implementada como nodos enlazados.
%queue(), crea un objeto tipo cola, es necesario indicar el tamaño máximo.
%enqueue(), introduce un elemento al final de la cola.
%dequeue(), elimina el elemento del frente de la cola.
%para accesar al elemento del frente de la cola se utiliza la propiedad front del objeto queue y la propiedad id de este.

cola = queue(20);

cola = enqueue(cola,10);
cola = enqueue(cola,20);
cola = enqueue(cola,30);

x = cola.front.id;
[id, cola] = dequeue(cola);
y = cola.front.id;

[id, cola] = dequeue(cola);
cola = enqueue(cola,40);
z = cola.front.id;

[id, cola] = dequeue(cola);
cola = enqueue(cola,50);
cola = enqueue(cola,60);

x = cola.front.id;
[id, cola] = dequeue(cola);
cola = enqueue(cola,x);
cola = enqueue(cola,y);

%Con un ciclo se recorre la cola para extrar sus elementos y almacenarlos
%en un vector.
num = cola.front;
valores = [];
for i=1:cola.size
    elemento = num.id;
    valores = [valores elemento];
    num = num.nextnode;
end

%Impresión de los valores almacenados en la cola al final de las
%operaciones realizadas.
fprintf('Los valores dentro de la cola son: %d %d %d %d\r\n', valores);

%Impresión de los valores almacenados en las variables x, y, z.
fprintf('Los valores finales de x, y, z son: x = %d, y = %d, z = %d\r\n', x, y, z);

