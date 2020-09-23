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
    primary key (id_pedido)
);

DROP DATABASE IF EXISTS detalles_pedido;

CREATE TABLE  detalles (
    id_detalle INT AUTO_INCREMENT,
    id_pedido INT not null,
    id_producto INT not null,
    cantidad INT not null,
    primary key (id_detalle)
);

