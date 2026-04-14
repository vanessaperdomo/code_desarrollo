-- Author: Laura
-- Description: Rollback last insert data venta

DELETE FROM venta
WHERE cliente_id = 10
  AND fecha_venta = '2025-04-01 10:00:00';
GO