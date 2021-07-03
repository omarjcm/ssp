DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_descripcion` $$
CREATE PROCEDURE `ssp`.`ssp_consultar_descripcion` (nombre VARCHAR(50))
BEGIN
  DECLARE varnom VARCHAR(50);
  SET varnom= CONCAT(nombre,'%');

  SELECT * FROM descripcion WHERE descripcion LIKE varnom;

END $$

DELIMITER ;