DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_datos_comunion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_datos_comunion`(id_ VARCHAR(50))
BEGIN

  SELECT re.anio_libro, re.num_libro, re.folio_libro, re.num_sacramento,
         m.dignidad, m.nombre, m.apellido, pc.fecha_comunion, s.nombre, s.apellido,
         s.sexo, pa.nombre, pa.apellido, ma.nombre, ma.apellido, s.lugar_nacimiento,
         pad.nombre, pad.apellido, mad.nombre, mad.apellido, pc.lugar_comunion,
         s.edad, pc.grado, pc.nombre_institucion, s.direccion, pc.estado_civil_padres,
         s.fecha_nacimiento, pc.id_comunion, s.id_solicitante, pa.id_solicitante,
         ma.id_solicitante, pad.id_solicitante, mad.id_solicitante,
         re.id_registro_eclesiastico, m.id_ministro, pc.observacion, pc.estado, pc.nivel
  FROM comulgarporprimeravez pc, solicitante s, registrocivil rc, registroeclesiastico re,
       ministro m, solicitante pa, solicitante ma, solicitante pad, solicitante mad
  WHERE s.id_solicitante = id_ AND s.id_solicitante = pc.id_comulgado AND
        pc.id_registro_eclesiastico = re.id_registro_eclesiastico AND
        pc.id_ministro = m.id_ministro AND pc.id_padre = pa.id_solicitante
        AND pc.id_madre = ma.id_solicitante AND pc.id_padrino = pad.id_solicitante
        AND pc.id_madrina = mad.id_solicitante;

END $$

DELIMITER ;