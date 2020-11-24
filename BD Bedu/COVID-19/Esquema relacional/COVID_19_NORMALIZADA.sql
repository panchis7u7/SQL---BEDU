CREATE DATABASE IF NOT EXISTS COVID;
USE COVID;

CREATE TABLE IF NOT EXISTS Fechas (
	id_date INT PRIMARY KEY,
    date TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS Provincias (
	id_province INT PRIMARY KEY,
    province VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Regiones(
	id_region INT PRIMARY KEY,
    region VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Stadistics (
	id_statistic INT PRIMARY KEY,
    confirmed INT NOT NULL,
    deaths INT NOT NULL,
    recovered INT NOT NULL,
    last_update TIMESTAMP NOT NULL,
    id_province INT,
    id_region INT,
    latitude INT,
    longitude INT,
    id_date INT,
    FOREIGN KEY (id_province) REFERENCES Provincias (id_province) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (id_region) REFERENCES Regiones (id_region) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_date) REFERENCES Fechas (id_date) ON DELETE CASCADE ON UPDATE CASCADE
);