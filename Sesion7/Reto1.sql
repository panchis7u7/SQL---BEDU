#Carlos Sebastian Madrigal Rodriguez 

CREATE DATABASE IF NOT EXISTS theater;
USE theater;

CREATE TABLE IF NOT EXISTS movies (
   id_pelicula INT PRIMARY KEY, 
   titulo VARCHAR(60), 
   generos VARCHAR(60)
); 

CREATE TABLE IF NOT EXISTS ratings (
   id_usuario INT, 
   id_pelicula INT, 
   rating INT, 
   time_stamp BIGINT,
   FOREIGN KEY (id_pelicula) REFERENCES movies (id_pelicula) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS ratings;
DROP DATABASE IF EXISTS theater;