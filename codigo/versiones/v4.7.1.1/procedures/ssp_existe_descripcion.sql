DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_descripcion` $$
CREATE PROCEDURE `ssp`.`ssp_existe_descripcion` (nombre VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  DECLARE name VARCHAR(50);

  SET name= (SELECT nombre FROM descripcion WHERE descripcion=nombre);

  IF(name=nombre) THEN
    SET mensaje ='existe';
  ELSE
    SET mensaje ='no existe';
  END IF;

END $$

DELIMITER ;