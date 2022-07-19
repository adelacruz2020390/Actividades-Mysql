CREATE DATABASE SuperMercado;
USE SuperMercado;
/*crear primera tabla*/
CREATE TABLE Cliente(/*para poder crear una tabla*/
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (20),
apellido VARCHAR (15),
dpi INT (9),
telefono INT (8),
PRIMARY KEY (id_cliente)/*llave primaria */
);
SHOW TABLES;/*para ver una tabla*/
CREATE TABLE Producto(
id_producto INT AUTO_INCREMENT NOT NULL,
nombredeproducto VARCHAR (15),
fechadeven INT (11),
tipodeproducto VARCHAR (10),
precioendolar INT (5),
PRIMARY KEY (id_producto)
);
/*insertar datos*/
/*podemos ingreso nustros datos a la tabla clietes */
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('alan','de la cruz',123456789,45464765);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('pablo','west',345323456,12345678);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('maria','janson',124634679,32453676);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('francisco','garcia',657834567,098765432);
INSERT INTO Cliente (nombre,apellido,dpi,telefono)
VALUES ('juan','lopez',123454326,09465647);
SELECT * FROM Cliente;
/*datos de la tabla de producto */
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('cocacola',2021,'refresco',7);
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('pepsi',2030,'refresco',9);
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('perijil',2021,'especia',2);
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('leche',2020,'lacteos',9);
INSERT INTO Producto(nombredeproducto,fechadeven,tipodeproducto,precioendolar)
VALUES ('chocokrispi',2021,'conflecs',12);
SELECT * FROM Producto;



