-- Author: Laura
-- Description: Insert data medicamento

INSERT INTO medicamento (nombre, principio_activo, categoria_id, proveedor_id, forma_farmaceutica, concentracion, precio_venta, stock, requiere_receta) VALUES
('Aspirina 100mg',        'Acido acetilsalicilico', 1,  1,  'Tableta',  '100mg',  4500.00,  200, FALSE),
('Amoxicilina 500mg',     'Amoxicilina',            2,  3,  'Capsula',  '500mg',  12000.00, 150, TRUE),
('Ibuprofeno 400mg',      'Ibuprofeno',             3,  2,  'Tableta',  '400mg',  8000.00,  180, FALSE),
('Loratadina 10mg',       'Loratadina',             4,  6,  'Tableta',  '10mg',   6500.00,  120, FALSE),
('Losartan 50mg',         'Losartán potasico',      5,  4,  'Tableta',  '50mg',   15000.00, 100, TRUE),
('Vitamina C 500mg',      'Acido ascorbico',        6,  10, 'Tableta',  '500mg',  9000.00,  300, FALSE),
('Metformina 850mg',      'Metformina HCl',         7,  5,  'Tableta',  '850mg',  11000.00, 90,  TRUE),
('Omeprazol 20mg',        'Omeprazol',              8,  7,  'Capsula',  '20mg',   7500.00,  160, FALSE),
('Clonazepam 0.5mg',      'Clonazepam',             9,  8,  'Tableta',  '0.5mg',  18000.00, 60,  TRUE),
('Hidrocortisona crema',  'Hidrocortisona',         10, 9,  'Crema',    '1%',     13000.00, 80,  FALSE);
GO