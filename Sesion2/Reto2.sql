USE tienda;

#1 ¿Cuál es el promedio de salario de los puestos?

SELECT AVG(salario) AS Promedio FROM puesto;

#2 ¿Cuántos artículos incluyen la palabra Pasta en su nombre?

SELECT COUNT(*) AS NoArticulos FROM articulo WHERE nombre LIKE '%pasta%';

#3 ¿Cuál es el salario mínimo y máximo?

SELECT MIN(salario) AS SalarioMin, MAX(salario) AS SalarioMax FROM puesto;

#4 ¿Cuál es la suma del salario de los últimos cinco puestos agregados?

SELECT SUM(salario) AS SalarioTotal FROM puesto WHERE id_puesto > 995;

# VERSION SUBCONSULTA.
SELECT SUM(salario) AS SalarioTotal FROM puesto WHERE id_puesto > (SELECT (MAX(id_puesto) - 5) FROM puesto);
# VERSION SUBCONSULTA 2.
SELECT SUM(salario) AS SalarioTotal FROM (SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5) AS Subconsulta;