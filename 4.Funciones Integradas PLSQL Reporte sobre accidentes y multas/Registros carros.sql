	USE Agencias_De_Seguros;
    /*registros de personas*/
INSERT INTO Personas (nombre,apellido,telefono,direccion,dpi,id_vehiculo,id_accidente,id_multa)
	VALUES('alan','de la cruz',12345678,'zona 6 lote 1234 b',1234567892,1,1,1);
INSERT INTO Personas (nombre,apellido,telefono,direccion,dpi,id_vehiculo,id_accidente,id_multa)
	VALUES('eduardo','najera',87654312,'zona 7 lote 4321 A',234123454,2,2,2);
INSERT INTO Personas (nombre,apellido,telefono,direccion,dpi,id_vehiculo,id_accidente,id_multa)
	VALUES('PABLO','WEST',34251324,'zona 9 lote 4567 L',123543213,3,3,3);
INSERT INTO Personas (nombre,apellido,telefono,direccion,dpi,id_vehiculo,id_accidente,id_multa)
	VALUES('juan','najera',56841243,'zona 10 lote 4353 N',333322123,4,4,4);
INSERT INTO Personas (nombre,apellido,telefono,direccion,dpi,id_vehiculo,id_accidente,id_multa)
	VALUES('carlos','gonzales',09123435,'zona 1 lote 5555 W',198754453,5,5,5);
/*vihiculos*/
INSERT INTO Vehiculo (placa,marca,modelo)
	VALUES ('P-OO1BB','TOYOTA','Aygo');
INSERT INTO Vehiculo (placa,marca,modelo)
	VALUES ('P-002AA','Mazda','L200');
INSERT INTO Vehiculo (placa,marca,modelo)
	VALUES ('P-003CC','BMW','Serie 1 2020');
INSERT INTO Vehiculo (placa,marca,modelo)
	VALUES ('P-004AB','Ford','EcoSport');
INSERT INTO Vehiculo (placa,marca,modelo)
	VALUES ('P-005AC','Mercedes-Benz','AMG A 35 4MATIC');

/*multas*/
INSERT INTO Multas (fecha,hora,lugar,costo_multa,si_no_multas)
	VALUES('15/09/2020','06:07:01','zona 6 frentealgallo','Q120.00','si');
INSERT INTO Multas (fecha,hora,lugar,costo_multa,si_no_multas)
	VALUES('15/03/2020','07:07:02','zona 3 calle 1','Q220.00','si');
INSERT INTO Multas (fecha,hora,lugar,costo_multa,si_no_multas)
	VALUES('14/02/2020','05:12:44','zona 5 calle 2','Q450.00','si');
INSERT INTO Multas (fecha,hora,lugar,costo_multa,si_no_multas)
	VALUES('12/09/2020','02:17:22','zona 1 calle 5','Q100.00','si');
INSERT INTO Multas (fecha,hora,lugar,costo_multa,si_no_multas)
	VALUES('20/12/2020','02:18:34','zona 6 calle 7','Q50.00','si');
/*accidentes*/
INSERT INTO Accidente(fecha,lugar,hora,accidente_si_no)
	VALUES ('15/09/2020','zona 7 calle 2','06:07:01','SI');
INSERT INTO Accidente(fecha,lugar,hora,accidente_si_no)
	VALUES ('','','','no');
INSERT INTO Accidente(fecha,lugar,hora,accidente_si_no)
	VALUES ('10//9/2020','zona 9 calle 1','03:11:23','si');
INSERT INTO Accidente(fecha,lugar,hora,accidente_si_no)
	VALUES ('15/10/2020','zona 7 calle 2','06:10:02','SI');
INSERT INTO Accidente(fecha,lugar,hora,accidente_si_no)
	VALUES ('25/09/2020','zona 6 calle 0','06:28:01','SI');