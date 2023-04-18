CREATE TABLE ComputadorasComponentes (
  ID_Computadora SERIAL PRIMARY KEY,
  Nombre_Computadora VARCHAR(255),
  Componentes VARCHAR(255),
  Fabricantes VARCHAR(255)
);

INSERT INTO ComputadorasComponentes(Nombre_Computadora, Componentes, Fabricantes)
VALUES ('PC Gamer', 'Procesador i7, RAM 16GB, SSD 512GB', 'Intel, Corsair, Samsung'),
       ('PC Oficina', 'Procesador i5, RAM 8GB, HDD 1TB', 'Intel, Kingston, Seagate'),
       ('PC Diseño', 'Procesador i9, RAM 32GB, SSD 1TB', 'Intel, Corsair, Samsung');