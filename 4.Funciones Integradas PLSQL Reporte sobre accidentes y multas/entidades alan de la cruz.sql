CREATE DATABASE Agencias_De_Seguros;
	USE Agencias_De_Seguros;
	CREATE TABLE Personas(
                      id_persona INT AUTO_INCREMENT NOT NULL,
					  nombre VARCHAR (25) NOT NULL,
				      apellido VARCHAR (20) NOT NULL,
					  telefono VARCHAR (10) NOT NULL,
					  direccion VARCHAR (20) NOT NULL,
					  dpi INT (13) NOT NULL,
                      id_vehiculo INT NOT NULL,
                      id_accidente INT NOT NULL,
                      id_multa INT NOT NULL,
     PRIMARY KEY (id_persona),
     FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo(id_vehiculo),
     FOREIGN KEY (id_accidente) REFERENCES Accidente(id_accidente),
     FOREIGN KEY (id_multa) REFERENCES Multas(id_multa)
);
	CREATE TABLE Vehiculo(
						 id_vehiculo INT AUTO_INCREMENT NOT NULL,
                         placa VARCHAR (7) NOT NULL,
                         marca VARCHAR (15) NOT NULL,
                         modelo VARCHAR (15) NOT NULL,
	PRIMARY KEY (id_vehiculo)
	);
    CREATE TABLE Accidente(
						  id_accidente INT AUTO_INCREMENT NOT NULL,
                          fecha VARCHAR (10),
                          lugar VARCHAR (20),
                          hora VARCHAR (9),
                          accidente_si_no VARCHAR (5),
                          PRIMARY KEY (id_accidente)
    );
    CREATE TABLE Multas(
						id_multa INT AUTO_INCREMENT NOT NULL,
                        fecha VARCHAR (10),
                        hora VARCHAR (9),
                        lugar VARCHAR (20),
                        costo_multa VARCHAR (11),
                         si_no_multas VARCHAR(3)NOT NULL,
                        PRIMARY KEY (id_multa)
    );
    SHOW TABLES;
    DROP TABLE IF EXISTS Multas
                         


