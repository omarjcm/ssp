DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_datos_bautizo` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_datos_bautizo`(id_ VARCHAR(50))
BEGIN

  SELECT b.id_bautizo, re.id_registro_eclesiastico, re.num_sacramento, re.anio_libro, re.num_libro,
         re.folio_libro, rc.id_registro_civil, rc.anio, rc.tomo, rc.folio, rc.acta,
         rc.lugar_inscripcion, b.observacion, m.id_ministro, m.dignidad, m.nombre, m.apellido,
         re.fecha_bautizo, s.id_solicitante, s.nombre, s.apellido, s.sexo, pa.id_solicitante,
         pa.nombre, pa.apellido, ma.id_solicitante, ma.nombre, ma.apellido, s.lugar_nacimiento,
         s.fecha_nacimiento, pad.id_solicitante, pad.nombre, pad.apellido, mad.id_solicitante,
         mad.nombre, mad.apellido, re.lugar_bautizo, b.estado
  FROM bautizar b, solicitante s, registrocivil rc, registroeclesiastico re, ministro m,
       solicitante pa, solicitante ma, solicitante pad, solicitante mad
  WHERE s.id_solicitante = id_ AND s.id_solicitante = b.id_bautizado AND
        b.id_registro_eclesiastico = re.id_registro_eclesiastico AND
        b.id_registro_civil = rc.id_registro_civil AND b.id_ministro = m.id_ministro
        AND b.id_padre = pa.id_solicitante AND b.id_madre = ma.id_solicitante AND
        b.id_padrino = pad.id_solicitante AND b.id_madrina = mad.id_solicitante;

END $$

DELIMITER ;