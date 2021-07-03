DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_solicitante`(nom VARCHAR(50), ape VARCHAR(50), tipo_ VARCHAR(50))
BEGIN
   DECLARE varnom VARCHAR(50);
   DECLARE varape VARCHAR(50);
   SET varnom= CONCAT(nom,'%');
   SET varnom= CONCAT('%',varnom);
   SET varape= CONCAT(ape,'%');

   SELECT * FROM solicitante WHERE (nombre LIKE varnom AND apellido LIKE varape AND tipo = tipo_);

END $$

DELIMITER ;