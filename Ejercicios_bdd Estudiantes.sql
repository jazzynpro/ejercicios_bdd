--ELIMINAR TABLA
drop table estudiantes;


--CREAR TABLA
--CLAVE PRIMARIA(DEBE ESTAR DENTRO DE LOS PARENTESIS DE LA TABLA)
create table estudiantes(
id_estudiante int,
nombres varchar(50),
apellidos varchar(50),
edad int,
curso varchar(50),
fecha_registro varchar(10),
constraint estudiantes_pk primary key(id_estudiante)
)


--MOSTRAR TABLA CREADA
SELECT * FROM estudiantes;

--INSERTAR DATOS VERSION PROFE
insert into estudiantes(
id_estudiante,
nombres,
apellidos,
edad,
curso,
fecha_registro
)values
(1, 'Ricardo', 'Cevallos', 25, 'Base de Datos', '2026-01-01'),
(2, 'Sofia', 'Mendoza', 22, 'Desarrollo Web', '2026-01-15'),
(3, 'Mateo', 'Benitez', 20, 'Programacion Java', '2026-02-03'),
(4, 'Valeria', 'Ruales', 24, 'Spring Boot', '2026-02-10'),
(5, 'Carlos', 'Ortega', 27, 'Base de Datos', '2026-03-01'),
(6, 'Lucia', 'Paredes', 19, 'Desarrollo Web', '2026-03-12'),
(7, 'Daniel', 'Viteri', 23, 'Programacion Java', '2026-04-05'),
(8, 'Camila', 'Andrade', 21, 'Spring Boot', '2026-04-20'),
(9, 'Esteban', 'Narvaez', 26, 'Base de Datos', '2026-05-02'),
(10, 'Gabriela', 'Toapanta', 22, 'Desarrollo Web', '2026-05-18'),
(11, 'Andres', 'Grijalva', 25, 'Programacion Java', '2026-06-01'),
(12, 'Fernanda', 'Lara', 20, 'Spring Boot', '2026-06-14'),
(13, 'Alejandro', 'Jarrin', 28, 'Base de Datos', '2026-07-03'),
(14, 'Daniela', 'Moreano', 23, 'Desarrollo Web', '2026-07-22'),
(15, 'Sebastian', 'Perez', 24, 'Programacion Java', '2026-08-01');
--CONSULTAS SELECT
--MOSTRAR TODOS LOS REGISTROS
SELECT * FROM estudiantes;

--MOSTRAR UNICAMENTE NOMBRES Y CURSO;
SELECT nombres, curso FROM estudiantes;

--MOSTRAR ESTUDIANTES MAYORES DE 18 AÑOS
SELECT * FROM estudiantes WHERE edad > 18;

--MOSTRAR ESTUDIANTES ENTRE 18 Y 25 AÑOS
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

--MOSTRAR ESTUDIANTES DEL CURSO BASE DE DATOS
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

--MOSTRAR ESTUDIANTES REGISTRADOS DESPUES DEL 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

--MOSTRAR ESTUDIANTES REGISTRADOS ENTRE EL 2026-01-01 Y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

--MOSTRAR COREO DE ESTUDIANTES
SELECT * FROM estudiantes WHERE correo = 'correopendiente@outlook.com';


--PARTE 5 UPDATE 5 EJEMPLOS
UPDATE estudiantes SET curso = 'Desarrollo Web' WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';
UPDATE estudiantes SET edad = 20 WHERE curso = 'Base de Datos';
UPDATE estudiantes SET apellidos = 'Cacuango' WHERE edad = 22;
UPDATE estudiantes SET fecha_registro = '2025-05-20' WHERE apellidos = 'Cacuango';
UPDATE estudiantes SET nombres = 'Sara Nohemi' WHERE edad BETWEEN 20 and 22;
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;
--MODIFICADO TABLA CON CORREO
UPDATE estudiantes SET correo = 'correopendiente@outlook.com' WHERE curso = 'Desarrollo Web'
UPDATE estudiantes SET fecha_registro = '2026-02-08' WHERE curso = 'Spring Boot';
UPDATE estudiantes SET fecha_registro = '2026-03-15' WHERE edad BETWEEN 24 AND 25;
UPDATE estudiantes SET curso = 'Programacion' WHERE curso = 'Programacion Java';

