CREATE DATABASE proyecto;
USE proyecto;

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
Descripcion varchar(50),
Monto int,
FOREIGN KEY (Perro) REFERENCES perro(ID_Perro)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (54369258, 'Diego', 'Martinez', 45678945, 'Falsa 234');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values 
(45321654, 'Pedro', 'Gomez', 35678894, 'Falsa 123'),
(98654321, 'Ana', 'Tower', 45456125, 'Insomnio 963'),
(65321789, 'Hilda', 'Perez', 84516138, 'Gris 54');

SELECT *
FROM dueno;

INSERT INTO perro Values
(1, 'Congo', "2020-03-20", 'Macho', 54369258);

INSERT INTO perro Values
(2, 'Kail', "2021-12-05", 'Macho', 45321654),
(3, 'Prinprin', "2022-03-20", 'Hembra', 98654321),
(4, 'Gail', "2021-10-02", 'Macho', 65321789);

SELECT *
FROM perro;

INSERT INTO historial Values
(1, "2020-04-20", 1,'vacunas', 700),
(2,  "2022-05-10", 2, 'tratamiento', 1500),
(3,  "2022-08-20", 3, 'peluqueria', 1800),
(4,  "2021-12-23", 4, 'peluqueria', 2000);

SELECT ID_Perro, perro.Nombre , dueno.Nombre AS Nombre_dueno, Apellido
FROM dueno, perro
WHERE DNI = DNI_dueno
AND dueno.Nombre = 'Pedro';

SELECT ID_Perro, Nombre, Perro, Fecha
FROM historial, perro
WHERE Perro = ID_Perro;

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (23654987, 'Gabriela', 'Alvarez', 7335734, 'Tribunales 234');
INSERT INTO perro Values
(10, 'Trueno', "20222-03-20", 'Macho', 23654987);
INSERT INTO historial Values
(5, "2022-08-01", 10,'vacunas', 900);