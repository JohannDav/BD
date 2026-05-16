USE RestauranteComercial;

INSERT INTO Categoria (nombre) VALUES
("Platillos"), ("Entradas"), ("Desayunos"), ("Ensaladas"),
("Sopas"), ("Postres"), ("Bebidas");

INSERT INTO Mesa (capacidad, numero, ubicacion) VALUES
(6, 1, "Salon"), (4, 2, "Salon"), (1, 3, "Barra"),
(4, 4, "Salon"), (4, 5, "Salon"), (8, 6, 'Terraza'),
(2, 7, 'Barra'), (4, 8, 'Ventana'), (6, 9, 'Interior'),
(10, 10, 'Privado');

INSERT INTO Mesero (nombre, num_empleado, telefono, Fecha_inicio, fecha_fin, RFC, NSS, turno, sueldo, correo, fecha_nac, direccion) VALUES
("Quirino", 2025600941, "5564810075", '2026-04-14', NULL, "QUGJ060813", "88888888", "Matutino", 300.00, "jdqg2006@gmail.com", '2006-08-13', "Av.Peñon"),
("Juan Pérez", 101, "5512345678", '2023-01-10', NULL, "JUAP900101ABC", "12345678", "Matutino", 300.00, "juan@gmail.com", '1990-01-01', "CDMX"),
("María López", 102, "5523456789", '2022-05-15', NULL, "MALO920515DEF", "23456789", "Vespertino", 300.00, "maria@gmail.com", '1992-05-15', "CDMX"),
("Carlos García", 103, "5534567890", '2021-08-20', NULL, "CAGA910820GHI", "34567890", "Nocturno", 300.00, "carlos@gmail.com", '1991-08-20', "CDMX"),
("Luis Hernández", 105, "5556789012", '2020-11-11', NULL, "LUHE881111MNO", "56789012", "Vespertino", 300.00, "luis@gmail.com", '1988-11-11', "CDMX");

INSERT INTO Cliente (nombre, RFC, telefono, correo) VALUES
("Clientes en General", "XXXXXXXXXXXXX", "5555555555", "cliente000@gmail.com"),
("Katya", "1111111111", "5874965212", "katya12@gmail.com"),
("Santiago", "888888888", "5548759621", "santim22@gmail.com");

INSERT INTO Producto (nombre, costo, precio, categoria_id, estatus) VALUES
("Arroz a la Mexicana", 25.00, 49.00, 1, 1),
("Carne asada", 40.00, 120.00, 1, 1),
("Pollo a la plancha", 35.00, 100.00, 1, 1),
("Enchiladas", 30.00, 90.00, 1, 1),
("Tacos al pastor", 25.00, 80.00, 1, 1),
("Milanesa", 35.00, 95.00, 1, 1),
("Pechuga rellena", 38.00, 110.00, 1, 1),
("Costillas BBQ", 45.00, 130.00, 1, 1),
("Arrachera", 50.00, 140.00, 1, 1),
("Pescado empanizado", 36.00, 105.00, 1, 1),
("Papas a la francesa", 12.00, 35.00, 2, 1),
("Nachos", 15.00, 40.00, 2, 1),
("Alitas BBQ", 25.00, 70.00, 2, 1),
("Aros de cebolla", 10.00, 30.00, 2, 1),
("Queso fundido", 18.00, 50.00, 2, 1),
("Guacamole", 14.00, 45.00, 2, 1),
("Dedos de queso", 16.00, 55.00, 2, 1),
("Tostadas", 12.00, 35.00, 2, 1),
("Mini tacos", 20.00, 60.00, 2, 1),
("Empanadas", 18.00, 50.00, 2, 1),
("Huevos al gusto", 20.00, 60.00, 3, 1),
("Hot cakes", 18.00, 55.00, 3, 1),
("Chilaquiles", 22.00, 65.00, 3, 1),
("Molletes", 15.00, 45.00, 3, 1),
("Omelette", 20.00, 60.00, 3, 1),
("Pan tostado", 10.00, 30.00, 3, 1),
("Avena", 12.00, 35.00, 3, 1),
("Fruta con yogurt", 15.00, 45.00, 3, 1),
("Sandwich desayuno", 18.00, 50.00, 3, 1),
("Café con pan", 12.00, 35.00, 3, 1),
("Ensalada César", 20.00, 60.00, 4, 1),
("Ensalada mixta", 18.00, 55.00, 4, 1),
("Ensalada de pollo", 22.00, 65.00, 4, 1),
("Ensalada de atún", 20.00, 60.00, 4, 1),
("Ensalada griega", 25.00, 70.00, 4, 1),
("Ensalada de frutas", 15.00, 45.00, 4, 1),
("Ensalada verde", 14.00, 40.00, 4, 1),
("Ensalada de pasta", 18.00, 55.00, 4, 1),
("Ensalada caprese", 22.00, 65.00, 4, 1),
("Ensalada light", 16.00, 50.00, 4, 1),
("Sopa de pollo", 15.00, 45.00, 5, 1),
("Caldo de res", 20.00, 60.00, 5, 1),
("Sopa de verduras", 12.00, 40.00, 5, 1),
("Crema de champiñones", 18.00, 55.00, 5, 1),
("Sopa de tortilla", 16.00, 50.00, 5, 1),
("Caldo tlalpeño", 22.00, 65.00, 5, 1),
("Sopa de fideos", 10.00, 35.00, 5, 1),
("Consomé", 12.00, 38.00, 5, 1),
("Sopa azteca", 17.00, 52.00, 5, 1),
("Crema de elote", 15.00, 48.00, 5, 1),
("Fresas con Crema", 40.00, 79.00, 6, 1),
("Pastel de chocolate", 15.00, 45.00, 6, 1),
("Flan", 10.00, 30.00, 6, 1),
("Gelatina", 8.00, 25.00, 6, 1),
("Helado", 12.00, 35.00, 6, 1),
("Churros", 10.00, 30.00, 6, 1),
("Pay de limón", 14.00, 40.00, 6, 1),
("Brownie", 13.00, 38.00, 6, 1),
("Crepas", 16.00, 45.00, 6, 1),
("Arroz con leche", 9.00, 28.00, 6, 1),
("Agua Natural", 5.00, 15.00, 7, 1),
("Refresco", 8.00, 20.00, 7, 1),
("Jugo de Naranja", 10.00, 25.00, 7, 1),
("Limonada", 9.00, 22.00, 7, 1),
("Café", 6.00, 18.00, 7, 1),
("Té", 5.00, 17.00, 7, 1),
("Malteada", 15.00, 35.00, 7, 1),
("Agua de Jamaica", 7.00, 20.00, 7, 1),
("Agua de Horchata", 7.00, 20.00, 7, 1),
("Cerveza", 12.00, 30.00, 7, 1);


