DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_anular_acta_matrimonio` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_acta_matrimonio`(id_matrimonio_ BIGINT(20), OUT mensaje VARCHAR(10))
BEGIN

  SET AUTOCOMMIT=0;

  START TRANSACTION;

  UPDATE casar
  SET estado=0
  WHERE id_matrimonio=id_matrimonio_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Anulacion exitoso';
    COMMIT;
  END IF;
END $$

DELIMITER ;