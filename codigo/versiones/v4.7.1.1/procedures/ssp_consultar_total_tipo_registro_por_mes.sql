DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_total_tipo_registro_por_mes` $$
CREATE PROCEDURE `ssp`.`ssp_consultar_total_tipo_registro_por_mes` (fecha_ DATE, tipo_ VARCHAR(20))
BEGIN

  SELECT SUM(r.valor)
  FROM registro r, descripcion d, registrodescripcion rd
  WHERE rd.id_registro = r.id_registro AND rd.id_descripcion = d.id_descripcion
        AND MONTH(r.fecha) = MONTH(fecha_) 
	AND YEAR(r.fecha) = YEAR(fecha_) AND r.tipo = tipo_
  GROUP BY r.tipo;

END $$

DELIMITER ;