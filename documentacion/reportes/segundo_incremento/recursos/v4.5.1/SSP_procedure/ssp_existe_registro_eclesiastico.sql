DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_registro_eclesiastico` $$
CREATE PROCEDURE `ssp_existe_registro_eclesiastico`( nsacramento VARCHAR(50), anio VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT num_sacramento FROM registroeclesiastico WHERE (num_sacramento=nsacramento AND anio_libro=anio));
  SELECT salida;

END $$

DELIMITER ;