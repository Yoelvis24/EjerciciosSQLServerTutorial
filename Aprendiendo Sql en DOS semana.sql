

----Ejercicio 2.1

if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_tables @table_owner='dbo'
exec sp_columns agenda 

----Ejercicio 2.2

if OBJECT_ID('libros') is not null
	drop table libros;

exec sp_tables @table_owner='dbo'

create table libros
(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15),
);

exec sp_columns libros

drop table libros

----Ejercicio 3.1

if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_tables @table_owner='dbo'
exec sp_columns agenda

insert into agenda(apellido,nombre,domicilio,telefono) values('Moreno','Alberto','Colon 123','4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values('Torres','Juan','Avellaneda 135','4458787');

select * from agenda;

drop table agenda;

drop table agenda;

---Ejercicio 3.2

if OBJECT_ID('libros') is not null
	drop table libros;

create table libros
(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15)
);

exec sp_tables @table_owner='dbo'
exec sp_columns libros

insert into libros(titulo,autor,editorial) values('El aleph','Borges','Planeta');
insert into libros(titulo,autor,editorial) values('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo,autor,editorial) values('Aprenda PHP','Mario Molina','Emece');

select * from libros

--Ejercicio 4.1

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas
(
	nombre varchar(20),
	actor varchar(20),
	duracion integer,
	cant_copias integer
);

exec sp_columns peliculas

insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible','Tom Cruise',128,3);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible 2','Tom Cruise',130,2);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mujer Bonita','Julia Roberts',118,3);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Elsa y Fred','China Zorrilla',110,2);

select * from peliculas

---Ejercicio 4.2

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(20),
	documento varchar(8),
	sexo varchar(1), --f = Femenino /// m = Masculino
	domicilio varchar(30),
	sueldobasico float
);

exec sp_columns empleados

insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Juan Perez','22333444','M','Sarmiento 123',500);
insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Ana Acosta','24555666','F','Colon 134',650);
insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Bartolome Barrios','27888999','M','Urquiza 479',800);

select * from empleados;

----Ejercicio 5.1

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas
(
	nombre varchar(20),
	actor varchar(20),
	duracion integer,
	cant_copias integer
);

exec sp_columns peliculas

insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible','Tom Cruise',128,3);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible 2','Tom Cruise',130,2);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mujer Bonita','Julia Roberts',118,3);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Elsa y Fred','China Zorrilla',110,2);

select nombre,actor from peliculas;

select nombre,duracion from peliculas;

select nombre,cant_copias from peliculas;

----Ejercicio 5.2

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(20),
	documento varchar(8),
	sexo varchar(1), --f = Femenino /// m = Masculino
	domicilio varchar(30),
	sueldobasico float
);

exec sp_columns empleados

insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Juan Perez','22333444','M','Sarmiento 123',500);
insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Ana Acosta','27888999','F','Colon 134',700);
insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) values('Carlos Caseres','31222333','M','Urquiza 479',850);

select * from empleados;

select nombre,documento,domicilio from empleados;

select documento,sexo,sueldobasico from empleados;

----Ejercicio 6.1

if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_columns agenda

insert into agenda(apellido,nombre,domicilio,telefono) values('Acosta','Ana','Colon 123','4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values('Bustamante','Betina','Avellaneda 135','4458787');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Hector','Salta 454','4887788');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Luis','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Marisa','Urquiza 333','4545454');

select * from agenda;

select * from agenda where nombre='Marisa'

select nombre,domicilio from agenda where apellido='Lopez'

select nombre from agenda where telefono='4545454'

----Ejercicio 6.2

if OBJECT_ID('libros') is not null
	drop table libros;

create table libros
(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15),
);

exec sp_columns libros

insert into libros(titulo,autor,editorial) values('El aleph','Borges','Emece');
insert into libros(titulo,autor,editorial) values('Martin Fierro','Jose Hernandez','Emece');
insert into libros(titulo,autor,editorial) values('Martin Fierro','Jose Hernandez','Planeta');
insert into libros(titulo,autor,editorial) values('Aprenda PHP','Mario Molina','Siglo XXI');

select * from libros where autor='Borges'

select titulo from libros where editorial='Emece'

select editorial from libros where titulo='Martin Fierro'

----Ejercicio 7.1

if OBJECT_ID('articulos') is not null
	drop table articulos;

create table articulos
(
	codigo integer,
	nombre varchar(20),
	descripcion varchar(30),
	precio float,
	cantidad integer
);

exec sp_columns articulos

insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(1,'Impresora','Epson Stylus C45',400.80,20);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(2,'Impresora','Epson Stylus C85',500,30);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(3,'Monitor','Samsung 14',800,10);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(4,'Teclado','Ingles Biswal',100,50);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(5,'Teclado','Español Biswal',90,50);

select * from articulos where nombre='Impresora'
select * from articulos where precio >= 400
select codigo,nombre from articulos where cantidad < 30
select nombre,descripcion from articulos where precio <> 100

--Ejercicio 7.2

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas
(
	nombre varchar(20),
	actor varchar(20),
	duracion integer,
	cant_copias integer
);

exec sp_columns peliculas

insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible','Tom Cruise',120,3);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mision Imposible 2','Tom Cruise',180,4);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Mujer Bonita','Julia Roberts',90,1);
insert into peliculas(nombre,actor,duracion,cant_copias) values('Elsa y Fred','China Zorrilla',80,2);

select * from peliculas where duracion <= 90
select nombre from peliculas where actor <> 'Tom Cruise'
select nombre,actor,cant_copias from peliculas where cant_copias > 2

--Ejercicio 8.1

if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_columns agenda

