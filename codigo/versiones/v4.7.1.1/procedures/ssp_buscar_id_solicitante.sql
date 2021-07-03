DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_id_solicitante` $$
CREATE PROCEDURE `ssp`.`ssp_buscar_id_solicitante` (id_soli_ BIGINT(20), tipo_ VARCHAR(50))
BEGIN
  SELECT nombre, apellido FROM solicitante WHERE id_solicitante = id_soli_ AND tipo = tipo_;
END $$

DELIMITER ;