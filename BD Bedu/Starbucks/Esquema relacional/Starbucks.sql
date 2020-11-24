CREATE DATABASE IF NOT EXISTS Starbucks;
USE Starbucks;

CREATE TABLE IF NOT EXISTS Paises (
	id_country INT PRIMARY KEY,
    country VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estados (
	id_state INT PRIMARY KEY,
    state VARCHAR(60) NOT NULL,
    id_country INT NOT NULL,
	FOREIGN KEY (id_country) REFERENCES Paises (id_country) ON DELETE CASCADE ON UPDATE CASCADE 
);

CREATE TABLE IF NOT EXISTS Ciudades (
	id_city INT PRIMARY KEY,
    city VARCHAR(40) NOT NULL,
    id_state INT NOT NULL,
    FOREIGN KEY (id_state) REFERENCES Estados (id_state) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Propiedades (
	id_ownership INT PRIMARY KEY,
    ownership VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Zonas_Horarias (
	id_timezone INT PRIMARY KEY,
    timezone VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tiendas (
	id_store INT UNIQUE,
    store_number VARCHAR(20) UNIQUE,
    store_name VARCHAR(40) UNIQUE,
    phone_number VARCHAR(14),
    street_address VARCHAR(60),
    id_ownership INT NOT NULL,
    id_city INT NOT NULL,
    longitude VARCHAR(10),
    latitude VARCHAR(10),
    id_timezone INT NOT NULL,
    FOREIGN KEY (id_ownership) REFERENCES Propiedades (id_ownership) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_city) REFERENCES Ciudades (id_city) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_timezone) REFERENCES Zonas_Horarias (id_timezone) ON DELETE CASCADE ON UPDATE CASCADE
);