insert into agenda(apellido,nombre,domicilio,telefono) values('Alvarez','Alberto','Colon 123','4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Maria','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Jose','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values('Salas','Susana','Gral. Paz 1234','4123456');

delete from agenda where nombre='Juan'
delete from agenda where telefono='4545454'

select * from agenda

delete from agenda

select * from agenda


-----Ejercicio 8.2

if OBJECT_ID('articulos') is not null
	drop table articulos;

create table articulos
(
	codigo integer,
	nombre varchar(20),
	descripcion varchar(30),
	precio float,
	cantidad integer
);

exec sp_columns articulos

insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(1,'Impresora','Epson Stylus C45',400.80,20);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(2,'Impresora','Epson Stylus C85',500,30);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(3,'Monitor','Samsung 14',800,10);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(4,'Teclado','Ingles Biswal',100,50);
insert into articulos(codigo,nombre,descripcion,precio,cantidad) values(5,'Teclado','Español Biswal',90,50);

delete from articulos where precio >= 500
delete from articulos where nombre='Impresora'
delete from articulos where codigo <> 4

select * from articulos

----Ejercicio 9.1 

if OBJECT_ID('agenda') is not null
	drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

exec sp_columns agenda

insert into agenda(apellido,nombre,domicilio,telefono) values('Acosta','Alberto','Colon 123','4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Maria','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values('Lopez','Jose','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values('Suarez','Susana','Gral. Paz 1234','4123456');

update agenda set nombre='Juan Jose' where nombre='Juan'
select * from agenda
update agenda set telefono='4445566' where telefono='4545454'
select * from agenda
update agenda set nombre='Juan Jose' where nombre='Juan'
select * from agenda

----Ejercicio 9.2

if OBJECT_ID('libros') is not null
	drop table libros;

create table libros
(
	titulo varchar(30),
	autor varchar(20),
	editorial varchar(15),
	precio float
);

exec sp_columns libros

insert into libros(titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25.00);
insert into libros(titulo,autor,editorial,precio) values('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros(titulo,autor,editorial,precio) values('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros(titulo,autor,editorial,precio) values('Cervantes y el quijote','Borges','Emece',25);
insert into libros(titulo,autor,editorial,precio) values('Matematicas estas ahi','Paenza','Siglo XXI',15);

select * from libros

update libros set autor='Adrian Paenza' where autor='Paenza'
update libros set autor='Adrian Paenza' where autor='Paenza'
update libros set precio=27 where autor='Mario Molina'
update libros set editorial='Emece S.A.' where editorial='Emece'

------------------------------------------
--Ejercicio 11.1
------------------------------------------
 if OBJECT_ID('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos
 (
	codigo integer not null,
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer not null
 );

exec sp_columns medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(1,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(3,'Buscapina','Roche',null,200);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Bayaspirina','',0,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(0,'','Bayer',15.60,0);

select * from medicamentos;

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(null,'Amoxidal jarabe','Bayer',25,120);

select * from medicamentos where laboratorio is null;
select * from medicamentos where laboratorio = '';
select * from medicamentos where precio is null;
select * from medicamentos where precio = 0;
select * from medicamentos where laboratorio <> '';
select * from medicamentos where laboratorio is not null;
select * from medicamentos where precio <> 0;
select * from medicamentos where precio is not null;

----Ejercicio 11.2

if OBJECT_ID('peliculas') is not null
  drop table peliculas;

 create table peliculas
 (
	codigo int not null,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion int
 );

exec sp_columns peliculas;

insert into peliculas (codigo,titulo,actor,duracion) values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion) values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion) values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion) values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion) values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion) values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select * from peliculas;

insert into peliculas (codigo,titulo,actor,duracion) values(null,'Mujer bonita','R. Gere-J. Roberts',190);

select * from peliculas where actor is null;

update peliculas set duracion = 120 where duracion is null;

update peliculas set actor = 'Desconocido' where actor = '';

select * from peliculas;

delete from peliculas where titulo = '';

select * from peliculas;

----Ejercicio 12.1

if OBJECT_ID('libros') is not null
  drop table libros;

create table libros
(
	codigo int not null,
	titulo varchar(40) not null,
	autor varchar(20),
	editorial varchar(15),
	primary key(codigo)
);

insert into libros (codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial) values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');
insert into libros (codigo,titulo,autor,editorial) values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
insert into libros (codigo,titulo,autor,editorial) values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

update libros set codigo = 1 where titulo = 'Martin Fierro';

----Ejercicio 12.2

 if OBJECT_ID('alumnos') is not null
  drop table alumnos;

create table alumnos
(
	legajo varchar(4) not null,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key(documento),
	primary key(legajo)
);

create table alumnos
(
	legajo varchar(4) not null,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key(documento)
);

exec sp_columns alumnos;

insert into alumnos (legajo,documento,nombre,domicilio) values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio) values('A567','23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (legajo,documento,nombre,domicilio) values('A642','23545345','Gonzalez Analia','Caseros 444');
insert into alumnos (legajo,documento,nombre,domicilio) values('A685',null,'Miranda Carmen','Uspallata 999');

-----Ejercicio 13.1

if OBJECT_ID('medicamentos') is not null
  drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer
);

exec sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Amoxilina 500','Bayer',15.60,100);

update medicamentos set codigo = 5 where nombre = 'Bayaspirina';

delete from medicamentos where codigo = 3;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);

select * from medicamentos;

----Ejercicio 13.2

 if OBJECT_ID('peliculas') is not null
  drop table peliculas;

create table peliculas
(
	codigo int identity,
	titulo varchar(40),
	actor varchar(20),
	duracion int,
	primary key(codigo)
);

exec sp_columns peliculas;

insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion) values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('La vida es bella','zzz',220);

select * from peliculas;

update peliculas set codigo=7 where codigo=4;

delete from peliculas where titulo='La vida es bella';

insert into peliculas (titulo,actor,duracion) values('Elsa y Fred','China Zorrilla',90);

select * from peliculas;

----Ejercicio 14.1

 if OBJECT_ID('medicamentos') is not null
  drop table medicamentos;

create table medicamentos
(
	codigo integer identity(10,1),
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer
);

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos;

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(4,'Amoxilina 500','Bayer',15.60,100);

set identity_insert medicamentos on;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(10,'Amoxilina 500','Bayer',15.60,100);

select ident_seed('medicamentos');
select ident_incr('medicamentos');

----Ejercicio 14.2

 if OBJECT_ID('peliculas') is not null
  drop table peliculas;

create table peliculas
(
	codigo int identity (50,3),
	titulo varchar(40),
	actor varchar(20),
	duracion int
);

insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);

select * from peliculas;

set identity_insert peliculas on;

insert into peliculas (codigo,titulo,actor,duracion) values(20,'Mision imposible 2','Tom Cruise',120);
insert into peliculas (codigo, titulo,actor,duracion) values(80,'La vida es bella','zzz',220);

select ident_seed('peliculas');
select ident_incr('peliculas');

insert into peliculas (titulo,actor,duracion) values('Elsa y Fred','China Zorrilla',90);

set identity_insert peliculas off; 

insert into peliculas (titulo,actor,duracion) values('Elsa y Fred','China Zorrilla',90);

select * from peliculas;

----Ejercicio 15.1

if OBJECT_ID('alumnos') is not null
  drop table alumnos;

create table alumnos
(
	legajo int identity,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30)
);

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

delete from alumnos;

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos;

truncate table alumnos;

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos;

----Ejercicio 15.2

 if OBJECT_ID('articulos') is not null
  drop table articulos;

create table articulos
(
	codigo integer identity,
	nombre varchar(20),
	descripcion varchar(30),
	precio float
);

