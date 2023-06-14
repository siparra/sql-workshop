ALTER TABLE Componentes
ADD COLUMN ID_Fabricante INT REFERENCES Fabricantes(ID_Fabricante);

UPDATE Componentes
SET ID_Fabricante = (SELECT ID_Fabricante FROM Fabricantes WHERE Nombre_Fabricante = 'Intel')
WHERE Fabricante = 'Intel';

UPDATE Componentes
SET ID_Fabricante = (SELECT ID_Fabricante FROM Fabricantes WHERE Nombre_Fabricante = 'Corsair')
WHERE Fabricante = 'Corsair';

UPDATE Componentes
SET ID_Fabricante = (SELECT ID_Fabricante FROM Fabricantes WHERE Nombre_Fabricante = 'Samsung')
WHERE Fabricante = 'Samsung';

UPDATE Componentes
SET ID_Fabricante = (SELECT ID_Fabricante FROM Fabricantes WHERE Nombre_Fabricante = 'Kingston')
WHERE Fabricante = 'Kingston';

UPDATE Componentes
SET ID_Fabricante = (SELECT ID_Fabricante FROM Fabricantes WHERE Nombre_Fabricante = 'Seagate')
WHERE Fabricante = 'Seagate';

ALTER TABLE Componentes
DROP COLUMN Fabricante,
DROP COLUMN Pais_Fabricante;