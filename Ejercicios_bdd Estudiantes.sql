--ELIMINAR TABLA
drop table estudiantes;

--CREAR TABLA
create table estudiantes(
id_estudiante int primary key,
nombres varchar(50),
apellidos varchar(50),
edad int,
curso varchar(50),
fecha_registro varchar(10)
)

--MOSTRAR TABLA CREADA
SELECT * FROM estudiantes;