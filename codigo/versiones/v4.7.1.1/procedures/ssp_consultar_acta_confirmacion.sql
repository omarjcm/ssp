DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_acta_confirmacion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_acta_confirmacion`(id_confirmado_ BIGINT(20))
BEGIN

  SELECT
  c.fecha_confirmacion,c.lugar_confirmacion,c.observacion,c.estado,c.id_padre,
  c.id_madre,c.id_padrino,c.id_madrina,
  c.id_registro_eclesiastico,
  s.nombre, s.apellido,s.sexo, s.fecha_nacimiento, pa.nombre,
   pa.apellido, ma.nombre, ma.apellido, padri.nombre, padri.apellido, madri.nombre,
  madri.apellido, m.dignidad, m.nombre, m.apellido,rcl.num_sacramento, rcl.num_libro,
   rcl.folio_libro, rcl.anio_libro, c.id_confirmacion
  FROM confirmar c, solicitante s, registroeclesiastico rcl, ministro m, solicitante pa, solicitante ma, solicitante padri, solicitante madri
  WHERE c.id_confirmado=id_confirmado_ AND c.id_confirmado=s.id_solicitante
        AND c.id_padre=pa.id_solicitante AND c.id_madre=ma.id_solicitante
        AND c.id_padrino=padri.id_solicitante AND c.id_madrina=madri.id_solicitante
        AND c.id_ministro=m.id_ministro AND c.id_registro_eclesiastico= rcl.id_registro_eclesiastico;

END $$

DELIMITER ;