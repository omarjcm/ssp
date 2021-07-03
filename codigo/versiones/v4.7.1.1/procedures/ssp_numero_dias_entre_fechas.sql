DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_numero_dias_entre_fechas` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_numero_dias_entre_fechas`(fecha1 DATE, fecha2 DATE, OUT dia BIGINT(20))
BEGIN
  SET dia = DATEDIFF(fecha2, fecha1);

  SELECT dia;
END $$

DELIMITER ;