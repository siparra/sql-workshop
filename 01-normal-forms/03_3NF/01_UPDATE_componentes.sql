ALTER TABLE Componentes
ADD COLUMN Pais_Fabricante VARCHAR(255);

UPDATE Componentes
SET Pais_Fabricante = 'Estados Unidos'
WHERE ID_Componente IN (1, 4, 7);

UPDATE Componentes
SET Pais_Fabricante = 'Taiwan'
WHERE ID_Componente IN (2, 8);

UPDATE Componentes
SET Pais_Fabricante = 'Corea del Sur'
WHERE ID_Componente IN (3, 9);

UPDATE Componentes
SET Pais_Fabricante = 'China'
WHERE ID_Componente IN (5);

UPDATE Componentes
SET Pais_Fabricante = 'Tailandia'
WHERE ID_Componente IN (6);