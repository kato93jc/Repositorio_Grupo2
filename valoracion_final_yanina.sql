CREATE DATABASE ispc;
USE ispc;

CREATE TABLE dueno
(
DNI int primary key not null,
Nombre varchar(50),
Apellido varchar(50),
Telefono int,
Direccion varchar(50)
);

CREATE TABLE perro
(
ID_Perro int primary key not null,
Nombre varchar(50),
Fecha_nac date,
Sexo varchar(20),
DNI_dueno int,
FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
);

CREATE TABLE historial
(
ID_Historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(20),
Monto int,
FOREIGN KEY (Perro) REFERENCES perro(ID_Perro)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (31897654, 'Franklin', 'Martinez', 45678945, 'Falsa 234');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values 
(35897454, 'Pedro', 'Way', 35678894, 'Falsa 123'),
(21897564, 'Ana', 'Falle', 45456125, 'Insomnio 963'),
(31825484, 'Judith', 'Utroi', 84516138, 'Gris 54');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (35789635, 'Pedro', 'Ruth', 4568912, 'Directorio 56');

SELECT *
FROM dueno;

INSERT INTO perro Values
(1, 'Firulais', "2020-03-20", 'Macho', 31897654);

INSERT INTO perro Values
(5, 'Mushu', "2020-03-30", 'Macho', 35789635);

SELECT *
FROM perro;

INSERT INTO perro Values
(2, 'Floyd', "2021-12-05", 'Macho', 35897454),
(3, 'Princesa', "2022-03-20", 'Macho', 21897564),
(4, 'Yuko', "2021-10-02", 'Macho', 31825484);


INSERT INTO historial Values
(1, "2020-04-20", 1,'vacunas', 700),
(2,  "2022-05-10", 2, 'tratamiento', 1500),
(3,  "2022-08-20", 3, 'refuerzo', 800),
(4,  "2021-12-23", 4, 'peluqueria', 2000);

INSERT INTO historial Values
(5, "2022-04-20", 5,'peluqueria', 700);

SELECT ID_Perro, perro.Nombre , dueno.Nombre AS Nombre_dueno, Apellido
FROM dueno, perro
WHERE DNI = DNI_dueno
AND dueno.Nombre = 'Pedro';

SELECT ID_Perro, Nombre, Perro, Fecha
FROM historial, perro
WHERE Perro = ID_Perro;

DELETE FROM perro
WHERE Nombre = 'Yuko';

UPDATE perro SET Fecha_nac = '2021-11-03'
WHERE ID_Perro = 2;

SELECT ID_Perro, Nombre, Perro, Fecha, Descripcion
FROM historial, perro
WHERE Perro = ID_Perro
AND Descripcion = 'peluqueria' AND Fecha BETWEEN '2022-01-01' AND '2022-12-30';

UPDATE dueno SET Direccion = 'Libertad 123'
WHERE DNI = 21897564;

SELECT ID_Perro, Nombre, Sexo, Fecha_nac
FROM  perro
WHERE Sexo = 'Macho' AND Fecha_nac BETWEEN '2020-01-01' AND '2022-12-30';

SELECT ID_Historial, Fecha, Monto
FROM  historial
WHERE Monto BETWEEN '2022-07-01' AND '2022-07-31';
