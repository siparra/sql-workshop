DROP TABLE IF EXISTS ComputadorasComponentes;

CREATE TABLE ComputadorasComponentes (
  ID_Computadora INT REFERENCES Computadoras(ID_Computadora),
  Componente VARCHAR(255),
  Fabricante VARCHAR(255)
);

INSERT INTO ComputadorasComponentes (ID_Computadora, Componente, Fabricante)
VALUES (1, 'Procesador i7', 'Intel'),
       (1, 'RAM 16GB', 'Corsair'),
       (1, 'SSD 512GB', 'Samsung'),
       (2, 'Procesador i5', 'Intel'),
       (2, 'RAM 8GB', 'Kingston'),
       (2, 'HDD 1TB', 'Seagate'),
       (3, 'Procesador i9', 'Intel'),
       (3, 'RAM 32GB', 'Corsair'),
       (3, 'SSD 1TB', 'Samsung');