insert into articulos (nombre, descripcion, precio) values ('Impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio) values ('Impresora','Epson Stylus C85',500);

truncate table articulos;

insert into articulos (nombre, descripcion, precio) values ('Monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('Teclado','Ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('Teclado','español Biswal',90);

select * from articulos;

delete from articulos;

insert into articulos (nombre, descripcion, precio) values ('Monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('Teclado','Ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('Teclado','español Biswal',90);

select * from articulos;

----Ejercicio 17.1

 if OBJECT_ID('autos') is not null
  drop table autos;

create table autos
(
	patente char(6),
	marca varchar(20),
	modelo char(4),
	precio float,
	primary key (patente)
);

insert into autos values('ACD123','Fiat 128','1970',15000);
insert into autos values('ACG234','Renault 11','1990',40000);
insert into autos values('BCD333','Peugeot 505','1990',80000);
insert into autos values('GCD123','Renault Clio','1990',70000);
insert into autos values('BCC333','Renault Megane','1998',95000);
insert into autos values('BVF543','Fiat 128','1975',20000);

select * from autos where modelo='1990';

----Ejercicio 17.2

 if OBJECT_ID('clientes') is not null
  drop table clientes;

create table clientes
(
	documento char(8),
	apellido varchar(20),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar (11)
);

insert into clientes values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio) values('2333344','Perez','Ana','Colon 234');
insert into clientes values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from clientes where apellido='Perez';

----Ejercicio 18.1

if OBJECT_ID('cuentas') is not null
  drop table cuentas;

create table cuentas
(
	numero int not null,
	documento char(8),
	nombre varchar(30),
	saldo money,
	primary key (numero)
);

insert into cuentas(numero,documento,nombre,saldo) values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo) values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo) values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo) values('3346','32111222','Susana Molina',1000);

select * from cuentas where saldo < 4000;
select numero,saldo from cuentas where nombre='Juan Lopez';
select * from cuentas where saldo < 0;
select * from cuentas where numero >= 3000;

----Ejercicio 18.2

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(30),
	documento char(8),
	sexo char(1), --f = Femenino /// m = Masculino
	domicilio varchar(30),
	sueldobasico decimal(7,2), --máximo estimado 99999.99
	cantidad_hijos tinyint
);

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidad_hijos) values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidad_hijos) values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidad_hijos) values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidad_hijos) values ('Susana Molina','29000555','f','Salta 876',800.888,3);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidad_hijos) values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

select * from empleados where sueldobasico >= 900;
select * from empleados where cantidad_hijos > 0;

----Ejercicio 19.1

if OBJECT_ID('alumnos') is not null
  drop table alumnos;

create table alumnos
(
	apellido varchar(30),
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	fechanacimiento datetime
);

set dateformat 'dmy';

insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from alumnos where fechaingreso < '1-1-91';
select * from alumnos where fechanacimiento is null;

insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

---Ejercicio 20.1

if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

 insert into cuentas values (1,'25666777','Juan Perez',2500.50);

 insert into cuentas values ('25666777','Juan Perez',2500.50);

 insert into cuentas (nombre,documento,saldo) values ('Yoe','28999777',5500);

 insert into cuentas (numero,documento,nombre,saldo) values (5,'28999777','Luis Lopez',34000);

 insert into cuentas (numero,documento,nombre) values (3344,'28999777','Luis Lopez',34000);

 insert into cuentas (nombre, saldo) values ('Luis Lopez',34000);

 select * from libros;

----Ejercicio 21.1

if OBJECT_ID('visitantes') is not null
  drop table visitantes;

create table visitantes
(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
);

exec sp_columns visitantes;

insert into visitantes (nombre, domicilio, montocompra) values ('Susana Molina','Colon 123',59.80);
insert into visitantes (nombre, edad, ciudad, mail) values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');

select *from visitantes;

insert into visitantes values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);
insert into visitantes default values;

select * from visitantes;

----Ejercicio 21.2

if object_id('prestamos') is not null
  drop table prestamos;

 create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo datetime not null,
  fechadevolucion datetime,
  devuelto char(1) default 'n'
 );

 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo) values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion) values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto) values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

 select * from prestamos;

 insert into prestamos values('Manual de historia','32555666','2006-10-25',default,default);

 select * from prestamos;

 insert into prestamos default values;

----Ejercicio 22.1

if OBJECT_ID ('articulos') is not null
	drop table articulos;

create table articulos
(
	codigo int identity,
	nombre varchar(20),
	descripcion varchar(30),
	precio smallmoney,
	cantidad tinyint default 0,
	primary key (codigo)
);

insert into articulos (nombre, descripcion, precio,cantidad) values ('Impresora','Epson Stylus C45',400.80,20);
insert into articulos (nombre, descripcion, precio) values ('Impresora','Epson Stylus C85',500);
insert into articulos (nombre, descripcion, precio) values ('Monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio,cantidad) values ('Teclado','Ingles Biswal',100,50);

update articulos set precio = precio + (precio*0.15);

select * from articulos;

select nombre + ',' + descripcion from articulos;

update articulos set cantidad = cantidad - 5 where nombre = 'Teclado';

select * from articulos;

----Ejercicio 23.1

if OBJECT_ID ('libros') is not null
	drop table libros;

create table libros
(
	codigo int identity,
	titulo varchar(40) not null,
	autor varchar(20) default 'Desconocido',
	editorial varchar(20),
	precio decimal(6,2),
	cantidad tinyint default 0,
	primary key (codigo)
);

insert into libros (titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25);
insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into libros (titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select titulo,autor,editorial,precio,cantidad,precio*cantidad as 'monto total' from libros;

select titulo,autor,precio, precio*0.1 as descuento, precio-(precio*0.1) as 'precio final' from libros where editorial='Emece';

select titulo + '-' + autor as "Título y autor" from libros;

----Ejercicio 27.1

if OBJECT_ID ('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(30) not null,
	apellido varchar(20) not null,
	documento char(8),
	fechanacimiento datetime,
	fechaingreso datetime,
	sueldo decimal(6,2),
	primary key(documento)
);

insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

select nombre + space(1) + upper(apellido) as nombre, stuff(documento,1,0,'DNI Nº ') as documento, stuff(sueldo,1,0,'$ ') as sueldo from empleados;

select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

select nombre,apellido from empleados where datename(month,fechanacimiento) = 'october';

select nombre,apellido from empleados where datepart(year,fechaingreso) = 2000;  

--Ejercicio 28.1

if OBJECT_ID('visitas') is not null
	drop table visitas;

create table visitas 
(
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fecha datetime,
	primary key(numero)
);

insert into visitas (nombre,mail,pais,fecha) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fecha) values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

select * from visitas order by fecha desc;

select nombre,pais,datename(month,fecha) from visitas order by pais,datename(month,fecha) desc;

select nombre,mail,
	datename(month,fecha) mes,
	datename(day,fecha) dia,
	datename(hour,fecha) hora
		from visitas
			order by 3,4,5;

select mail, pais from visitas where datename(month,fecha)='October' order by 2;

----Ejercicio 29.1

if OBJECT_ID('medicamentos') is not null
	drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(5,2),
	cantidad tinyint,
	primary key(codigo)
);

insert into medicamentos values('Sertal','Roche',5.2,100);
insert into medicamentos values('Buscapina','Roche',4.10,200);
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100);
insert into medicamentos values('Paracetamol 500','Bago',1.90,200);
insert into medicamentos values('Bayaspirina','Bayer',2.10,150); 
insert into medicamentos values('Amoxidal jarabe','Bayer',5.10,250); 

select codigo,nombre from medicamentos where laboratorio='Roche' and precio < 5;
select * from medicamentos where laboratorio='Roche' or precio < 5;
select * from medicamentos where not laboratorio='Bayer' and cantidad = 100;
select * from medicamentos where laboratorio='Bayer' and not cantidad = 100;

