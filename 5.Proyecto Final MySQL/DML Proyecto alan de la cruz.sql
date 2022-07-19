USE banca_electrónica; 
					/*Registros de los usaurios usaurios*/
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES('alaneduardo45',MD5('Holamundo45'),'activo',NOW());
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES('victorcuenta22',MD5('holavitor'),'temporal',NOW());
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES('pabloqueso',MD5('holapblo33'),'inactivo',NOW());
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES('mariaantoniet',MD5('maria00'),'activo',NOW());
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES('herlindanaj22',MD5('herlinadapas'),'activo',NOW());
					/*REGISTROS DE LA CUENTA*/
INSERT INTO Cuenta(tipo_cuenta,moneda,saldo)
			VALUES('ahorro','QUETZALES','Q1000.00');
INSERT INTO Cuenta(tipo_cuenta,moneda,saldo)
			VALUES('MONETARIA','EUROS','E2000.00');
INSERT INTO Cuenta(tipo_cuenta,moneda,saldo)
			VALUES('PERTAMOS','DOLARES','$3200.00');
INSERT INTO Cuenta(tipo_cuenta,moneda,saldo)
			VALUES('FONDOS','QUETZALES','Q1000.00');
INSERT INTO Cuenta(tipo_cuenta,moneda,saldo)
			VALUES('CREDITO','QUETZALES','Q10000.00');
					/*datos de clientes*/
INSERT INTO Cliente (nombre,apellido,dirección,telefono,sexo,nacionalidad,
					identificación,cuenta,usuario)
			VALUES('alan','najera','capital zona 6',12345678,'masculino','guatemateco',1234567891234,1,1);
INSERT INTO Cliente (nombre,apellido,dirección,telefono,sexo,nacionalidad,
					identificación,cuenta,usuario)
			VALUES('VICTOR','CALL','capital zona 4',87654321,'masculino','estado unidences',863743823232,2,2);
INSERT INTO Cliente (nombre,apellido,dirección,telefono,sexo,nacionalidad,
					identificación,cuenta,usuario)
			VALUES('pablo','queso','capital zona 2',34678912,'masculino','ruso',342124521323,3,3);
INSERT INTO Cliente (nombre,apellido,dirección,telefono,sexo,nacionalidad,
					identificación,cuenta,usuario)
			VALUES('maria','antonieta','capital zona 22',45367892,'femenino','guatemateco',1234567891234,4,4);
INSERT INTO Cliente (nombre,apellido,dirección,telefono,sexo,nacionalidad,
					identificación,cuenta,usuario)
			VALUES('herlinda','pass','capital zona 5',09738473,'femenino','guatemateco',092232142412,5,5);

					/*datos DE LOS PROVEEDORES*/
INSERT INTO Proveedores(nombre_Proveedor,direccion,Telefono_provee)
			VALUES('EEGSA','ZONA 3 CAPITAL calle 1',1234123);
INSERT INTO Proveedores(nombre_Proveedor,direccion,Telefono_provee)
			VALUES('Aquaguate','ZONA 5 CAPITAL calle 3',98583000);
INSERT INTO Proveedores(nombre_Proveedor,direccion,Telefono_provee)
			VALUES('clarogt','ZONA 5 CAPITAL calle 5',21323421);
INSERT INTO Proveedores(nombre_Proveedor,direccion,Telefono_provee)
			VALUES('tigo','ZONA 4 CAPITAL calle 2',0983287);
INSERT INTO Proveedores(nombre_Proveedor,direccion,Telefono_provee)
			VALUES('colegio','ZONA 3 CAPITAL calle 1',098765432);
/*--------------------------------------------------------*/
INSERT INTO Servicio(Fecha_tramite,descripcion_de_pago,Codigo,
					monto,proveedores,cliente)
			VALUES(NOW(),'PAGO DE LUZ',12345678,'Q1234.00',1,1);
INSERT INTO Servicio(Fecha_tramite,descripcion_de_pago,Codigo,
					monto,proveedores,cliente)
			VALUES(NOW(),'PAGO DE agua',12378122,'2000.00',2,2);
INSERT INTO Servicio(Fecha_tramite,descripcion_de_pago,Codigo,
					monto,proveedores,cliente)
			VALUES(NOW(),'PAGO DE telefono',0987564,'200.00',3,3);
INSERT INTO Servicio(Fecha_tramite,descripcion_de_pago,Codigo,
					monto,proveedores,cliente)
			VALUES(NOW(),'PAGO DE internet',0000022,'100.00',4,4);
INSERT INTO Servicio(Fecha_tramite,descripcion_de_pago,Codigo,
					monto,proveedores,cliente)
			VALUES(NOW(),'PAGO DE colegiatura',12345678,'Q1234.00',5,5);
            


