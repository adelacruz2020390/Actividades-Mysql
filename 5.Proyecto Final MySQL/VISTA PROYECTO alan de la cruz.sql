USE banca_electrónica; 
				/*VISTA DE CLEINTES*/
CREATE VIEW Vista_Cliente AS
	SELECT ID_cliente,concat(nombre,' ',apellido)AS NOMBRE_COMPLETO,dirección,telefono,sexo,nacionalidad,
				tipo_cuenta,nombre_usuario,estado_usuario,fecha_creacion FROM Cliente
	INNER JOIN Cuenta
	ON cliente.cuenta = Cuenta.id_cuenta
	INNER JOIN usuario
	ON cliente.usuario = Usuario.id_usuario;
	SELECT * FROM Vista_cliente ;
		/*VISTA DE CUENTAS*/
CREATE VIEW VISTA_CUENTA AS
	SELECT * FROM Cuenta;
	SELECT * FROM VISTA_CUENTA;
	/*VISTA DE USUARIO*/
CREATE VIEW Vista_Usuario AS
	SELECT * FROM Usuario;
	SELECT * FROM Vista_Usuario;
				/*VISTA DE TODOS LAS TRASACIONES*/
CREATE VIEW Vista_Servicio AS 
	SELECT Fecha_tramite,descripcion_de_pago,Codigo,monto
		   ,nombre_Proveedor,direccion,Telefono_provee,concat(nombre,' ',apellido)AS NOMBRE_COMPLETO,cuenta FROM Servicio
	INNER JOIN Proveedores 
	ON servicio.proveedores = Proveedores.id_proveedor
	INNER JOIN Cliente
	ON Servicio.cliente= Cliente.id_cliente;
	SELECT * FROM Vista_Servicio;
					/*VISTA CON FILTRO PARA VER TRASACIONES MAS DE 1000.00 QUETZALES*/
CREATE VIEW Vista_Servicio_TRASACIONES AS 
	SELECT Fecha_tramite,descripcion_de_pago,Codigo,monto
		   ,nombre_Proveedor,direccion,Telefono_provee,concat(nombre,' ',apellido)AS NOMBRE_COMPLETO,cuenta FROM Servicio 
	INNER JOIN Proveedores
	ON servicio.proveedores = Proveedores.id_proveedor
	INNER JOIN Cliente
	ON Servicio.cliente= Cliente.id_cliente;
	SELECT * FROM Vista_Servicio_TRASACIONES 
    WHERE monto BETWEEN 'Q1000' AND 'Q2000';
					/*VISTA DE PROVEEDORES*/
CREATE VIEW Vista_Proveedores AS
	SELECT * from Proveedores;
    SELECT * FROM Vista_Proveedores;
