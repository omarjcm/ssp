DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_id_registro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(20), id_contador_ BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  SET mensaje = (SELECT id_registro FROM registro WHERE fecha = fecha_ AND valor = valor_ AND tipo = tipo_ AND id_contador = id_contador_);
  SELECT mensaje;
END $$

DELIMITER ;