CREATE DATABASE ispc;
USE ispc;

CREATE TABLE dueno
(
DNI int  primary key not null,
Nombre varchar(50),
Apellido varchar(50),
Telefono int not null,
Direccion varchar(50)
);

CREATE TABLE perro
(
Id_perro int primary key not null,
Nombre varchar(20),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
foreign key (DNI_dueno) references dueno (DNI)
);

CREATE TABLE historial
(
Id_historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(200),
Monto int,
foreign key (Perro) references perro (Id_perro) 
);

INSERT INTO dueno (DNI,Nombre,Apellido,Telefono,Direccion)
values
(32456722,'Maria','Luz',35169851,'Escalada 22'),
(25969434,'Pepita','Pistra',34964357,'Lala 14'),
(11365248,'Jorge','Luna',11054825,'Cordoba 56');

INSERT INTO perro values
(1,'Frida','2009-11-14','Hembra',32456722),
(2,'Lennon','2015-05-07','Macho',25969434),
(3,'Olivia','2010-08-25','Hembra',11365248);

INSERT INTO historial values
(01,'2022-01-23',1,'Consulta',1500),
(02,'2021-04-02',2,'Peluqueria',3000),
(03,'2022-08-13',3,'Vacuna',2200);

select * from perro;

select * from historial;

select * from dueno;

UPDATE dueno
SET direccion = 'Libertad 123'
WHERE DNI = 25969434;