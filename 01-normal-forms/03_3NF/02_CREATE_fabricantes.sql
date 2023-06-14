CREATE TABLE Fabricantes (
  ID_Fabricante SERIAL PRIMARY KEY,
  Nombre_Fabricante VARCHAR(255),
  Pais_Fabricante VARCHAR(255)
);

INSERT INTO Fabricantes (Nombre_Fabricante, Pais_Fabricante)
VALUES ('Intel', 'Estados Unidos'),
       ('Corsair', 'Taiwan'),
       ('Samsung', 'Corea del Sur'),
       ('Kingston', 'China'),
       ('Seagate', 'Tailandia');