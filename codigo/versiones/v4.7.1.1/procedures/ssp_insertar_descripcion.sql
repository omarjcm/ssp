DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_descripcion` $$
CREATE PROCEDURE `ssp`.`ssp_insertar_descripcion` (nombre VARCHAR(50))
BEGIN

  INSERT INTO descripcion(descripcion) VALUES(nombre);

END $$

DELIMITER ;