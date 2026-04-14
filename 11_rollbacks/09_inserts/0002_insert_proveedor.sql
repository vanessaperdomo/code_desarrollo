-- Author: Laura
-- Description: Rollback last insert data proveedor

DELETE FROM proveedor
WHERE nit = '800123456-9';
GO