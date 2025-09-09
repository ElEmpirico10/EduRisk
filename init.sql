CREATE DATABASE IF NOT EXISTS EduRisk;

USE EduRisk;

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario SERIAL PRIMARY KEY,
  primer_nombre VARCHAR(50) NOT NULL,
  segundo_nombre VARCHAR(50),
  primer_apellido VARCHAR(50) NOT NULL,
  segundo_apellido VARCHAR(50),
  email VARCHAR(100) NOT NULL UNIQUE,
  tipo_tarjeta VARCHAR(100) NOT NULL,
  numero_tarjeta BIGINT NOT NULL UNIQUE,
  contraseña VARCHAR() NOT NULL,
  FOREIGN KEY (id_ficha) REFERENCES Tb_ficha(id_ficha)
);

