DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_acta_matrimonio_por_id` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_acta_matrimonio_por_id`(id_matrimonio_ VARCHAR(20))
BEGIN

   SELECT c.fecha_matrimonio, c.lugar_matrimonio, c.observacion, c.estado,
          c.id_matrimonio,c.id_esposo, c.id_esposa, c.id_padre_esposo, c.id_madre_esposo,
          c.id_padre_esposa, c.id_madre_esposa, c.id_padrino, c.id_madrina,
          c.id_registro_civil, c.id_registro_eclesiastico,
          esposo.nombre, esposo.apellido,
          esposa.nombre, esposa.apellido,
          madrina.nombre, madrina.apellido, padrino.nombre, padrino.apellido,
          minis.dignidad, minis.nombre, minis.apellido,
          rc.lugar_inscripcion, rc.anio, rc.tomo,rc.folio,rc.acta,
          rcl.num_sacramento, rcl.num_libro, rcl.folio_libro, rcl.anio_libro,
          padre_esposo.nombre, padre_esposo.apellido, madre_esposo.nombre,
          madre_esposo.apellido, padre_esposa.nombre,   padre_esposa.apellido,
          madre_esposa.nombre,madre_esposa.apellido,
          rc.fecha_inscripcion

   FROM casar c, solicitante esposo, solicitante esposa, solicitante padre_esposo, solicitante madre_esposo,
        solicitante padre_esposa, solicitante madre_esposa, solicitante padrino, solicitante madrina,
        ministro minis, registrocivil rc, registroeclesiastico rcl
   WHERE c.id_matrimonio = id_matrimonio_ AND c.id_esposo=esposo.id_solicitante AND c.id_esposa=esposa.id_solicitante AND c.id_padre_esposo=padre_esposo.id_solicitante AND c.id_madre_esposo=madre_esposo.id_solicitante
         AND c.id_padre_esposa=padre_esposa.id_solicitante AND c.id_madre_esposa=madre_esposa.id_solicitante AND c.id_padrino= padrino.id_solicitante AND c.id_madrina= madrina.id_solicitante AND c.id_ministro= minis.id_ministro
         AND c.id_registro_civil= rc.id_registro_civil AND c.id_registro_eclesiastico= rcl.id_registro_eclesiastico;

END $$

DELIMITER ;