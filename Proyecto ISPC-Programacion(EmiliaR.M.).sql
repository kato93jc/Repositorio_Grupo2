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
Fecha_nacimiento date,
Sexo varchar(20),
DNI_dueno int,
FOREIGN KEY (DNI_dueno) REFERENCES dueno(ID_Perro)
);

CREATE TABLE historial
(
ID_Historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(20),
Monto int,
FOREIGN KEY (Perro) REFERENCES perro(DNI)
);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values (31876534, 'Fernando', 'Martinez', 34877843,'Falsa 234');

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
Values 
(34874524, 'Josefina', 'Ramirez', 34877843,'Flores 890'),
(36876354, 'Ricardo', 'Enriquez', 34853983,'Elm 446'),
(39876454, 'Sarli', 'Coca', 27647843,'Lake 32'),
(29874678, 'Pedro', 'Perez', 27662093,'Vista 465');

SELECT * 
FROM  dueno;

INSERT INTO perro Values
(1, 'Gris', "2020-02-12", 'Hembra', 31876534);

SELECT * 
FROM  perro;

INSERT INTO perro Values
(2, 'Azul', "2018-05-22", 'Macho', 3187654),
(3, 'Blanca', "2021-07-04", 'Hembra', 34874524),
(4, 'Negro', "2009-12-23", 'Macho', 36876354),
(5, 'Violeta', "2022-01-03", 'Hembra', 39876454),
(6, 'Celeste', "2021-04-09", 'Hembra', 29874678);

INSERT INTO historial Values 
(1, "2020-05-04", 1, 'vacunas', 700),
(2, "2021-11-23", 2, 'tratamiento', 1500),
(3, "2019-03-12", 3, 'peluqueria',800),
(4, "2022-08-21", 4, 'baño',1200),
(5, "2022-03-12", 3, 'peluqueria',800);

SELECT ID_Perro, perro.Nombre, dueno.Nombre AS Nombre_dueno, Apellido
FROM dueno, perro
WHERE DNI = DNI_dueno
AND dueno.Nombre = 'Pedro';

SELECT ID_Perro, Nombre, Perro, Fecha
FROM  historial, perro
WHERE Perro = ID_Perro;

DELETE FROM perro 
WHERE ID_Perro = 3;

UPDATE perro SET Fecha_nacimiento = '2018-05-03'
WHERE ID_Perro = 2;

SELECT ID_Perro, Nombre, Perro, Fecha, Descripcion
FROM historial, perro
WHERE Perro = ID_Perro
AND descripcion = 'peluqueria' AND Fecha BETWEEN '2022-01-01' AND '2022-08-13';

UPDATE dueno SET Direccion = 'Libertad 123'
WHERE DNI = 36876354;

SELECT ID_Perro, Nombre, Sexo
FROM perro
WHERE Sexo = 'Macho' AND Fecha_nacimiento BETWEEN '2020-01-01' AND '2022-08-13';
