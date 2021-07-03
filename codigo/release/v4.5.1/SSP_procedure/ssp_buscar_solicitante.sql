DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_solicitante` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_solicitante`(nom VARCHAR(10), ape VARCHAR(10), tipo_ VARCHAR(50))
BEGIN
   DECLARE varnom VARCHAR(10);
   DECLARE varape VARCHAR(10);
   SET varnom= CONCAT(nom,'%');
   SET varape= CONCAT(ape,'%');

   SELECT nombre,apellido FROM solicitante WHERE (nombre LIKE varnom AND apellido LIKE varape AND tipo = tipo_);

END $$

DELIMITER ;