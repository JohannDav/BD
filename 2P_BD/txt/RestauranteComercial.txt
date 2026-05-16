DROP DATABASE IF EXISTS RestauranteComercial;
CREATE DATABASE RestauranteComercial;

USE RestauranteComercial;

CREATE TABLE Categoria(
    id_categoria int primary key auto_increment,
    nombre varchar(40)
);

CREATE TABLE Mesa(
    id_mesa int primary key auto_increment,
    capacidad int,
    numero int,
    ubicacion varchar(40)
);

CREATE TABLE Mesero(
    id_mesero int primary key auto_increment,
    nombre varchar(50),
    num_empleado int,
    telefono varchar(10),
    Fecha_inicio date,
    fecha_fin date,
    RFC varchar(13),
    NSS varchar(8),
    turno varchar(30),
    sueldo decimal(9,2),
    correo varchar(50),
    fecha_nac date,
    direccion varchar(80)
);

CREATE TABLE Cliente(
    id_cliente int primary key auto_increment,
    nombre varchar(50),
    RFC varchar(13),
    telefono varchar(10),
    correo varchar(50)
);

CREATE TABLE Producto(
    id_producto int primary key auto_increment,
    nombre varchar(50),
    costo decimal(8,2),
    precio decimal(8,2),
    categoria_id int,
    estatus tinyint,
    foreign key (categoria_id) references Categoria(id_categoria)
);

CREATE TABLE Comanda(
    id_comanda int primary key auto_increment,
    fecha date,
    nota int,
    mesa_id int,
    mesero_id int,
    cliente_id int,
    producto_id int,
    cantidad int,
    estatus tinyint,
    foreign key (mesa_id) references Mesa(id_mesa),
    foreign key (mesero_id) references Mesero(id_mesero),
    foreign key (cliente_id) references Cliente(id_cliente),
    foreign key (producto_id) references Producto(id_producto)
);