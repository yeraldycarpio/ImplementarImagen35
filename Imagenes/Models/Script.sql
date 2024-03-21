
CREATE DATABASE IMAGENES;
USE IMAGENES;

CREATE TABLE categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
   Imagen varbinary(max),    
);

CREATE TABLE productos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(200),
    Precio DECIMAL(10, 2) NOT NULL,
    Categoria_id INT,
    Imagen varbinary(max)

    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);
