DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_usuario` $$
CREATE PROCEDURE `ssp`.`ssp_buscar_usuario` (nom VARCHAR(50), ape VARCHAR(50))
BEGIN
  DECLARE varnom VARCHAR(50);
   DECLARE varape VARCHAR(50);
   SET varnom= CONCAT(nom,'%');
   SET varnom= CONCAT('%',varnom);
   SET varape= CONCAT(ape,'%');

   SELECT * FROM usuario WHERE (nombre LIKE varnom AND apellido LIKE varape AND estado = 1);
END $$

DELIMITER ;