DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_total_fecha_primerSemestre` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_total_fecha_primerSemestre`(fecha1 DATE, tipo_ VARCHAR(30))
BEGIN

  DECLARE fecha_semestre DATE;
  DECLARE tip VARCHAR(30);

  SET AUTOCOMMIT = 0;

  SET tip= CONCAT(tipo_,'%');

  SET fecha_semestre= ssp_fechaSemestral(fecha1);


  SELECT SUM(r.valor)
  FROM registro r
  WHERE r.fecha >= fecha1 AND r.fecha < fecha_semestre AND r.tipo LIKE tip;


END $$

DELIMITER ;