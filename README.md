# Prueba-Desafio-Tablas
#### -- 1.- Crear la Base de Datos llamada películas (1 Punto).
#### CREATE DATABASE peliculas;
#### -- 2.- Crear tabla Películas y Reparto (1 Punto).
#### CREATE TABLE peliculas (id INT PRIMARY KEY,pelicula VARCHAR(100),anio_estreno INT,director VARCHAR(50);
#### CREATE TABLE reparto (peliculas_fk INT, actor VARCHAR(100), FOREIGN KEY(peliculas_fk) REFERENCES peliculas (id);
#### -- 3.- Obtener el ID de la película "Titanic".
#### [![Resp3.jpg](https://i.postimg.cc/jd7nYVcz/Resp3.jpg)](https://postimg.cc/ppPLK6gT)
#### -- 4.- Listar todos los actores que aparecen en la película de "Titanic" (1 Punto).
#### [![Resp4.jpg](https://i.postimg.cc/ydxWf2W3/Resp4.jpg)](https://postimg.cc/G80ct7Fb)