delete from medicamentos where laboratorio='Bayer' and precio > 10;

update medicamentos set cantidad = 200 where laboratorio='Roche' and precio > 5;

delete from medicamentos where laboratorio='Bayer' or precio < 3;

----Ejercicio 29.2

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas
(
	codigo int identity,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion tinyint,
	primary key (codigo)
);

insert into peliculas values('Mision imposible','Tom Cruise',120);
insert into peliculas values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas values('Mision imposible 2','Tom Cruise',120);
insert into peliculas values('Mujer bonita','Richard Gere',120);
insert into peliculas values('Tootsie','D. Hoffman',90);
insert into peliculas values('Un oso rojo','Julio Chavez',100);
insert into peliculas values('Elsa y Fred','China Zorrilla',110);

select * from peliculas where actor = 'Tom Cruise' or actor = 'Richard Gere';
select * from peliculas where actor = 'Tom Cruise' and duracion < 100;

update peliculas set duracion=200 where actor = 'Daniel R.' and duracion = 180;

delete from peliculas where not actor = 'Tom Cruise' and duracion <= 100;

----Ejercicio 30.1

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas
(
	codigo int identity,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion tinyint,
	primary key (codigo)
);

insert into peliculas values('Mision imposible','Tom Cruise',120);
insert into peliculas values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas values('Mision imposible 2','Tom Cruise',120);
insert into peliculas values('Mujer bonita',null,120);
insert into peliculas values('Tootsie','D. Hoffman',90);
insert into peliculas (titulo) values('Un oso rojo');

select * from peliculas where actor is null;

update peliculas set duracion = 0 where duracion is null;

delete from peliculas where actor is null and duracion = 0;

select * from peliculas;

-----Ejercicio 31.1

if OBJECT_ID('visitas') is not null
	drop table visitas;

create table visitas 
(
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fechayhora datetime,
	primary key(numero)
);

insert into visitas (nombre,mail,pais,fechayhora) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into visitas (nombre,mail,pais,fechayhora) values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into visitas (nombre,mail,pais,fechayhora) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into visitas (nombre,mail,pais,fechayhora) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into visitas (nombre,mail,pais) values ('Federico1','federicogarcia@xaxamail.com','Argentina');

select * from visitas where fechayhora between '2006-09-12' and '2006-10-11';

select * from visitas where numero between 2 and 5;

----Ejercicio 31.2

if OBJECT_ID('autos') is not null
	drop table autos;

create table autos
(
	patente char(6),
	marca varchar(20),
	modelo char(4),
	precio decimal(8,2),
	primary key(patente)
);

insert into autos values('ACD123','Fiat 128','1970',15000);
insert into autos values('ACG234','Renault 11','1980',40000);
insert into autos values('BCD333','Peugeot 505','1990',80000);
insert into autos values('GCD123','Renault Clio','1995',70000);
insert into autos values('BCC333','Renault Megane','1998',95000);
insert into autos values('BVF543','Fiat 128','1975',20000);

select * from autos where modelo between '1970' and '1990' order by modelo;

select * from autos where precio between 50000 and 100000; 

-----Ejercicio 32.1

if OBJECT_ID('medicamentos') is not null
	drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	primary key(codigo)
);

insert into medicamentos values('Sertal','Roche',5.2,1,'2015-02-01');
insert into medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into medicamentos values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into medicamentos values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

select nombre,precio from medicamentos where laboratorio in ('Bayer','Bago');
select * from medicamentos where cantidad between 1 and 5;
select * from medicamentos  where cantidad in (1,2,3,4,5);

----Ejercicio 33.1

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	seccion varchar(20),
	sueldo decimal(6,2),
	primary key(documento)
);

insert into empleados values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into empleados values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into empleados values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into empleados values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

select * from empleados where nombre like '%Perez%';

select * from empleados where domicilio like 'Co%8%';

select * from empleados where documento like '%[02468]';

select * from empleados where documento like '[^13]%' and nombre like '%ez';

select nombre from empleados where nombre like '%[yj]%';

select nombre,seccion from empleados where seccion like '[SG]_______';

select nombre,seccion from empleados where seccion not like '[SG]%';

select nombre,sueldo from empleados where sueldo not like '%.00';

select * from empleados where fechaingreso like '%1990%';

----Ejercicio 34.1

if OBJECT_ID('medicamentos') is not null
	drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
);

	insert into medicamentos
	values('Sertal','Roche',5.2,1,'2015-02-01',null);
	insert into medicamentos 
	values('Buscapina','Roche',4.10,3,'2016-03-01',null);
	insert into medicamentos 
	values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
	insert into medicamentos
	values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
	insert into medicamentos 
	values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
	insert into medicamentos 
	values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

select count(*) from medicamentos;
select count(laboratorio) from medicamentos;
select count(precio) as 'Con precio', count(cantidad) as 'Con cantidad' from medicamentos;
select count(precio) from medicamentos where laboratorio like 'B%';
select count(numerolote) from medicamentos;

-----Ejercicio 35.1

if OBJECT_ID('medicamentos') is not null
	drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
);

insert into medicamentos values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into medicamentos values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into medicamentos values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

select count_big(*) from medicamentos;
select count_big(distinct laboratorio) from medicamentos;

select count_big(precio) as 'Con precio', count_big(cantidad) as 'Con cantidad' from medicamentos;

----Ejercicio 36.1

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados
(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	seccion varchar(20),
	sueldo decimal(6,2),
	cantidadhijos tinyint,
	primary key(documento)
);

insert into empleados values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into empleados values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into empleados values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into empleados values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into empleados values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into empleados values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into empleados values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into empleados values('Andres Costa','28444555',default,'Secretaria',null,null);

select count(*) from empleados;
select count(sueldo) from empleados where seccion='Secretaria';
select max(sueldo) as 'Mayor sueldo', min(sueldo) as 'Menor sueldo' from empleados;
select max(cantidadhijos) from empleados where nombre like '%Perez%';
select avg(sueldo) from empleados;
select avg(sueldo) from empleados where seccion='Secretaria';
select avg(cantidadhijos) from empleados where seccion='Sistemas';

----Ejercicio 37.1

if OBJECT_ID('visitantes') is not null
	drop table visitantes;

create table visitantes
(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f', --f = Femenino, m = Masculino
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
);

insert into visitantes values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into visitantes values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into visitantes values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into visitantes (nombre, edad,sexo,telefono, mail) values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into visitantes (nombre, ciudad, montocompra) values ('Alejandra Gonzalez','La Falda',280.50);
insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra) values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into visitantes values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into visitantes values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

select ciudad, count(*) from visitantes group by ciudad;
select ciudad, count(telefono) from visitantes group by ciudad;
select sexo, sum(montocompra) from visitantes group by sexo;
select sexo, ciudad, max(montocompra) as mayor, min(montocompra) as menor from visitantes group by sexo,ciudad;
select ciudad, avg(montocompra) as 'promedio de compras' from visitantes group by ciudad;
select ciudad, count(*) as 'cantidad con mail' from visitantes where mail is not null and mail<>'no tiene' group by ciudad;
select ciudad, count(*) as 'cantidad con mail' from visitantes where mail is not null and mail<>'no tiene' group by all ciudad;

-----Ejercicio 43.1

if OBJECT_ID('clientes') is not null
	drop table clientes;

create table clientes 
(
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	provincia varchar (20),
	primary key(codigo)
);

insert into clientes values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into clientes values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into clientes values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into clientes values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into clientes values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

select distinct provincia from clientes;
select count(distinct provincia) as cantidad from clientes;
select distinct ciudad from clientes;
select count(distinct ciudad) from clientes;
select distinct ciudad from clientes where provincia='Cordoba';
select provincia,count(distinct ciudad) from clientes group by provincia;

-----Ejercicio 43.2

if OBJECT_ID('inmuebles') is not null
	drop table inmuebles;

create table inmuebles 
(
	documento varchar(8) not null,
	apellido varchar(30),
	nombre varchar(30),
	domicilio varchar(20),
	barrio varchar(20),
	ciudad varchar(20),
	tipo char(1), -- e = Edificado, b = Baldío
	superficie decimal (8,2)
);

insert into inmuebles values ('11000000','Perez','Alberto','San Martin 800','Centro','Cordoba','e',100);
insert into inmuebles values ('11000000','Perez','Alberto','Sarmiento 245','Gral. Paz','Cordoba','e',200);
insert into inmuebles values ('12222222','Lopez','Maria','San Martin 202','Centro','Cordoba','e',250);
insert into inmuebles values ('13333333','Garcia','Carlos','Paso 1234','Alberdi','Cordoba','b',200);
insert into inmuebles values ('13333333','Garcia','Carlos','Guemes 876','Alberdi','Cordoba','b',300);
insert into inmuebles values ('14444444','Perez','Mariana','Caseros 456','Flores','Cordoba','b',200);
insert into inmuebles values ('15555555','Lopez','Luis','San Martin 321','Centro','Carlos Paz','e',500);
insert into inmuebles values ('15555555','Lopez','Luis','Lopez y Planes 853','Flores','Carlos Paz','e',350);
insert into inmuebles values ('16666666','Perez','Alberto','Sucre 1877','Flores','Cordoba','e',150);

select distinct apellido from inmuebles;
select distinct documento from inmuebles;
select count(distinct documento) from inmuebles where ciudad='Cordoba';
select count(ciudad) from inmuebles where domicilio like 'San Martin %';
select distinct apellido,nombre  from inmuebles;
select documento,count(distinct barrio) as 'cantidad' from inmuebles group by documento;

--Ejercicio 44.1

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados 
(
	documento varchar(8) not null,
	nombre varchar(30),
	estadocivil char(1), -- c = Casado, s = Soltero, v = viudo
	seccion varchar(20)
);

insert into empleados values ('22222222','Alberto Lopez','c','Sistemas');
insert into empleados values ('23333333','Beatriz Garcia','c','Administracion');
insert into empleados values ('24444444','Carlos Fuentes','s','Administracion');
insert into empleados values ('25555555','Daniel Garcia','s','Sistemas');
insert into empleados values ('26666666','Ester Juarez','c','Sistemas');
insert into empleados values ('27777777','Fabian Torres','s','Sistemas');
insert into empleados values ('28888888','Gabriela Lopez',null,'Sistemas');
insert into empleados values ('29999999','Hector Garcia',null,'Administracion');

select top 5 * from empleados;
select top 4 nombre,seccion from empleados order by seccion;
select top 4 with ties nombre,seccion from empleados order by seccion;
select top 4 nombre,estadocivil,seccion from empleados order by estadocivil,seccion;
select top 4 with ties nombre,estadocivil,seccion from empleados order by estadocivil,seccion;

----Ejercicio 45.1

if object_id('consultas') is not null
  drop table consultas;

 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

 insert into consultas values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');
 insert into consultas values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');
 insert into consultas values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table inscriptos(
  documento char(8) not null, 
  nombre varchar(30),
  deporte varchar(15) not null,
  año datetime,
  matricula char(1),
  primary key(documento,deporte,año)
 );

 insert into inscriptos values ('12222222','Juan Perez','tenis','2005','s');
 insert into inscriptos values ('23333333','Marta Garcia','tenis','2005','s');
 insert into inscriptos values ('34444444','Luis Perez','tenis','2005','n');
 insert into inscriptos values ('12222222','Juan Perez','futbol','2005','s');
 insert into inscriptos values ('12222222','Juan Perez','natacion','2005','s');
 insert into inscriptos values ('12222222','Juan Perez','basquet','2005','n');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2006','s');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2007','s');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2005','s');

 update inscriptos set deporte = 'tenis'
  where documento = '12222222' and
  deporte = 'futbol' and
  año = '2005';

----Ejercicio 45.2

 if object_id('inscriptos') is not null
  drop table inscriptos;

 create table inscriptos(
  documento char(8) not null, 
  nombre varchar(30),
  deporte varchar(15) not null,
  año datetime,
  matricula char(1),
  primary key(documento,deporte,año)
 );

 insert into inscriptos values ('12222222','Juan Perez','tenis','2005','s');
 insert into inscriptos values ('23333333','Marta Garcia','tenis','2005','s');
 insert into inscriptos values ('34444444','Luis Perez','tenis','2005','n');
 insert into inscriptos values ('12222222','Juan Perez','futbol','2005','s');
 insert into inscriptos values ('12222222','Juan Perez','natacion','2005','s');
 insert into inscriptos values ('12222222','Juan Perez','basquet','2005','n');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2006','s');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2007','s');
 insert into inscriptos values ('12222222','Juan Perez','tenis','2005','s');

 update inscriptos set deporte = 'tenis'
  where documento = '12222222' and
  deporte = 'futbol' and
  año = '2005';

----Ejercicio 47.1

if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  numero int identity,
  nombre varchar(30),
  edad tinyint,
  domicilio varchar(30),
  ciudad varchar(20),
  montocompra decimal (6,2) not null
 );

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_montocompra
  default 0
  for montocompra;

 insert into visitantes values ('Susana Molina',35,'Colon 123',default,59.80);
 insert into visitantes (nombre,edad,domicilio) values ('Marcos Torres',29,'Carlos Paz');
 insert into visitantes values ('Mariana Juarez',45,'Carlos Paz',null,23.90);

 select * from visitantes;

 exec sp_helpconstraint visitantes;

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_numero
  default 0
  for numero;

----Ejercicio 47.2

if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a' = auto, 'm' = moto
  horallegada datetime,
  horasalida datetime
 );

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 insert into vehiculos values('BVB111',default,default,null);

 select * from vehiculos;

 alter table vehiculos
  add constraint DF_vehiculos_tipo2
  default 'm'
  for tipo;

 alter table vehiculos
  add constraint DF_vehiculos_horallegada
  default getdate()
  for horallegada;

 insert into vehiculos (patente,tipo) values('CAA258','a');

 select * from vehiculos;

 exec sp_helpconstraint vehiculos;

 ----Ejercicio 48.1

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento datetime,
  cantidadhijos tinyint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 alter table empleados
   add constraint CK_empleados_sueldo_positivo
   check (sueldo>0);

 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000);

 delete from empleados where sueldo=6000;

 alter table empleados
   add constraint CK_empleados_sueldo_maximo
   check (sueldo<=5000); 

 alter table empleados
   add constraint CK_fechanacimiento_actual
   check (fechanacimiento<getdate());

 alter table empleados
   add constraint CK_empleados_seccion_lista
   check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
   add constraint CK_cantidadhijos_valores
   check (cantidadhijos between 0 and 15);

 exec sp_helpconstraint empleados;

 insert into empleados values ('24444444','Carlos Fuentes','1980/02/05',2,'Administracion',-1500);

 insert into empleados values ('25555555','Daniel Garcia','2007/05/05',2,'Sistemas',1550);

 update empleados set cantidadhijos=21 where documento='22222222';

 update empleados set seccion='Recursos' where documento='22222222';

 alter table empleados
   add constraint CK_seccion_letrainicial
   check (seccion like '%B');

----Ejercicio 48.2

if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  numero int identity,
  patente char(6),
  tipo char(4),
  fechahoraentrada datetime,
  fechahorasalida datetime
 );

 insert into vehiculos values('AIC124','auto','2007/01/17 8:05','2007/01/17 12:30');
 insert into vehiculos values('CAA258','auto','2007/01/17 8:10',null);
 insert into vehiculos values('DSE367','moto','2007/01/17 8:30','2007/01/17 18:00');

 alter table vehiculos
   add constraint CK_vehiculos_patente_patron
   check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 insert into vehiculos values('AB1234','auto',getdate(),null);

 alter table vehiculos
   add constraint CK_vehiculos_tipo_valores
   check (tipo in ('auto','moto'));

 update vehiculos set tipo='bici' where patente='AIC124';

 alter table vehiculos
   add constraint DF_vehiculos_tipo
   default 'bici'
   for tipo;

 insert into vehiculos values('SDF134',default,null,null);

 alter table vehiculos
   add constraint CK_vehiculos_fechahoraentrada_actual
   check (fechahoraentrada<=getdate());

 alter table vehiculos
   add constraint CK_vehiculos_fechahoraentradasalida
   check (fechahoraentrada<=fechahorasalida);

 insert into vehiculos values('ABC123','auto','2007/05/05 10:10',null);

 update vehiculos set fechahorasalida='2007/01/17 7:30'
   where patente='CAA258';

 exec sp_helpconstraint vehiculos;

 alter table vehiculos
   add constraint DF_vehiculos_fechahoraentrada
   default getdate()
   for fechahoraentrada;

 insert into vehiculos values('DFR156','moto',default,default);

 select * from vehiculos;

 exec sp_helpconstraint vehiculos;

 ----Ejercicio 49.1

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 insert into empleados values ('22222222','Alberto Acosta','Sistemas',-10);
 insert into empleados values ('33333333','Beatriz Benitez','Recursos',3000);
 insert into empleados values ('34444444','Carlos Caseres','Contaduria',4000);

 alter table empleados
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 alter table empleados
 with nocheck
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',-2000);

 alter table empleados
  nocheck constraint CK_empleados_sueldo_positivo;
 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',2000);

 alter table empleados
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
 with nocheck
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 exec sp_helpconstraint empleados;

 alter table empleados
  check constraint CK_empleados_sueldo_positivo;

 update empleados set seccion='Recursos' where nombre='Carlos Caseres';

 alter table empleados
  nocheck constraint CK_empleados_seccion_lista;
 update empleados set seccion='Recursos' where nombre='Carlos Caseres';

 ----Ejercicio 50.1

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

 insert into empleados values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados values ('23333333','Carlos Fuentes','Administracion');

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);
 delete from empleados
  where nombre='Carlos Fuentes';

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

 update empleados set documento='22222222'
  where documento='23333333';

 alter table empleados
 add constraint PK_empleados_nombre
 primary key(nombre);

 insert into empleados values(null,'Marcelo Juarez','Sistemas');

 alter table empleados
  add constraint DF_empleados_documento
  default '00000000'
  for documento;

 insert into empleados (nombre,seccion) values('Luis Luque','Sistemas'); 

 select * from empleados;

 insert into empleados (nombre,seccion) values('Ana Fuentes','Sistemas'); 

 exec sp_helpconstraint empleados;

 ----Ejercicio 50.2

 if object_id('remis') is not null
  drop table remis;

 create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis values('ABC123','Renault 12','1990');
 insert into remis values('DEF456','Fiat Duna','1995');

 alter table remis
 add constraint PK_remis_patente
 primary key(patente);

 alter table remis
 add constraint PK_remis_numero
 primary key(numero);

 exec sp_helpconstraint remis;

----Ejercicio 51.1

if object_id('remis') is not null
  drop table remis;

 create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis values('ABC123','Renault clio','1990');
 insert into remis values('DEF456','Peugeot 504','1995');
 insert into remis values('DEF456','Fiat Duna','1998');
 insert into remis values('GHI789','Fiat Duna','1995');
 insert into remis values(null,'Fiat Duna','1995');

 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 delete from remis where numero=3;
 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 insert into remis values('ABC123','Renault 11','1995');

 insert into remis values(null,'Renault 11','1995');

 exec sp_helpconstraint remis;

----Ejercicio 53.1

if OBJECT_ID('vehiculos') is not null
	drop table vehiculos;

create table vehiculos
(
	patente char(6) not null,
	tipo char(1),-- a = Auto, m = Moto
	horallegada datetime not null,
	horasalida datetime
);

alter table vehiculos
	add constraint CK_vehiculos_tipo
	check (tipo in ('a','m'));

alter table vehiculos
	add constraint DF_vehiculos_tipo
	default 'a' for tipo;

alter table vehiculos
	add constraint CK_vehiculos_patente_patron
	check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table vehiculos
	add constraint PK_vehiculos_patentellegada
	primary key(patente,horallegada);

insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);
insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);
insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);
insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint vehiculos;

alter table vehiculos
	drop DF_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

alter table vehiculos
	drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

exec sp_helpconstraint vehiculos;

----Ejercicio 54.1

 if object_id('vehiculos') is not null
  drop table vehiculos;
 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_horallegada') is not null
   drop rule RG_horallegada;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;
 if object_id ('RG_menor_fechaactual') is not null
   drop rule RG_menor_fechaactual;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
 insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
 insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
 insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);

 create rule RG_patente_patron as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 exec sp_help;

 exec sp_helpconstraint vehiculos;

 exec sp_bindrule RG_patente_patron,'vehiculos.patente';

 select * from empleados;

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo as @tipo in ('a','m');

 exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_vehiculos_tipo2 as @tipo in ('a','c','m');

 exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_menor_fechaactual as @fecha <= getdate();

 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

 insert into vehiculos values ('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 delete from vehiculos where patente='NOP555';

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 alter table vehiculos
 add constraint DF_vehiculos_tipo
 default 'b'
 for tipo;

 insert into vehiculos values ('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

 exec sp_helpconstraint vehiculos;

----Ejercicio 55.1

if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 create rule RG_patente_patron as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 exec sp_bindrule RG_patente_patron,'vehiculos.patente';

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo as @tipo in ('a','m');

 exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 create rule RG_vehiculos_tipo2 as @tipo in ('a','c','m');

 exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 drop rule RG_vehiculos_tipo2;

 drop rule RG_vehiculos_tipo;

 drop rule RG_patente_patron;

 exec sp_unbindrule 'vehiculos.patente';

 exec sp_helpconstraint vehiculos;

 exec sp_help;

 drop rule RG_patente_patron;

 exec sp_help;

 ----Ejercicio 57.1

 if object_id ('clientes') is not null
  drop table clientes;

 if object_id ('VP_legajo_patron') is not null
   drop default VP_legajo_patron;
 if object_id ('RG_legajo_patron') is not null
   drop rule RG_legajo_patron;
 if object_id ('RG_legajo') is not null
   drop rule RG_legajo;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_fechaactual') is not null
   drop default VP_fechaactual;

 create table clientes(
  legajo char(4),
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(15),
  provincia varchar(20) default 'Cordoba',
  fechaingreso datetime
 );

 create rule RG_legajo_patron as @valor like '[A-Z][A-Z][0-9][0-9]';

 exec sp_bindrule RG_legajo_patron,'clientes.legajo';

 create default VP_legajo_patron as 'AA00';

 exec sp_bindefault VP_legajo_patron,'clientes.legajo';

 create default VP_datodesconocido as '??';

 exec sp_bindefault VP_datodesconocido,'clientes.domicilio';

 exec sp_bindefault VP_datodesconocido,'clientes.ciudad';

 insert into clientes values('GF12','Ana Perez',default,default,'Cordoba','2001-10-10');
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.provincia';

 create default VP_fechaactual as getdate();

 exec sp_bindefault VP_fechaactual,'clientes.fechaingreso';

 insert into clientes default values;
 select * from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.fechaingreso';

 insert into clientes default values;

 create rule RG_legajo as @valor like 'B%';

 exec sp_bindrule RG_legajo,'clientes.legajo';

 insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');

 ----Ejercicio 58.1

  if object_id ('libros') is not null
  drop table libros;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_desconocido') is not null
   drop default VP_desconocido;
 if object_id ('RG_positivo') is not null
   drop rule RG_positivo;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint
 );

 create rule RG_positivo as @valor >=0;

 exec sp_bindrule RG_positivo,'libros.precio';

 exec sp_bindrule RG_positivo,'libros.cantidad';

 create default VP_cero as 0;

 exec sp_bindefault VP_cero,'libros.precio';

 exec sp_bindefault VP_cero,'libros.cantidad';

 create default VP_desconocido as 'Desconocido';

 exec sp_bindefault VP_desconocido,'libros.autor';

 exec sp_bindefault VP_desconocido,'libros.editorial';

 exec sp_help;

 exec sp_helpconstraint libros;

 insert into libros (titulo) values('Aprenda PHP');
 select * from libros;

 exec sp_unbindefault 'libros.precio';

 insert into libros (titulo) values('Matematica estas ahi');
 select * from libros;

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_unbindefault 'libros.cantidad';

 exec sp_helpconstraint libros;

 exec sp_help VP_cero;

 drop default VP_cero;

 exec sp_help VP_cero;

 ----Ejercicio 62.1

 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
 insert into alumnos values ('A234','23333333','Lopez','Ana',9);
 insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
 insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
 insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
 insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);

 create unique clustered index I_alumnos_apellido on alumnos(apellido);

 create clustered index I_alumnos_apellido on alumnos(apellido); 

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key nonclustered (legajo);

 exec sp_helpindex alumnos;

 exec sp_helpconstraint alumnos;

 create unique nonclustered index I_alumnos_documento on alumnos(documento);

 insert into alumnos values ('A789','27777777','Morales','Hector',8);

 exec sp_helpindex alumnos;

 create index I_alumnos_apellidonombre on alumnos(apellido,nombre);

 select name from sysindexes where name like '%alumnos%';

 alter table alumnos 
 add constraint UQ_alumnos_documento 
 unique (documento);

 exec sp_helpconstraint alumnos;

 exec sp_helpindex alumnos;

 select name from sysindexes where name like '%alumnos%';

 select name from sysindexes where name like 'I_%';

 ----Ejercicio 63.1

  if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido); 

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido,nombre)
  with drop_existing;

 exec sp_helpindex alumnos;

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique nonclustered (documento);

 exec sp_helpindex alumnos;

 create clustered index UQ_alumnos_documento
  on alumnos(documento)
  with drop_existing;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo); 

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create clustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create unique clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 ---Ejercicio 64.1

 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 exec sp_helpindex alumnos;

 drop index PK_alumnos_legajo;

 drop index I_alumnos_apellido;

 drop index alumnos.I_alumnos_apellido;

 exec sp_helpindex alumnos;

 if exists (select name from sysindexes
  where name = 'I_alumnos_apellido')
   drop index alumnos.I_alumnos_apellido;

 alter table alumnos
  drop PK_alumnos_legajo;

 exec sp_helpindex alumnos;

 ----Ejercicio 66.1

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';

 ---Ejercicio 67.1

 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';

----Ejercicio 68.1

if (OBJECT_ID('clientes')) is not null
	drop table clientes;

if (OBJECT_ID('provincias')) is not null
	drop table provincias;

create table clientes 
(
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
);

create table provincias
(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
);

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');
insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
	from provincias as p
	right join clientes as c
	on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
	from clientes as c
	left join provincias as p
	on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
	from provincias as p
	right join clientes as c
	on codigoprovincia = p.codigo
	where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
	from provincias as p
	right join clientes as c
	on codigoprovincia = p.codigo
	where p.codigo is null
	order by ciudad;

----Ejercicio 69.1

if (OBJECT_ID('deportes')) is not null
	drop table deportes;

if (OBJECT_ID('inscriptos')) is not null
	drop table inscriptos;

create table deportes
(
	codigo tinyint identity,
	nombre varchar(30),
	profesor varchar(30),
	primary key (codigo)
);

create table inscriptos
(
	documento char(8),
	codigodeporte tinyint not null,
	matricula char(1) --s = Paga, n = Impaga
);

insert into deportes values('tenis','Marcelo Roca');
insert into deportes values('natacion','Marta Torres');
insert into deportes values('basquet','Luis Garcia');
insert into deportes values('futbol','Marcelo Roca');
insert into inscriptos values('22222222',3,'s');
insert into inscriptos values('23333333',3,'s');
insert into inscriptos values('24444444',3,'n');
insert into inscriptos values('22222222',2,'s');
insert into inscriptos values('23333333',2,'s');
insert into inscriptos values('22222222',4,'n'); 
insert into inscriptos values('22222222',5,'n'); 

select documento,d.nombre,matricula
	from inscriptos as i
	join deportes as d
	on codigodeporte = codigo;

