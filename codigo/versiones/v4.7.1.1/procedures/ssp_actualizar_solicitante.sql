DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_actualizar_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_solicitante`(
id_ VARCHAR(50), nom_ VARCHAR(50), ape_ VARCHAR(50), sexo_ BOOLEAN,
lugar_nacimiento_ VARCHAR(50), fecha_nacimiento_ DATE, edad_ VARCHAR(50),
direccion_ VARCHAR(50), tipo_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN
  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE solicitante
  SET nombre = nom_, apellido = ape_, direccion = direccion_, edad = edad_, sexo = sexo_, lugar_nacimiento = lugar_nacimiento_, fecha_nacimiento = fecha_nacimiento_
  WHERE id_solicitante = id_ AND tipo = tipo_;

  IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Actualización solicitante exitosa';
      COMMIT;
    END IF;

  SELECT mensaje;

END $$

DELIMITER ;