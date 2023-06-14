DROP TABLE IF EXISTS Componentes;

CREATE TABLE Componentes (
  ID_Componente SERIAL PRIMARY KEY,
  Componente VARCHAR(255),
  Fabricante VARCHAR(255)
);

INSERT INTO Componentes (Componente, Fabricante)
VALUES ('Procesador i7', 'Intel'),
       ('RAM 16GB', 'Corsair'),
       ('SSD 512GB', 'Samsung'),
       ('Procesador i5', 'Intel'),
       ('RAM 8GB', 'Kingston'),
       ('HDD 1TB', 'Seagate'),
       ('Procesador i9', 'Intel'),
       ('RAM 32GB', 'Corsair'),
       ('SSD 1TB', 'Samsung');