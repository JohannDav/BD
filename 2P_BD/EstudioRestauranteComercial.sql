USE RestauranteComercial;
/*
-- Menú ordenado: Selecciona nombre y precio de los productos de la categoría 1, ordenados del más barato al más caro.
SELECT nombre, precio FROM Producto
WHERE categoria_id = 1
ORDER BY precio ASC;

-- Meseros por antigüedad Selecciona el nombre y la fecha de inicio de los meseros, ordenados de los más recientes a los más viejos
SELECT nombre, fecha_inicio FROM Mesero
ORDER BY fecha_inicio ASC;

-- Filtro de zona: Selecciona el número de mesa y ubicación de las mesas que están en el "Salon", ordenadas por su número de forma descendente.
SELECT numero, ubicacion FROM Mesa
WHERE ubicacion = 'Salon'
order by numero DESC;


=====================================================
EJEMPLO RESUELTO (Nivel Básico):
El dueño quiere saber cuánto se gasta en sueldos por cada turno.
=====================================================
SELECT turno, SUM(sueldo) AS Gasto_Total
FROM Mesero
GROUP BY turno;

 
=====================================================
EJERCICIO 1 (Nivel Básico):
Queremos saber cuántas personas caben en total por cada zona del restaurante.
Instrucción: Selecciona la 'ubicacion' y la SUMA de la 'capacidad' de la tabla Mesa.
Agrupa por 'ubicacion'. 
=====================================================

SELECT ubicacion, sum(numero) AS Capacidad FROM Mesa
group by ubicacion;

-- =====================================================
-- EJEMPLO RESUELTO (Nivel Intermedio):
-- Contar cuántos productos hay en cada categoría, pero solo de los que cuestan más de $20.
SELECT categoria_id, COUNT(*) AS Cuantos_Productos
FROM Producto
WHERE precio > 20
GROUP BY categoria_id; 
-- =====================================================

EJERCICIO 2 (Nivel Intermedio):
Contar cuántas comandas se registraron por cada día, pero solo para el mesero con ID 1.
Instrucción: Selecciona la 'fecha' y el conteo de filas de la tabla Comanda.
Filtra donde 'mesero_id' sea igual a 1 y agrupa por 'fecha'.


SELECT fecha, count(*) AS dia
FROM Comanda
Where mesero_id = 1
Group by fecha;

 
EJEMPLO RESUELTO (Nivel Avanzado):
Saber cuál es el producto más caro de cada categoría y ordenarlos de mayor a menor precio.
=====================================================

SELECT categoria_id, MAX(precio) AS Precio_Maximo
FROM Producto
GROUP BY categoria_id
ORDER BY Precio_Maximo DESC;

 
EJERCICIO 3 (Nivel Avanzado):
Saber el precio promedio de los productos en cada categoría, ordenado por el promedio más alto.
Instrucción: Selecciona 'categoria_id' y el promedio (AVG) de 'precio'.
Agrupa por 'categoria_id' y ordena por el resultado del promedio de forma descendente (DESC).

SELECT categoria_id, avg(precio) AS Precio_Promedio
FROM Producto
GROUP BY categoria_id
ORDER BY Precio_promedio DESC; 

-- =====================================================
-- NIVEL BÁSICO: Agrupaciones Simples
-- =====================================================

-- EJEMPLO RESUELTO:
-- Saber cuántos meseros hay en cada turno.
-- La función COUNT(*) cuenta cada fila como un empleado.
SELECT turno, COUNT(*) AS Total_Meseros
FROM Mesero
GROUP BY turno;

-- EJERCICIO 1:
-- Contar cuántos productos pertenecen a cada categoría.
-- Instrucción: Selecciona 'categoria_id' y el conteo de filas de la tabla Producto.
-- Agrupa por 'categoria_id'.
SELECT categoria_id, COUNT(*) AS "Productos totales"
FROM Producto
GROUP BY categoria_id;


-- EJERCICIO 2:
-- Saber cuál es el sueldo más alto que se paga en cada turno.
-- Instrucción: Selecciona 'turno' y el valor máximo (MAX) de la columna 'sueldo' en la tabla Mesero.
-- Agrupa por 'turno'.
SELECT turno, max(sueldo) AS MAXIMO
FROM Mesero
group by turno;

-- EJERCICIO 3:
-- Saber cuántas mesas hay registradas en cada ubicación (Salón, Terraza, etc).
-- Instrucción: Selecciona 'ubicacion' y el conteo de filas de la tabla Mesa.
-- Agrupa por 'ubicacion'.
-- Tu codigo:
SELECT ubicacion, count(numero) AS "Total de mesas"
FROM Mesa
GROUP BY ubicacion;

-- =====================================================
-- NIVEL INTERMEDIO: Filtros + Agrupación (WHERE + GROUP BY)
-- =====================================================

-- EJEMPLO RESUELTO:
-- Sumar la cantidad de productos vendidos por cada nota, pero solo de la fecha '2026-04-14'.
-- El WHERE filtra las notas del día antes de que el GROUP BY las sume.
SELECT nota, SUM(cantidad) AS Total_Productos
FROM Comanda
WHERE fecha = '2026-04-14'
GROUP BY nota;

-- EJERCICIO 4:
-- Obtener el precio promedio de los productos de la categoría 1 (Platillos), agrupados por su estatus.
-- Instrucción: Selecciona 'estatus' y el promedio (AVG) de 'precio' de la tabla Producto.
-- Filtra donde 'categoria_id' sea igual a 1 y agrupa por 'estatus'.
SELECT estatus, avg(precio) AS "Precio promedio"
FROM Producto
WHERE categoria_id = 1
Group by estatus;

-- EJERCICIO 5:
-- Saber cuántas comandas ha levantado el mesero con ID 2 en cada fecha.
-- Instrucción: Selecciona 'fecha' y el conteo de filas de la tabla Comanda.
-- Filtra donde 'mesero_id' sea igual a 2 y agrupa por 'fecha'.
-- Tu codigo:

SELECT fecha, count(*) AS "Comandas por dia"
FROM comanda
WHERE mesero_id = 2
group by fecha;

-- EJERCICIO 6:
-- Sumar el costo total de los productos activos (estatus 1) por cada categoría.
-- Instrucción: Selecciona 'categoria_id' y la suma de 'costo' de la tabla Producto.
-- Filtra donde 'estatus' sea igual a 1 y agrupa por 'categoria_id'.
SELECT categoria_id, sum(costo) AS "Costo total"
FROM Producto
WHERE estatus = 1
GROUP BY categoria_id;

-- =====================================================
-- NIVEL AVANZADO: Agrupación + Orden (GROUP BY + ORDER BY)
-- =====================================================

-- EJEMPLO RESUELTO:
-- Calcular el total de productos vendidos por fecha, ordenado de la fecha más reciente a la antigua.
-- El ORDER BY se aplica al final sobre el resultado ya agrupado.
SELECT fecha, SUM(cantidad) AS Cantidad_Dia
FROM Comanda
GROUP BY fecha
ORDER BY fecha DESC;

-- EJERCICIO 7:
-- Saber qué mesero ha registrado más filas de comandas en total.
-- Instrucción: Selecciona 'mesero_id' y el conteo de filas de la tabla Comanda.
-- Agrupa por 'mesero_id' y ordena el resultado de forma descendente (DESC) por el conteo obtenido.
SELECT mesero_id, count(id_comanda) AS Total
FROM Comanda
group by mesero_id
ORDER BY Total DESC;


-- EJERCICIO 8:
-- Mostrar las ubicaciones de las mesas de mayor a menor capacidad total de personas.
-- Instrucción: Selecciona 'ubicacion' y la suma de 'capacidad' de la tabla Mesa.
-- Agrupa por 'ubicacion' y ordena por esa suma de forma descendente.
-- Tu codigo:
SELECT ubicacion, SUM(capacidad) AS capacidad
FROM mesa
group by ubicacion
ORDER BY capacidad desc;


-- EJERCICIO 9:
-- Obtener el costo más bajo de un producto por categoría, pero solo para categorías con ID mayor a 3.
-- Instrucción: Selecciona 'categoria_id' y el mínimo (MIN) de 'costo' de la tabla Producto.
-- Filtra donde 'categoria_id' > 3, agrupa por 'categoria_id' y ordena por el costo mínimo de menor a mayor (ASC).
-- Tu codigo:
SELECT categoria_id, MIN(costo) AS Minimo
FROM producto
Where categoria_id > 3
Group by categoria_id
order by minimo Asc;
*/

