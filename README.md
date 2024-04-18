# Prueba-Desafio-Tablas
#### -- 1.- Crear la Base de Datos llamada películas (1 Punto).
#### CREATE DATABASE peliculas;
#### -- 2.- Crear tabla Películas y Reparto (1 Punto).
#### CREATE TABLE peliculas (id INT PRIMARY KEY,pelicula VARCHAR(100),anio_estreno INT,director VARCHAR(50);
#### CREATE TABLE reparto (peliculas_fk INT, actor VARCHAR(100), FOREIGN KEY(peliculas_fk) REFERENCES peliculas (id);
#### -- Importamos los datos CSV de Películas y Reparto.
#### copy reparto from 'C:\apoyoDesafiopeliculas\reparto.csv' delimiter ',' csv header;
#### copy reparto from 'C:\apoyoDesafiopeliculas\reparto.csv' delimiter ',' csv header;
#### -- 3.- Obtener el ID de la película "Titanic".
#### [![Resp3.jpg](https://i.postimg.cc/jd7nYVcz/Resp3.jpg)](https://postimg.cc/ppPLK6gT)
#### -- 4.- Listar todos los actores que aparecen en la película de "Titanic" (1 Punto).
#### [![Resp4.jpg](https://i.postimg.cc/ydxWf2W3/Resp4.jpg)](https://postimg.cc/G80ct7Fb)
#### -- 5.- Consultar cuántas películas top 100 participa Harrison Ford (2 Puntos).
#### [![Resp5.jpg](https://i.postimg.cc/rpQKNqyL/Resp5.jpg)](https://postimg.cc/674W9JGH)
#### -- 6.- Indicar las películas estrenadas entre los anios 1990 y 1999 oredenadas por 
#### -- título de manera ascendente (1 Punto).
#### [![Resp6.jpg](https://i.postimg.cc/DZN0R5bj/Resp6.jpg)](https://postimg.cc/mzQTHYjC)
#### -- 7.- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe
#### -- ser nombrado para la consulta "longitud_titulo" (1 Punto).
#### [![Resp7.jpg](https://i.postimg.cc/qqCqrnsk/Resp7.jpg)](https://postimg.cc/gLmmqxt5)
#### -- 8.- Consultar cual es la longitud más grande entre todos los títulos de las películas (2 Puntos).
#### [![Resp8.jpg](https://i.postimg.cc/VNYJtJ8R/Resp8.jpg)](https://postimg.cc/PCRfsrNp)
