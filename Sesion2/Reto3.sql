USE tienda;

#1 ¿Cuántos registros hay por cada uno de los puestos?

SELECT nombre, COUNT(*) AS Cuenta FROM puesto GROUP BY nombre;

#2 ¿Cuánto dinero se paga en total por puesto?

SELECT nombre, SUM(salario) AS Total FROM puesto GROUP BY nombre;

#3 ¿Cuál es el número total de ventas por vendedor?

SELECT id_empleado, COUNT(clave) AS noVentas FROM venta GROUP BY id_empleado;

#4 ¿Cuál es el número total de ventas por artículo?

SELECT id_articulo, COUNT(*) AS noVentas FROM venta GROUP BY id_articulo;