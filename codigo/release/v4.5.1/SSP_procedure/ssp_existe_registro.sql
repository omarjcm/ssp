DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_registro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(50), descripcion_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT descripcion FROM registro WHERE (fecha=fecha_ AND valor=valor_ AND tipo=tipo_ AND descripcion=descripcion_));
  SELECT salida;

END $$

DELIMITER ;