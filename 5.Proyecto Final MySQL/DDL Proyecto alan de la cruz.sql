CREATE DATABASE banca_electrónica; 
USE banca_electrónica; 

CREATE TABLE Cliente(
			 id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
			 nombre VARCHAR (25) NOT NULL,
			 apellido VARCHAR (25) NOT NULL,
			 dirección VARCHAR (40)NOT NULL,
			 telefono INT (8) NOT NULL,
			 sexo VARCHAR (20)NOT NULL,
			 nacionalidad VARCHAR (35),
			 identificación BIGINT (15),
             cuenta INT NOT NULL,
             usuario INT NOT NULL,
FOREIGN KEY (cuenta) REFERENCES Cuenta(id_cuenta),
FOREIGN KEY (usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Cuenta(
			 id_cuenta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			 tipo_cuenta VARCHAR (25) NOT NULL,
			 moneda VARCHAR (25)NOT NULL,
			 saldo VARCHAR (25)
);

CREATE TABLE Usuario(
			 id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			 nombre_usuario VARCHAR (15)NOT NULL,
			 contraseña VARCHAR (32)NOT NULL,
			 estado_usuario VARCHAR (25)NOT NULL,
			 fecha_creacion DATETIME NOT NULL
);

CREATE TABLE Servicio(
			 id_servicio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
			 Fecha_tramite DATETIME NOT NULL,
			 descripcion_de_pago VARCHAR (50) NOT NULL,
             Codigo VARCHAR (8) NOT NULL,
			 monto VARCHAR (15) NOT NULL,
			 proveedores INT NOT NULL,
			 cliente INT NOT NULL,
FOREIGN KEY (proveedores) REFERENCES Proveedores(id_proveedor),
FOREIGN KEY (cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Proveedores(
id_proveedor INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_Proveedor VARCHAR (30) NOT NULL,
direccion VARCHAR (50) NOT NULL,
Telefono_provee INT (8) NOT NULL
);
SHOW TABLES;

CREATE TABLE historial(
id_historial INT NOT NULL auto_increment primary key,
histo_rial VARCHAR (32) NOT NULL,
histo_rial1 VARCHAR (32) NOT NULL,
histo_rial2 VARCHAR (32) NOT NULL,
histo_rial3 VARCHAR (32) NOT NULL,
histo_rial4 VARCHAR (32) NOT NULL,
histo_rial5 VARCHAR (32) NOT NULL
);


