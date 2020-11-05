#Carlos Sebastian Madrigal Rodriguez.
USE tienda;

#1 ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT clave, nombre, apellido_paterno, apellido_materno FROM empleado
JOIN venta ON venta.id_empleado = empleado.id_empleado
ORDER BY clave;

#Solucion 2:
SELECT clave, nombre, apellido_paterno FROM venta AS v
JOIN empleado AS e ON v.id_empleado = e.id_empleado
ORDER BY clave;

#2 ¿Cuál es el nombre de los artículos que se han vendido?
SELECT clave, nombre FROM venta AS v
JOIN articulo AS a ON v.id_articulo = a.id_articulo
ORDER BY clave;

#3 ¿Cuál es el total de cada venta?
SELECT clave, round(sum(precio),2) AS total FROM venta AS v
JOIN articulo AS a ON v.id_articulo = a.id_articulo
GROUP BY clave
ORDER BY clave;
