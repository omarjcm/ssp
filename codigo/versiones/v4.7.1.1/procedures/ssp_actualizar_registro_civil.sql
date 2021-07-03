DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_actualizar_registro_civil` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_registro_civil`(
id_rc_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50), estado_civil_ VARCHAR(50),
lugar_inscripcion_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE RegistroCivil
  SET tomo=tomo_, anio=anio_, folio=folio_, acta=acta_, estado_civil=estado_civil_, lugar_inscripcion=lugar_inscripcion_
  WHERE id_registro_civil = id_rc_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$

DELIMITER ;