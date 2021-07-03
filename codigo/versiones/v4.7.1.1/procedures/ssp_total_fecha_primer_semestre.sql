DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_total_fecha_primer_semestre` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_total_fecha_primer_semestre`(fecha1 DATE, tipo_ VARCHAR(30), OUT fecha2 DATE)
BEGIN

  DECLARE fecha_semestre DATE;
  DECLARE tip VARCHAR(30);

  SET AUTOCOMMIT = 0;

  SET tip= CONCAT(tipo_,'%');

  SET fecha_semestre= ssp_fecha_semestral(fecha1);
  SET fecha2 = fecha_semestre;

  SELECT SUM(r.valor)
  FROM registro r
  WHERE r.fecha >= fecha1 AND r.fecha < fecha_semestre AND r.tipo LIKE tip;

  SELECT fecha2;
END $$

DELIMITER ;