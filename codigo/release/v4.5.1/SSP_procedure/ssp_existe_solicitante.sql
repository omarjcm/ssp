DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), tipo_ VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  DECLARE tipo_soli VARCHAR(50);
  SELECT tipo INTO tipo_soli FROM Solicitante WHERE nombre = nombre_ AND apellido = apellido_ AND tipo= tipo_;

  IF(tipo_soli = tipo_) THEN
    SET mensaje = nombre_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END $$

DELIMITER ;