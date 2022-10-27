use actividades;

/*Ejercicio3.1*/
select * from almacenes;

/*Ejercicio3.2*/
select * from cajas where VALOR>150;

/*Ejercicio3.3*/
select distinct CONTENIDO from cajas;

/*Ejercicio3.4*/
select avg(VALOR) from cajas;

/*Ejercicio3.5*/
select ALMACEN ,avg(VALOR) from cajas group by ALMACEN;

/*Ejercicio3.6*/
select ALMACEN, avg(VALOR) from cajas group by ALMACEN having avg(VALOR)>150;

/*Ejercicio3.7*/
select NUMREFERENCIA, LUGAR from almacenes inner join cajas on almacenes.CODIGO=cajas.ALMACEN;

/*Ejercicio3.8*/
select ALMACEN, count(*) from cajas group by almacen;

/*Ejercicio3.9*/
select CODIGO from almacenes where CAPACIDAD < (select count(*) from cajas where almacen=codigo);

/*Ejercicio3.10*/
select NUMREFERENCIA from cajas where almacen in (select CODIGO from almacenes where LUGAR='Bilbao');

/*Ejercicio3.11*/
select * from almacenes;
insert into almacenes values (6,'Barcelona',3);

/*Ejercicio3.12*/
insert into cajas values ('H5RT','Papel',200,2);

/*Ejercicio3.13*/
update cajas set VALOR = (VALOR-VALOR*0.15);

/*Ejercicio3.14*/
update cajas set VALOR=(VALOR-VALOR*0.2) where  VALOR>(select avg(VALOR) from (select * from cajas) as caj);

/*Ejercicio3.15*/
delete from cajas where VALOR < 100;

/*Ejercicio3.16*/
DELETE FROM cajas WHERE ALMACEN IN 
(select CODIGO from almacenes where CAPACIDAD < 
(select * from (select count(*) from cajas where cajas.ALMACEN=almacenes.CODIGO)as caj)); 

