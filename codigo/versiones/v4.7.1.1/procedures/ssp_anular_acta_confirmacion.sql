DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_anular_acta_confirmacion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_acta_confirmacion`(id_confirmacion_ BIGINT(20), OUT mensaje VARCHAR(10))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;


  UPDATE confirmar
  SET estado=0
  WHERE id_confirmacion=id_confirmacion_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Anulacion exitoso';
    COMMIT;
  END IF;

END $$

DELIMITER ;