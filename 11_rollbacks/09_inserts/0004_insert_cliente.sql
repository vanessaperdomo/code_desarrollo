-- Author: Laura
-- Description: Rollback last insert data cliente

DELETE FROM cliente
WHERE numero_documento = '1075234576';
GO