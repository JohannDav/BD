USE RestauranteComercial;

-- =====================================================
-- ACTUALIZACIÓN MASIVA: Cambiar estatus de comandas
-- Fechas: 14 al 23 de abril 2026
-- Usando subconsulta para evitar el error 1175
-- =====================================================

UPDATE Comanda
SET estatus = 0
WHERE id_comanda IN (
    SELECT id_comanda FROM (
        SELECT id_comanda 
        FROM Comanda 
        WHERE fecha BETWEEN '2026-04-14' AND '2026-04-23'
    ) AS temp
);

-- =====================================================
-- VERIFICACIÓN: Mostrar cuántas comandas se actualizaron
-- =====================================================
SELECT 
    COUNT(*) AS Comandas_Actualizadas
FROM Comanda
WHERE fecha BETWEEN '2026-04-14' AND '2026-04-23'
    AND estatus = 0;