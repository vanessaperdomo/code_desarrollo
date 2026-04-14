-- Author: Laura
-- Description: Rollback last insert data medicamento

DELETE FROM medicamento
WHERE nombre = 'Hidrocortisona crema';
GO