-- COMANDAS con NOTAS desde 1 (incluye NOTA 7)

INSERT INTO Comanda (fecha, nota, mesa_id, mesero_id, cliente_id, producto_id, cantidad, estatus) VALUES
-- 14 de abril (notas 1,2,3)
('2026-04-14', 1, 3, 1, 1, 5, 3, 1),
('2026-04-14', 1, 3, 1, 1, 8, 2, 1),
('2026-04-14', 2, 5, 2, 2, 3, 4, 1),
('2026-04-14', 3, 1, 1, 1, 1, 2, 1),

-- 15 de abril (notas 4,5,6)
('2026-04-15', 4, 4, 4, 2, 18, 3, 1),
('2026-04-15', 5, 10, 2, 3, 9, 2, 1),
('2026-04-15', 6, 6, 5, 1, 15, 4, 1),

-- 16 de abril (nota 7)
('2026-04-16', 7, 9, 3, 1, 22, 2, 1),
('2026-04-16', 7, 9, 3, 1, 31, 1, 1),

-- 17 de abril (notas 8,9)
('2026-04-17', 8, 10, 5, 1, 14, 3, 1),
('2026-04-17', 9, 2, 3, 2, 25, 2, 1),

-- 18 de abril (nota 10)
('2026-04-18', 10, 3, 4, 3, 19, 4, 1),

-- 19 de abril (notas 11,12)
('2026-04-19', 11, 4, 4, 2, 11, 1, 1),
('2026-04-19', 12, 8, 5, 1, 23, 3, 1),

-- 20 de abril (notas 13,14,15)
('2026-04-20', 13, 5, 1, 2, 35, 2, 1),
('2026-04-20', 14, 6, 2, 2, 42, 3, 1),
('2026-04-20', 15, 7, 3, 1, 28, 2, 1),

-- 21 de abril (notas 16,17)
('2026-04-21', 16, 8, 4, 2, 37, 4, 1),
('2026-04-21', 17, 9, 5, 2, 20, 2, 1),

-- 22 de abril (notas 18,19)
('2026-04-22', 18, 4, 1, 2, 44, 2, 1),
('2026-04-22', 19, 5, 3, 3, 48, 3, 1),

-- 23 de abril (notas 20,21)
('2026-04-23', 20, 6, 4, 1, 51, 1, 1),
('2026-04-23', 21, 7, 5, 1, 55, 2, 1),


-- 24 DE ABRIL (notas 22,23,24,25)

('2026-04-24', 22, 10, 5, 1, 60, 3, 1),
('2026-04-24', 23, 3, 1, 2, 62, 2, 1),
('2026-04-24', 24, 2, 2, 3, 65, 1, 1),
('2026-04-24', 25, 8, 3, 1, 41, 2, 1),


-- 25 DE ABRIL (notas 26,27,28,29)

('2026-04-25', 26, 8, 3, 1, 58, 3, 1),
('2026-04-25', 27, 4, 4, 2, 53, 2, 1),
('2026-04-25', 28, 1, 5, 3, 33, 4, 1),
('2026-04-25', 29, 9, 2, 1, 17, 2, 1),


-- 26 DE ABRIL (notas 30,31,32,33)

('2026-04-26', 30, 1, 2, 1, 67, 1, 1),
('2026-04-26', 31, 5, 1, 2, 6, 4, 1),
('2026-04-26', 32, 7, 4, 3, 49, 2, 1),
('2026-04-26', 33, 10, 3, 1, 12, 3, 1),

-- 27 DE ABRIL (notas 34,35,36,37)
('2026-04-27', 34, 6, 2, 3, 13, 2, 1),
('2026-04-27', 35, 7, 3, 1, 21, 3, 1),
('2026-04-27', 36, 4, 5, 2, 45, 2, 1),
('2026-04-27', 37, 2, 1, 1, 68, 1, 1);