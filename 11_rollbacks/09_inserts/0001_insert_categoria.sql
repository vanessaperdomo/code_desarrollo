-- Author: Laura
-- Description: Rollback last insert data categoria

DELETE FROM categoria
WHERE nombre = 'Dermatologicos';
GO