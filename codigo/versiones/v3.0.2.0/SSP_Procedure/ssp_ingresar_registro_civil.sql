DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_registro_civil` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_registro_civil`(tomo_ VARCHAR(50), anio_ VARCHAR(50), folio_ VARCHAR(50), acta_ VARCHAR(50), estado_civil_ VARCHAR(50), fecha_inscripcion_ DATE, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE salida VARCHAR(50);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_registro_civil(acta_, salida);

  IF(salida = acta_) THEN
      SET mensaje = 'Ya existe registro';
  ELSE
    START TRANSACTION;
    INSERT INTO RegistroCivil(tomo, anio, folio, acta, estado_civil, fecha_inscripcion)
	  VALUES (tomo_, anio_, folio_, acta_, estado_civil_, fecha_inscripcion_);

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