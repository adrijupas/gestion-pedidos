
-- 1 insertamos productos
insert into productos 
values 
(1,'margarita',61.50),
(2,'caprichosa',31.50),
(3,'cuatro quesos',20.50),
(4,'puttanesca',51.50),
(5,'barbacoa',3.50)
;
-- 2 comprobamos los productos   empieza la aplicacion para el visitante
select * from productos;

--3 insertar dos usuarios
insert into usuarios values(NULL, 'Paco', 'paco@gmail.com');

select id_usuario from usuarios order by asc limit 1;

insert into usuarios values(NULL, 'Perico', 'perico@gmail.com');

select id_usuario, nombre_usuario from usuarios order by id_usuario desc limit 1;

-- 4 iniciamos un pedido

insert into pedidos values (NULL, 1,NULL,'no');
select * from pedidos;
-- 5 ver productos y selecionamos los detalles
select * from productos;

insert into detalles 
values 
(NULL,1,3,2),
(NULL,1,4,1)
;

select * 
from productos
join detalles
on productos.id_producto = detalles.id_producto
join pedidos
on pedidos.id_pedido = detalles.id_pedido;

-- 6 acabamos de momento

-- vista
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