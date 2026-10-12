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



