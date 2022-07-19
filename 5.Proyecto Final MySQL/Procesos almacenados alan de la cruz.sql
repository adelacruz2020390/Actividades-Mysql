USE banca_electrónica; 
DROP procedure IF EXISTS `agregarusuario`;
DELIMITER $$
USE `banca_electrónica`$$
CREATE PROCEDURE agregarusuario(IN _nombreusuario VARCHAR(15), 
								IN _contra VARCHAR(32), 
                                IN _estadousuario VARCHAR(25), 
                                IN _fechacreacion DATETIME
                                )
BEGIN
INSERT INTO Usuario(nombre_usuario,contraseña,estado_usuario,fecha_creacion)
			VALUES(_nombreusuario,MD5(_contra),_estadousuario,_fechacreacion);
END$$

DELIMITER ;

CALL agregarusuario('pabloqueso',MD5('pablowest4'),'temporal',NOW());
SELECT * FROM Usuario;
/*----------------------------------------------------------------------------*/
DROP procedure IF EXISTS `eliminarusuario`;
DELIMITER $$
USE `banca_electrónica`$$
CREATE PROCEDURE eliminarusuario(IN id INT)
BEGIN
DELETE FROM Usuario WHERE id_usuario = id;
END$$

DELIMITER ;

CALL eliminarusuario(4);
CALL eliminarusuario(4);
SELECT * FROM Usuario;
/*-------------------------------------*/
DROP procedure IF EXISTS `updateusuario`;
DELIMITER $$
USE `banca_electrónica`$$
CREATE PROCEDURE updateusuario(IN id INT)
BEGIN
UPDATE Usuario SET nombre_usuario = 'panchovilla34' ,contraseña = 'villagrande11',
estado_usuario = 'activo', fecha_creacion = NOW() WHERE id_usuario = id;
END$$

DELIMITER ;

CALL updateusuario(1);
SELECT * FROM Usuario;