-- ===============================================================================================================================================================
-- NIVEL: INNER JOIN BÁSICO (Solo 2 tablas)
-- =====================================================

-- EJEMPLO RESUELTO:
-- Mostrar el nombre del mesero y el número de nota de las comandas que ha tomado.
SELECT m.nombre AS Mesero, c.nota AS Numero_Nota
FROM Mesero AS m -- Mesero apunta a comanda
INNER JOIN Comanda AS c ON m.id_mesero = c.mesero_id; -- Mesero apunta a comanda

-- EJERCICIO 1:
-- Queremos ver el nombre del producto y el nombre de su categoría.
-- Instrucción: Selecciona p.nombre y cat.nombre. 
-- Une 'Producto' (p) con 'Categoria' (cat) usando 'categoria_id' e 'id_categoria'.
-- Tu codigo:
SELECT p.nombre AS Producto, cat.nombre AS Categoria
FROM Categoria AS cat
INNER JOIN Producto AS p ON cat.id_categoria = p.categoria_id;

-- EJERCICIO 2:
-- Mostrar el nombre del cliente y el número de nota de su comanda.
-- Instrucción: Selecciona cl.nombre y c.nota.
-- Une 'Cliente' (cl) con 'Comanda' (c) usando 'id_cliente' y 'cliente_id'.
SELECT cl


-- EJERCICIO 3:
-- Listar los números de mesa y la fecha en que tuvieron comandas.
-- Instrucción: Selecciona ms.numero y c.fecha.
-- Une 'Mesa' (ms) con 'Comanda' (c) usando 'id_mesa' y 'mesa_id'.
-- Tu codigo:


-- EJERCICIO 4:
-- Ver el nombre del producto y la cantidad vendida en cada comanda.
-- Instrucción: Selecciona p.nombre y c.cantidad.
-- Une 'Producto' (p) con 'Comanda' (c) usando 'id_producto' y 'producto_id'.
-- Tu codigo:


-- EJERCICIO 5 (Con filtro WHERE):
-- Ver los nombres de los productos vendidos en la nota 10.
-- Instrucción: Selecciona p.nombre y c.nota.
-- Une 'Producto' (p) con 'Comanda' (c) por sus IDs y filtra donde c.nota = 10.
-- Tu codigo: