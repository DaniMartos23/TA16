use actividades;

/*Ejercicio4.1*/
select NOMBRE from peliculas;

/*Ejercicio4.2*/
select distinct CALIFICACIONEDAD from peliculas;

/*Ejercicio4.3*/
select * from peliculas where CALIFICACIONEDAD is null;

/*Ejercicio4.4*/
select * from salas where PELICULA is null;

/*Ejercicio4.5*/
select * from salas left join peliculas on salas.PELICULA=peliculas.CODIGO;

/*Ejercicio4.6*/
select * from salas right join peliculas on salas.PELICULA=peliculas.CODIGO;

/*Ejercicio4.7*/
select NOMBRE from peliculas where CODIGO not in (
select PELICULA from salas where PELICULA is not null);

/*Ejercicio4.8*/
select * from peliculas;
insert into peliculas values (10,'Uno, Dos, Tres',7); 

/*Ejercicio4.9*/
update peliculas set CALIFICACIONEDAD='PG-13' where CALIFICACIONEDAD is null;

/*Ejercicio4.10*/
delete from salas where PELICULA in (
select CODIGO from peliculas where CALIFICACIONEDAD='G');