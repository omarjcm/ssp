DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_id_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), tipo_ VARCHAR(50), OUT id_soli_ BIGINT(20))
BEGIN

  SET id_soli_= (SELECT id_solicitante FROM solicitante WHERE nombre=nombre_ AND apellido= apellido_ AND tipo=tipo_);
  SELECT id_soli_;

END $$

DELIMITER ;