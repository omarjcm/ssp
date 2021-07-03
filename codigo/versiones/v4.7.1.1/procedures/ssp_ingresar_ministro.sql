DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_ministro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_ministro`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), dignidad_ VARCHAR(50), es_parroco_ BOOLEAN, es_parroco_principal_ BOOLEAN, OUT mensaje VARCHAR(10))
BEGIN
  DECLARE salida VARCHAR(10);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_ministro(nombre_, apellido_, salida);

  IF(salida = nombre_) THEN
      SET mensaje = 'Ya existe ministro';
  ELSE
    START TRANSACTION;
    #INSERT INTO Ministro(nombre, apellido, dignidad, es_parroco, es_parroco_principal)
    INSERT INTO Ministro(nombre, apellido, dignidad, esParroco, esParrocoPrincipal)
    VALUES (nombre_, apellido_, dignidad_, es_parroco_, es_parroco_principal_);

    IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;
  END IF;

  SELECT mensaje;

END $$

DELIMITER ;