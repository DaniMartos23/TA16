use actividades;

/*Ejercicio2.1*/
select apellidos from empleados;

/*Ejercicio2.2*/
select distinct apellidos from empleados;

/*Ejercicio2.3*/
select * from empleados where apellidos='Smith';

/*Ejercicio2.4*/
select * from empleados where apellidos='Smith' or apellidos='Rogers';

/*Ejercicio2.5*/
select * from empleados where departamento=14;

/*Ejercicio2.6*/
select * from empleados where departamento=37 or departamento=77;

/*Ejercicio2.7*/
select * from empleados where apellidos like 'P%';

/*Ejercicio2.8*/
select sum(Presupuesto) from departamentos;

/*Ejercicio2.9*/
select Departamento,count(*) from empleados group by Departamento;

/*Ejercicio2.10*/
select * from empleados inner join departamentos on empleados.DEPARTAMENTO = departamentos.CODIGO;

/*Ejercicio2.11*/
select e.NOMBRE, APELLIDOS,d.NOMBRE,PRESUPUESTO from empleados e inner join departamentos d on e.DEPARTAMENTO=d.CODIGO;

/*Ejercicio2.12*/
select NOMBRE,APELLIDOS from empleados where departamento in (select CODIGO from departamentos where PRESUPUESTO > 60000);

/*Ejercicio2.13*/
select * from departamentos where PRESUPUESTO > (select avg(PRESUPUESTO) from departamentos);

/*Ejercicio2.14*/
select NOMBRE from departamentos where CODIGO in (
select DEPARTAMENTO from empleados group by departamento having count(*)>2);

/*Ejercicio2.15*/
insert into departamentos values (11,'calidad',40000);
insert into empleados values ('89267109','Esther','Vazquez',11);

/*Ejercicio2.16*/
update departamentos set PRESUPUESTO=(PRESUPUESTO-PRESUPUESTO*0.10);

/*Ejercicio2.17*/
update empleados set DEPARTAMENTO = 14 where DEPARTAMENTO =77;

/*Ejercicio2.18*/
delete from empleados where DEPARTAMENTO = 14;

/*Ejercicio2.19*/
delete from empleados where DEPARTAMENTO in  (select CODIGO from departamentos where PRESUPUESTO >=60000);

/*Ejercicio2.20*/
truncate table empleados;

