DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_usuario` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_usuario`(
  nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), tipo VARCHAR(50), cargo VARCHAR(50),
  telefono1 VARCHAR(50), telefono2 VARCHAR(50), usuario VARCHAR(50), contrasenia VARCHAR(50), estado BOOLEAN,
  id_administrador BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL SSP_es_usuario(nombre, apellido, usuario, result);

  IF(result= nombre) THEN
    SELECT mensaje='Ya de encuentra registrado en la Base';

  ELSE
      START TRANSACTION;
      INSERT INTO usuario(nombre, apellido, direccion, tipo, cargo, telefono1, telefono2, usuario, contrasenia, estado, id_administrador)
      VALUES (nombre, apellido, direccion, tipo, cargo, telefono1, telefono2, usuario, contrasenia, estado, id_administrador);

      IF(@error <> 0)THEN
         SELECT mensaje='Error en la base de Datos';
         ROLLBACK;
      ELSE
        SELECT mensaje='Okey';
        COMMIT;
      END IF;
  END IF;

END $$

DELIMITER ;