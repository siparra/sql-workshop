DROP TABLE IF EXISTS ComputadorasComponentes;

CREATE TABLE ComputadorasComponentes (
  ID_Computadora INT REFERENCES Computadoras(ID_Computadora),
  ID_Componente INT REFERENCES Componentes(ID_Componente)
);

INSERT INTO ComputadorasComponentes (ID_Computadora, ID_Componente)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 4),
       (2, 5),
       (2, 6),
       (3, 7),
       (3, 8),
       (3, 9);