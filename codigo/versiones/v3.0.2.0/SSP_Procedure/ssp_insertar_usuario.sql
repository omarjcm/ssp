DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_usuario` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_usuario`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), direccion_ VARCHAR(50), sexo_ VARCHAR(50), lugar_nacimiento_ VARCHAR(50), tipo_ VARCHAR(50), cargo_ VARCHAR(50), telefono1_ VARCHAR(50), telefono2_ VARCHAR(50), usuario_ VARCHAR(50), contrasenia_ VARCHAR(50), id_administrador_ BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL SSP_es_usuario(nombre_, apellido_, usuario_, result);

  IF(result= nombre_) THEN
    SELECT mensaje='Ya de encuentra registrado en la Base';

  ELSE
      START TRANSACTION;
      INSERT INTO usuario(nombre, apellido, direccion, sexo, lugar_nacimiento, tipo, cargo, telefono1, telefono2, usuario, contrasenia, estado, id_administrador)
      VALUES (nombre_, apellido_, direccion_, sexo_, lugar_nacimiento_, tipo_, cargo_, telefono1_, telefono2_, usuario_, contrasenia_, 1, id_administrador_);

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