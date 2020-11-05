#Carlos Sebastian Madrigal Rodriguez.
USE tienda;

#1 ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?
SELECT nombre FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario > 100000);

#2 ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT id_empleado, MAX(total_ventas) AS Max_Ventas, MIN(total_ventas) AS Min_Ventas FROM (
	SELECT clave, id_empleado, COUNT(*) AS total_ventas FROM venta GROUP BY id_empleado, clave) AS sub
GROUP BY id_empleado;

#3 ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT clave, id_articulo FROM venta WHERE id_articulo IN (
	SELECT id_articulo FROM articulo WHERE precio > 5000);
