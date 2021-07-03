DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), direccion_ VARCHAR(100), edad_ INTEGER, telefono_ VARCHAR(100), profesion_ VARCHAR(100), sexo_ BOOLEAN, legitimo_ BOOLEAN, impedimento_ BOOLEAN, lugar_nacimiento_ VARCHAR(50), fecha_nacimiento_ DATE, tipo_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_solicitante(nombre_, apellido_,tipo_, salida);

  IF(salida = nombre_) THEN
    SET mensaje = 'Ya existe solicitante';
  ELSE
    START TRANSACTION;
    INSERT INTO Solicitante(nombre, apellido, direccion, edad, telefono, profesion, sexo, legitimo, impedimento, lugar_nacimiento, fecha_nacimiento, tipo)
	  VALUES (nombre_, apellido_, direccion_, edad_, telefono_, profesion_, sexo_, legitimo_, impedimento_, lugar_nacimiento_, fecha_nacimiento_, tipo_);

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