select documento,d.nombre,matricula
	from inscriptos as i
	left join deportes as d
	on codigodeporte = codigo;

select documento,d.nombre,matricula
	from deportes as d
	right join inscriptos as i
	on codigodeporte = codigo;

select nombre
	from deportes as d
	left join inscriptos as i
	on codigodeporte = codigo
	where codigodeporte is null;

select documento
	from inscriptos as i
	left join deportes as d
	on codigodeporte = codigo
	where codigo is null;

select documento,nombre,profesor,matricula
	from inscriptos as i
	full join deportes as d
	on codigodeporte = codigo;

----Ejercicio 70.1

if OBJECT_ID('mujeres') is not null
	drop table mujeres;

if OBJECT_ID('varones') is not null
	drop table varones;

create table mujeres
(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
);

create table varones
(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
);

insert into mujeres values('Maria Lopez','Colon 123',45);
insert into mujeres values('Liliana Garcia','Sucre 456',35);
insert into mujeres values('Susana Lopez','Avellaneda 98',41);
insert into varones values('Juan Torres','Sarmiento 755',44);
insert into varones values('Marcelo Oliva','San Martin 874',56);
insert into varones values('Federico Pereyra','Colon 234',38);
insert into varones values('Juan Garcia','Peru 333',50);

select m.nombre,m.edad,v.nombre,v.edad
	from mujeres as m
	cross join varones as v;

select m.nombre,m.edad,v.nombre,v.edad
	from mujeres as m
	cross join varones as v
	where m.edad > 40 and
	v.edad > 40;

select m.nombre,m.edad,v.nombre,v.edad
	from mujeres as m
	cross join varones as v
	where m.edad - v.edad between -10 and 10;

-----Ejercicio 70.2

if OBJECT_ID('guardias') is not null
	drop table guardias;

if OBJECT_ID('tareas') is not null
	drop table tareas;

create table guardias
(
	documento char(8),
	nombre varchar(30),
	sexo char(1), --f = Femenino /// m = Masculino
	domicilio varchar(30),
	primary key (documento)
);

create table tareas
(
	codigo tinyint identity,
	domicilio varchar(30),
	descripcion varchar(30),
	horario char(2), --'AM' o 'PM'
	primary key (codigo)
);

insert into guardias values('22333444','Juan Perez','m','Colon 123');
insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');
insert into tareas values('Colon 1111','vigilancia exterior','AM');
insert into tareas values('Urquiza 234','vigilancia exterior','PM');
insert into tareas values('Peru 345','vigilancia interior','AM');
insert into tareas values('Avellaneda 890','vigilancia interior','PM');

select nombre,t.domicilio,descripcion
	from guardias
	cross join tareas as t;

select nombre,t.domicilio,descripcion
	from guardias as g
	cross join tareas as t
	where (g.sexo='f' and t.descripcion='vigilancia interior') or
	(g.sexo='m' and t.descripcion='vigilancia exterior');

---Ejercicio 71.1

if object_id('equipos') is not null
  drop table equipos;

 create table equipos(
  nombre varchar(30),
  barrio varchar(20),
  domicilio varchar(30),
  entrenador varchar(30)
 );

 insert into equipos values('Los tigres','Gral. Paz','Sarmiento 234','Juan Lopez');
 insert into equipos values('Los leones','Centro','Colon 123','Gustavo Fuentes');
 insert into equipos values('Campeones','Pueyrredon','Guemes 346','Carlos Moreno');
 insert into equipos values('Cebollitas','Alberdi','Colon 1234','Luis Duarte');

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  cross join equipos as e2
  where e1.nombre<>e2.nombre;

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  join equipos as e2
  on e1.nombre<>e2.nombre;

 select e1.nombre,e2.nombre,e1.barrio as 'sede'
  from equipos as e1
  cross join equipos as e2
  where e1.nombre>e2.nombre;

----Enjercicio 72.1

if object_id('visitantes') is not null
  drop table visitantes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  codigociudad tinyint not null,
  mail varchar(30),
  montocompra decimal (6,2)
 );

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20)
 );
 
 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('La Falda');
 insert into ciudades values('Cruz del Eje');

 insert into visitantes values 
   ('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
 insert into visitantes values 
   ('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
 insert into visitantes values 
   ('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
 insert into visitantes values 
   ('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
 insert into visitantes values 
   ('Alejandra Garcia',28,'f',null,2,null,280.50);
 insert into visitantes values 
   ('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
 insert into visitantes values 
   ('Mariana Juarez',33,'f',null,2,null,90);

 select c.nombre,
  count(*) as cantidad
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,sexo,
  avg(montocompra) as 'promedio de compra'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre,sexo;

 select c.nombre,
  count(mail) as 'tienen mail'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,
  max(montocompra)
  from visitantes as v
  join ciudades as c
  on codigociudad=c.codigo
  group by c.nombre;

----Ejercicio 73.1

if OBJECT_ID('socios') is not null
	drop table socios;

if OBJECT_ID('deportes') is not null
	drop table deportes;

if OBJECT_ID('inscriptos') is not null
	drop table inscriptos;

create table socios
(
	documento char(8) not null, 
	nombre varchar(30),
	domicilio varchar(30),
	primary key(documento)
);

create table deportes
(
	codigo tinyint identity,
	nombre varchar(20),
	profesor varchar(15),
	primary key(codigo)
);

create table inscriptos
(
	documento char(8) not null, 
	codigodeporte tinyint not null,
	anio char(4),
	matricula char(1), --s = Paga /// n = Impaga
	primary key(documento,codigodeporte,anio)
);

insert into socios values('22222222','Ana Acosta','Avellaneda 111');
insert into socios values('23333333','Betina Bustos','Bulnes 222');
insert into socios values('24444444','Carlos Castro','Caseros 333');
insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes values('basquet','Juan Juarez');
insert into deportes values('futbol','Pedro Perez');
insert into deportes values('natacion','Marina Morales');
insert into deportes values('tenis','Marina Morales');

insert into inscriptos values ('22222222',3,'2006','s');
insert into inscriptos values ('23333333',3,'2006','s');
insert into inscriptos values ('24444444',3,'2006','n');
insert into inscriptos values ('22222222',3,'2005','s');
insert into inscriptos values ('22222222',3,'2007','n');
insert into inscriptos values ('24444444',1,'2006','s');
insert into inscriptos values ('24444444',2,'2006','s');
insert into inscriptos values ('26666666',0,'2006','s');

select s.nombre,d.nombre,anio
	from deportes as d
		right join inscriptos as i
			on codigodeporte=d.codigo
		left join socios as s
			on i.documento=s.documento;

select s.nombre,d.nombre,anio,matricula
	from deportes as d
		full join inscriptos as i
			on codigodeporte=d.codigo
		full join socios as s
			on s.documento=i.documento;

select s.nombre,d.nombre,anio,matricula
	from deportes as d
		join inscriptos as i
			on codigodeporte=d.codigo
		join socios as s
			on s.documento=i.documento
			where s.documento='22222222';

