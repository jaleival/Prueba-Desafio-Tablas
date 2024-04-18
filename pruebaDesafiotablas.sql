-- 1.- Crear la Base de Datos llamada películas (1 Punto).
CREATE DATABASE peliculas;

-- 2.- Crear tabla Películas y Reparto (1 Punto).
CREATE TABLE peliculas (
	id INT PRIMARY KEY,
	pelicula VARCHAR(100),
	anio_estreno INT,
	director VARCHAR(50)
);	

CREATE TABLE reparto (
	reparto_id INT, 
	actor        VARCHAR(100), 
	FOREIGN KEY(reparto_id) REFERENCES peliculas(id)
);

-- Verificamos tabla con los registros películas y reparto.
SELECT * FROM peliculas;
SELECT * FROM reparto;

-- Importamos los datos CSV de Películas y Reparto.
copy peliculas from 'C:\apoyoDesafiopeliculas\peliculas.csv' delimiter ',' csv header;
copy reparto from 'C:\apoyoDesafiopeliculas\reparto.csv' delimiter ',' csv header;

-- 3.- Obtener el ID de la película "Titanic".
SELECT id FROM peliculas WHERE pelicula = 'Titanic';
-- El ID de la película corresponde al 2.

-- 4.- Listar todos los actores que aparecen en la película de "Titanic" (1 Punto).
SELECT * FROM reparto WHERE reparto_id = 2;
-- La totalidad de actores da un total de 13.

-- 5.- Consultar cuántas películas top 100 participa Harrison Ford (2 Puntos).
SELECT count(reparto_id) FROM reparto WHERE actor = 'Harrison Ford';
-- Da un total de 8 películas.

-- 6.- Indicar las películas estrenadas entre los anios 1990 y 1999 oredenadas por 
-- título de manera ascendente (1 Punto).
SELECT * FROM peliculas WHERE anio_estreno BETWEEN 1990 AND 1999 ORDER BY pelicula ASC
-- Hay un total de 30 películas entre los anios 90 hasta el 99.

-- 7.- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe
-- ser nombrado para la consulta "longitud_titulo" (1 Punto).
SELECT pelicula, LENGTH(pelicula) as longitud_titulo FROM peliculas;
-- Acá esta el listado de las 100 películas y su longitud respectivas (también se suman los espacios como caracter).

-- 8.- Consultar cual es la longitud más grande entre todos los títulos de las películas (2 Puntos).
SELECT MAX(LENGTH(pelicula)) FROM peliculas;
-- La película con mayor caracter (52) llamada con "Sweeney Todd: El barbero diabólico de la calle Fleet" 
