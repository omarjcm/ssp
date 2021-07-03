DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_total_tipo_registro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_total_tipo_registro`(fecha1 DATE, fecha2 DATE, tipo_ VARCHAR(30))
BEGIN

  SET AUTOCOMMIT = 0;

  SELECT SUM(r.valor)
  FROM registro r, descripcion d, registrodescripcion rd
  WHERE rd.id_registro = r.id_registro AND rd.id_descripcion = d.id_descripcion
        AND r.fecha >= fecha1 AND r.fecha < fecha2 AND r.tipo = tipo_
  GROUP BY r.tipo;
END $$

DELIMITER ;