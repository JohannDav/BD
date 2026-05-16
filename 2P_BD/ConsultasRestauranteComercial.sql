USE RestauranteComercial;

-- =====================================================
-- 1. DETALLE DE VENTAS POR MESERO (con subtotal por producto)
-- =====================================================
SELECT 
    m.nombre AS Mesero,
    p.nombre AS Producto,
    c.cantidad,
    p.precio,
    (c.cantidad * p.precio) AS Subtotal
FROM Mesero AS m
INNER JOIN Comanda AS c ON m.id_mesero = c.mesero_id
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
ORDER BY Subtotal DESC;

-- =====================================================
-- 2. TOTAL DE VENTAS POR MESERO (Ventas acumuladas)
-- =====================================================
SELECT 
    m.nombre AS Mesero,
    SUM(c.cantidad * p.precio) AS Total
FROM Mesero AS m
INNER JOIN Comanda AS c ON m.id_mesero = c.mesero_id
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
GROUP BY m.nombre
ORDER BY Total DESC;

-- =====================================================
-- 3. TOTAL DE VENTAS POR MESA
-- =====================================================
SELECT 
    ms.numero AS Mesa,
    SUM(c.cantidad * p.precio) AS Total
FROM Mesa AS ms
INNER JOIN Comanda AS c ON ms.id_mesa = c.mesa_id
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
GROUP BY ms.numero
ORDER BY Total DESC;

-- =====================================================
-- 4. TOTAL DE VENTAS POR PRODUCTO (Productos más vendidos)
-- =====================================================
SELECT 
    p.nombre AS Producto,
    SUM(c.cantidad * p.precio) AS Total
FROM Comanda AS c
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
GROUP BY p.nombre
ORDER BY Total DESC;

-- =====================================================
-- 5. TOTAL DE VENTAS POR CATEGORÍA
-- =====================================================
SELECT 
    cat.nombre AS Categoria,
    SUM(c.cantidad * p.precio) AS Total
FROM Comanda AS c
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
INNER JOIN Categoria AS cat ON cat.id_categoria = p.categoria_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
GROUP BY cat.nombre
ORDER BY Total DESC;

-- =====================================================
-- 6. TOTAL DE VENTAS POR CLIENTE
-- =====================================================
SELECT 
    cl.nombre AS Cliente,
    SUM(c.cantidad * p.precio) AS Total
FROM Comanda AS c
INNER JOIN Producto AS p ON p.id_producto = c.producto_id
INNER JOIN Cliente AS cl ON cl.id_cliente = c.cliente_id
WHERE c.estatus = 1 
    AND c.fecha BETWEEN '2026-04-14' AND '2026-04-20'
GROUP BY cl.nombre
ORDER BY Total DESC;

-- =====================================================
-- 7. TOTAL POR NOTA DE VENTA
-- =====================================================
SELECT 
    c.nota,
    c.fecha,
    SUM(c.cantidad * p.precio) AS Total_Nota
FROM Comanda c
INNER JOIN Producto p ON p.id_producto = c.producto_id
GROUP BY c.nota, c.fecha
ORDER BY c.nota;

-- =====================================================
-- 8. TOTAL DE LA NOTA 7
-- =====================================================
SELECT 
    c.nota,
    c.fecha,
    SUM(c.cantidad * p.precio) AS Total_Nota_7
FROM Comanda c
INNER JOIN Producto p ON p.id_producto = c.producto_id
WHERE c.nota = 7
GROUP BY c.nota, c.fecha;

-- =====================================================
-- 9. TOTAL DE LAS NOTAS CON ESTATUS = 1 (activo)
-- =====================================================
SELECT 
    c.nota,
    c.fecha,
    SUM(c.cantidad * p.precio) AS Total_Nota
FROM Comanda c
INNER JOIN Producto p ON p.id_producto = c.producto_id
WHERE c.estatus = 1
GROUP BY c.nota, c.fecha
ORDER BY c.nota;

-- =====================================================
-- 10. CONSULTAS ADICIONALES (nota 10)
-- =====================================================

-- Fechas y estatus actualizados
SELECT fecha, estatus
FROM Comanda
WHERE fecha BETWEEN '2026-04-14' AND '2026-04-20'
ORDER BY fecha ASC;

SELECT fecha, estatus
FROM Comanda
WHERE estatus = 0
ORDER BY fecha ASC;

-- Consulta nota 10 con mesero
SELECT c.fecha, c.nota, m.nombre
FROM Mesero AS m 
INNER JOIN Comanda AS c ON m.id_mesero = c.mesero_id
WHERE c.nota = 10
ORDER BY c.fecha DESC;

-- Consulta nota 10 con productos
SELECT c.fecha, c.nota, p.nombre, c.cantidad, p.precio, (c.cantidad * p.precio) AS Total
FROM Producto AS p 
INNER JOIN Comanda AS c ON p.id_producto = c.producto_id
WHERE c.nota = 10
ORDER BY Total DESC;

-- Consulta nota 10 con cliente
SELECT c.fecha, c.nota, cl.nombre, cl.telefono, cl.correo
FROM Comanda AS c 
INNER JOIN Cliente AS cl ON cl.id_cliente = c.cliente_id
WHERE c.nota = 10
ORDER BY cl.nombre ASC;

-- Consulta nota 10 con categoría
SELECT c.fecha, c.nota, p.nombre, cat.nombre AS Categoria
FROM Comanda AS c 
INNER JOIN Producto AS p ON p.id_producto = c.producto_id 
INNER JOIN Categoria AS cat ON cat.id_categoria = p.categoria_id
WHERE c.nota = 10
ORDER BY c.fecha ASC;

-- =====================================================
-- ACTUALIZACIONES (estatus)
-- =====================================================

-- Actualizar comandas del 14 al 20 de abril a estatus 0
UPDATE Comanda
SET estatus = 0
WHERE fecha BETWEEN '2026-04-14' AND '2026-04-20';

-- Actualizar la nota 10 a estatus 0
UPDATE Comanda
SET estatus = 0
WHERE nota = 10;