USE H1N1;

#####¿Cuál fue el país con mayor número de muertes? => Mexico, 2271.

SELECT country, SUM(deaths) AS muertes FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
HAVING muertes = (
	SELECT MAX(total_muertes) AS total FROM (
		SELECT country, SUM(deaths) AS total_muertes FROM Estadisticas e
			INNER JOIN Paises p ON p.id_country = e.id_country
			GROUP BY p.id_country
		) AS SUB
	)
ORDER BY muertes ASC;

#####¿Cuál fue el país con menor número de muertes?

SELECT country, SUM(deaths) AS muertes FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
HAVING muertes = (
	SELECT MIN(total_muertes) AS total FROM (
		SELECT country, SUM(deaths) AS total_muertes FROM Estadisticas e
			INNER JOIN Paises p ON p.id_country = e.id_country
			GROUP BY p.id_country
		) AS SUB
	) ORDER BY muertes ASC;

#####¿Cuál fue el país con el mayor número de casos?

SELECT country, SUM(cases) AS casos FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
HAVING casos = (
	SELECT MAX(total_casos) AS total FROM (
		SELECT country, SUM(cases) AS total_casos FROM Estadisticas e
			INNER JOIN Paises p ON p.id_country = e.id_country
			GROUP BY p.id_country
		) AS SUB
	) ORDER BY casos ASC;

#####¿Cuál fue el número de muertes promedio?

SELECT ROUND(AVG(deaths)) FROM Estadisticas;

SELECT country, ROUND(AVG(SUM(deaths)) as muertes_totales FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
ORDER BY muertes_totales DESC;

#¿Cuál fue el número de casos promedio?

SELECT ROUND(AVG(cases)) FROM Estadisticas;

#####Top 5 de países con más muertes 

SELECT country, SUM(deaths) AS muertes FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
HAVING muertes IN (
		SELECT DISTINCT SUM(deaths) AS total_muertes FROM Estadisticas e
			INNER JOIN Paises p ON p.id_country = e.id_country
			GROUP BY p.id_country
			ORDER BY total_muertes ASC
	) ORDER BY muertes ASC;
    
		SELECT DISTINCT SUM(deaths) AS total_muertes FROM Estadisticas e
			INNER JOIN Paises p ON p.id_country = e.id_country
			GROUP BY p.id_country
			ORDER BY total_muertes ASC;
            
#####Top 5 de países con menos muertes

SELECT country FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country
ORDER BY SUM(deaths) ASC
LIMIT 5;


SELECT p.id_country FROM Estadisticas e
INNER JOIN Paises p ON p.id_country = e.id_country
GROUP BY e.id_country;