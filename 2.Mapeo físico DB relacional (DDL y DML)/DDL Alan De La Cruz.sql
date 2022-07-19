/* DDL */
CREATE DATABASE SuperMercado;
USE SuperMercado;
/*crear primera tabla*/
CREATE TABLE Cliente(/*para poder crear una tabla*/
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (20)NOT NULL,
apellido VARCHAR (15)NOT NULL,
dpi INT (9)NOT NULL,
telefono INT (8)NOT NULL,
PRIMARY KEY (id_cliente)/*llave primaria */
);
SHOW TABLES;/*para ver una tabla*/
CREATE TABLE Producto(
id_producto INT AUTO_INCREMENT NOT NULL,
nombredeproducto VARCHAR (15)NOT NULL,
fechadeven VARCHAR (11)NOT NULL,
tipodeproducto VARCHAR (10)NOT NULL,
precioendolar VARCHAR (5)NOT NULL,
PRIMARY KEY (id_producto)
);

CREATE TABLE Factura(
id_factura INT AUTO_INCREMENT NOT NULL,
fecha VARCHAR (12),
nombretienda VARCHAR (20),
empresaimpuesto VARCHAR (20),
cliente INT NOT NULL,
producto INT NOT NULL,
PRIMARY KEY (id_factura),
FOREIGN KEY (cliente) REFERENCES Cliente(id_cliente),
FOREIGN KEY (producto) REFERENCES Producto(id_producto)
);