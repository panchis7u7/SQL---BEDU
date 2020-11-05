#Carlos Sebastian Madrigal Rodriguez.
USE tienda;

#1 Obtener el puesto de un empleado.
CREATE OR REPLACE VIEW Puestos111 AS
SELECT CONCAT(em.nombre,' ', em.apellido_paterno,' ', em.apellido_materno), p.nombre FROM empleado AS em
JOIN puesto p ON p.id_puesto = em.id_puesto;

SELECT * FROM Puestos111;

#2 Saber qué artículos ha vendido cada empleado.
CREATE OR REPLACE VIEW Articulos111 AS
SELECT v.clave, CONCAT(em.nombre, ' ', em.apellido_paterno, ' ', apellido_materno) AS nombre, ar.nombre AS articulo FROM empleado AS em
JOIN venta v ON v.id_empleado = em.id_empleado
JOIN articulo ar ON ar.id_articulo = v.id_articulo
ORDER BY v.clave;


SELECT * FROM Articulos111;

#3 Saber qué puesto ha tenido más ventas.
CREATE OR REPLACE VIEW Ventas111 AS
SELECT p.nombre, COUNT(v.clave) AS Total FROM venta AS v
JOIN empleado e ON e.id_empleado = v.id_empleado
JOIN puesto p ON p.id_puesto = e.id_puesto
GROUP BY p.nombre
ORDER BY total DESC;

SELECT * FROM Ventas111 LIMIT 1;
