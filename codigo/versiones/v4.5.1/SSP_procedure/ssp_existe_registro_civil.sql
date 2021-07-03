DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_registro_civil` $$
CREATE PROCEDURE `ssp`.`ssp_existe_registro_civil` (acta_ VARCHAR(50), OUT mensaje VARCHAR(10))
BEGIN
  DECLARE acta_nueva VARCHAR(50);
  SELECT acta INTO acta_nueva FROM RegistroCivil WHERE acta = acta_;

  IF(acta_nueva = acta_) THEN
    SET mensaje = acta_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END $$

DELIMITER ;