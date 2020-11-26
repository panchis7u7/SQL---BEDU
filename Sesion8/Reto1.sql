USE Starbucks;
#Lat: 19.708001971003057, Long: -101.20430798241452

SELECT store_name, c.city, e.state, longitude, latitude, (6371 * ACOS(Provincias
												COS(RADIANS(19.70800197)) * COS(RADIANS(latitude)) *
                                                COS(RADIANS(longitude) - RADIANS(-101.20430798)) +
                                                SIN(RADIANS(19.70800197)) * SIN(RADIANS(latitude))
												) 
										) AS Distancia
FROM Tiendas
INNER JOIN Ciudades c ON c.id_city = Tiendas.id_city 
INNER JOIN Estados e ON e.id_state = c.id_state 
HAVING Distancia < 370
ORDER BY Distancia ASC
LIMIT 1; 