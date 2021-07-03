DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_total_fecha_segundo_semestre` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_total_fecha_segundo_semestre`(fecha1 DATE, fecha2 DATE, tipo_ VARCHAR(30))
BEGIN

  DECLARE fecha_semestre DATE;
  DECLARE tip VARCHAR(30);

  SET AUTOCOMMIT = 0;

  SET tip= CONCAT(tipo_,'%');

  SET fecha_semestre= ssp_fecha_semestral(fecha1);

  SELECT SUM(r.valor)
  FROM registro r
  WHERE r.fecha >= fecha_semestre AND r.fecha <= fecha2 AND r.tipo LIKE tip;


END $$

DELIMITER ;