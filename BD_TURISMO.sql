create database TURISMO

USE TURISMO

CREATE TABLE TiposClientes (
idTipo INT PRIMARY KEY,
TipoClienteNombre VARCHAR(100)
);

CREATE TABLE RutasTuristicas (
idRuta INT PRIMARY KEY,
nombre_r VARCHAR(100),
precioR MONEY
);

CREATE TABLE VentasBoletos (
idVenta INT PRIMARY KEY,
idTipo INT,
idRuta INT,
precioV MONEY,
FechaVenta DATE,

FOREIGN KEY (idTipo) REFERENCES TiposClientes(idTipo),
FOREIGN KEY (idRuta) REFERENCES RutasTuristicas(idRuta)
);