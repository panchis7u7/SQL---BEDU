CREATE DATABASE IF NOT EXISTS H1N1;
USE H1N1;

CREATE TABLE IF NOT EXISTS Actualizaciones (
	id_update INT PRIMARY KEY,
    update_time TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS Paises (
	id_country INT PRIMARY KEY,
    country VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estadisticas (
	id_stadistic INT PRIMARY KEY,
    cases INT NOT NULL,
    deaths INT NOT NULL,
    id_update INT NOT NULL,
    id_country INT NOT NULL,
    FOREIGN KEY (id_update) REFERENCES Actualizaciones (id_update) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_country) REFERENCES Paises (id_country) ON UPDATE CASCADE ON DELETE CASCADE
);