#Carlos Sebastian Madrigal Rodriguez 

CREATE DATABASE IF NOT EXISTS theater;
USE theater;

CREATE TABLE IF NOT EXISTS users (
   id_usuario INT PRIMARY KEY, 
   genero VARCHAR(1), 
   edad INT,
   ocup INT,
   cp VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS movies (
   id_pelicula INT PRIMARY KEY, 
   titulo VARCHAR(60), 
   generos VARCHAR(60)
); 

CREATE TABLE IF NOT EXISTS ratings (
   id_rating INT PRIMARY KEY,
   id_usuario INT, 
   id_pelicula INT, 
   rating INT, 
   time_stamp BIGINT,
   FOREIGN KEY (id_usuario) REFERENCES users (id_usuario) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (id_pelicula) REFERENCES movies (id_pelicula) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS ratings;
DROP DATABASE IF EXISTS theater;