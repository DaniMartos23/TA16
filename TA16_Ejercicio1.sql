use actividades;

/*-------------------------------EJERCICIO 1-------------------------------*/
/* Ejercicio1.1 */

Select nombre from articulos;

/* Ejercicio1.2 */

Select nombre,precio from articulos;

/* Ejercicio1.3 */

Select nombre from articulos where precio<= 200;

/* Ejercicio1.4 */

Select nombre from articulos where precio<= 120 and precio >=60;

/* Ejercicio1.5 */

Select nombre, (precio*166.386) as precio_pesetas from articulos;

/* Ejercicio1.6 */

Select avg(precio) as precio_medio from articulos;

/* Ejercicio1.7 */

Select avg(precio) as precio_medio from articulos where fabricante=2;

/* Ejercicio1.8 */

Select count(*) as num_articulos from articulos where precio>=180;

/* Ejercicio1.9 */

Select nombre,precio from articulos where precio>=180 order by precio DESC,nombre;

/* Ejercicio1.10 */

Select * from articulos inner join fabricantes on articulos.FABRICANTE=fabricantes.CODIGO;

/* Ejercicio1.11 */

Select articulos.NOMBRE,precio,fabricantes.NOMBRE from articulos inner join fabricantes on articulos.FABRICANTE=fabricantes.CODIGO;

/* Ejercicio1.12 (ERROR SI NO SE PONE GROUP BY*/

Select avg(precio),fabricante from articulos group by fabricante;

/* Ejercicio1.13 */

Select avg(precio), fabricantes.NOMBRE from articulos inner join fabricantes on articulos.FABRICANTE=fabricantes.CODIGO group by fabricantes.NOMBRE;

/* Ejercicio1.14 */

Select avg(precio), fabricantes.NOMBRE from articulos inner join fabricantes on articulos.FABRICANTE=fabricantes.CODIGO group by fabricantes.NOMBRE
having avg(precio)>=150;

/* Ejercicio1.15 */

Select nombre,precio from articulos where precio= (select min(precio) from articulos);

/* Ejercicio1.16 */

Select articulos.nombre,precio,fabricantes.nombre from articulos inner join fabricantes 
on articulos.FABRICANTE=fabricantes.CODIGO and 
articulos.PRECIO= (select max(articulos.precio) from  articulos where articulos.FABRICANTE=fabricantes.codigo);

/* Ejercicio1.17 */

select * from articulos;
insert into articulos values (30,'Altavoces',70,2);

/* Ejercicio1.18 */

update articulos set NOMBRE='Impresora Laser' where CODIGO=8;

/* Ejercicio1.19 */

update articulos set PRECIO = PRECIO*0.9;

/* Ejercicio1.20 */

update articulos set PRECIO=PRECIO-10 where PRECIO>=120;
