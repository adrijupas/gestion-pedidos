insert into usuarios values(NULL, 'Pepe', 'pepeloco@gmail.com');
select * from usuarios;

insert into pedidos values (NULL, 1,NULL,'no');
select * from pedidos;

insert into productos 
values 
(1,'reloj',61.50),
(2,'pantalon',31.50),
(3,'camisa',20.50),
(4,'chaqueta',51.50),
(5,'calcetines',3.50)
;
select * from productos;


insert into detalles 
values 
(1,1,3,2),
(2,1,4,1)
;

select * 
from productos
join detalles
on productos.id_producto = detalles.id_producto
join pedidos
on pedidos.id_pedido = detalles.id_pedido;

select 
pedidos.id_pedido as pedido, 
productos.nombre_producto as articulo,
detalles.cantidad as cantidad, 
productos.precio_producto as precio
from pedidos
join detalles
on pedidos.id_pedido = detalles.id_pedido
join productos
on productos.id_producto = detalles.id_producto
; 