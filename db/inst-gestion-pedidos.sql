DROP DATABASE IF EXISTS gestionpedidos;

CREATE DATABASE gestionpedidos;

USE gestionpedidos;


DROP TABLE IF EXISTS productos;

CREATE TABLE productos(
    id_producto INT AUTO_INCREMENT,
    nombre_producto VARCHAR(99),
    precio_producto decimal(6,2),
    primary key (id_producto)
);

DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
    id_usuario INT AUTO_INCREMENT,
    nombre_usuario VARCHAR(99),
    email_usuario VARCHAR(99),
    primary key (id_usuario) 
);


DROP TABLE IF EXISTS pedidos;

CREATE TABLE pedidos(
    id_pedido INT AUTO_INCREMENT,
    id_usuario INT not null,
    fecha_pedido timestamp,
    confirmar_pedido char(2) default 'no',
    primary key (id_pedido),
    constraint fk_pedido_usuarios
    foreign key (id_usuario) references usuarios(id_usuario)
    on delete cascade 
    on update restrict
);

DROP TABLE IF EXISTS detalles;
CREATE TABLE detalles(
    id_detalle int auto_increment,
    id_pedido int not null,
    id_producto int not null,
    cantidad int not null,
    primary key (id_detalle),
    constraint fk_id_detalles_pedidos
    foreign key (id_pedido) references pedidos(id_pedido)
    on delete cascade
    on update restrict,
    constraint fk_id_detalle_producto
    foreign key (id_producto) references productos(id_producto)
    on delete cascade
    on update restrict
);