--DELETE 5 EJEMPLOS
DELETE FROM estudiantes WHERE id_estudiante = 2;
SELECT * FROM estudiantes WHERE id_estudiante = 2;

DELETE FROM estudiantes WHERE curso = 'Inteligencia Artificial';
SELECT * FROM estudiantes WHERE curso = 'Inteligencia Artificial';

DELETE FROM estudiantes WHERE apellidos = 'Cacuango';
SELECT * FROM estudiantes WHERE apellidos = 'Cacuango';

DELETE FROM estudiantes WHERE edad BETWEEN 20 AND 21;
SELECT * FROM estudiantes WHERE edad BETWEEN 20 AND 21;

DELETE FROM estudiantes WHERE fecha_registro BETWEEN '2026-06-01' AND '2026-08-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-06-01' AND '2026-08-01';

--ELIMINADO DE TABLA CON CORREO
DELETE FROM estudiantes WHERE curso = 'Desarrollo Web';
SELECT * FROM estudiantes WHERE curso = 'Desarrollo Web';

DELETE FROM estudiantes WHERE correo = 'alejandroj@gmail.com';
SELECT * FROM estudiantes WHERE correo = 'alejandroj@gmail.com';

--UPDATE DE LA TABLA AGREGAR CORREO ELECTRONICO
ALTER TABLE estudiantes ADD COLUMN correo varchar(100);

--MOSTRAR TABLA CREADA
SELECT * FROM estudiantes;

--INSERTAR DATOS VERSION PROFE
insert into estudiantes(
id_estudiante,
nombres,
apellidos,
edad,
curso,
fecha_registro,
correo
)values
(1, 'Ricardo', 'Cevallos', 25, 'Base de Datos', '2026-01-01', 'ricardoc@gmail.com'),
(2, 'Sofia', 'Mendoza', 22, 'Desarrollo Web', '2026-01-15', 'sofiam@hotmail.com'),
(3, 'Mateo', 'Benitez', 20, 'Programacion Java', '2026-02-03', 'mateob@outlook.com'),
(4, 'Valeria', 'Ruales', 24, 'Spring Boot', '2026-02-10', 'valeriar@gmail.com'),
(5, 'Carlos', 'Ortega', 27, 'Base de Datos', '2026-03-01', 'carloso@hotmail.com'),
(6, 'Lucia', 'Paredes', 19, 'Desarrollo Web', '2026-03-12', 'luciap@outlook.com'),
(7, 'Daniel', 'Viteri', 23, 'Programacion Java', '2026-04-05', 'danielv@gmail.com'),
(8, 'Camila', 'Andrade', 21, 'Spring Boot', '2026-04-20', 'camilaa@hotmail.com'),
(9, 'Esteban', 'Narvaez', 26, 'Base de Datos', '2026-05-02', 'estebann@outlook.com'),
(10, 'Gabriela', 'Toapanta', 22, 'Desarrollo Web', '2026-05-18', 'gabrielat@gmail.com'),
(11, 'Andres', 'Grijalva', 25, 'Programacion Java', '2026-06-01', 'andresg@hotmail.com'),
(12, 'Fernanda', 'Lara', 20, 'Spring Boot', '2026-06-14', 'fernandal@outlook.com'),
(13, 'Alejandro', 'Jarrin', 28, 'Base de Datos', '2026-07-03', 'alejandroj@gmail.com'),
(14, 'Daniela', 'Moreano', 23, 'Desarrollo Web', '2026-07-22', 'danielam@hotmail.com'),
(15, 'Sebastian', 'Perez', 24, 'Programacion Java', '2026-08-01', 'sebastianp@outlook.com')

--CONSULTA CON FECHAS
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-05-02' AND '2026-08-20';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programacion' and fecha_registro > '2026-01-01';
