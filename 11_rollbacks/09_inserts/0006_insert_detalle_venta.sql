-- Author: Laura
-- Description: Rollback last insert data detalle_venta

DELETE FROM detalle_venta
WHERE venta_id = 6
  AND medicamento_id = 10;
GO