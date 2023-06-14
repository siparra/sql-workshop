DROP TABLE IF EXISTS ComputadorasComponentes;
DROP TABLE IF EXISTS Computadoras;

CREATE TABLE Computadoras (
  ID_Computadora SERIAL PRIMARY KEY,
  Nombre_Computadora VARCHAR(255)
);

INSERT INTO Computadoras (Nombre_Computadora)
VALUES ('PC Gamer'),
       ('PC Oficina'),
       ('PC Diseño');
