DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_registro_civil` $$
CREATE PROCEDURE `ssp`.`ssp_modificar_registro_civil` (id_rc BIGINT(10), tomo VARCHAR(20), anio VARCHAR(20), folio VARCHAR(20), acta VARCHAR(20), esta_civil VARCHAR(20), fecha_inscripcion DATE, lugar_inscripcion VARCHAR(20))
BEGIN

  UPDATE registrocivil rc
  SET  rc.tomo= tomo, rc.anio= anio, rc.folio= folio, rc.acta=acta, rc.estado_civil=estado_civil, rc.fecha_inscripcion=fecha_inscripcion, rc.lugar_inscripcion=lugar_inscripcion
  WHERE rc.id_registro_civil= id_rc;

END $$

DELIMITER ;