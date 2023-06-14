ALTER TABLE componentes
ADD COLUMN precio DECIMAL(10, 2);

UPDATE componentes SET precio = 300.00 WHERE id_componente = 1;
UPDATE componentes SET precio = 120.00 WHERE id_componente = 2;
UPDATE componentes SET precio = 150.00 WHERE id_componente = 3;
UPDATE componentes SET precio = 250.00 WHERE id_componente = 4;
UPDATE componentes SET precio = 80.00  WHERE id_componente = 5;
UPDATE componentes SET precio = 60.00  WHERE id_componente = 6;
UPDATE componentes SET precio = 450.00 WHERE id_componente = 7;
UPDATE componentes SET precio = 200.00 WHERE id_componente = 8;
UPDATE componentes SET precio = 300.00 WHERE id_componente = 9;
