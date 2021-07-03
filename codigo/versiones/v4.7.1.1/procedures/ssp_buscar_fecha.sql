DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_fecha` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_fecha`(fecha_ DATE, tipodoc VARCHAR(50))
BEGIN

  DECLARE esposo BIGINT(20);
  DECLARE esposa BIGINT(20);

  IF(tipodoc='bautizo')THEN
    SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM bautizar,registroeclesiastico, solicitante WHERE bautizar.id_registro_eclesiastico=registroeclesiastico.id_registro_eclesiastico AND bautizar.id_bautizado=solicitante.id_solicitante AND registroeclesiastico.fecha_bautizo= fecha_ AND bautizar.estado = 1;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM solicitante, comulgarporprimeravez WHERE solicitante.id_solicitante=comulgarporprimeravez.id_comulgado AND comulgarporprimeravez.fecha_comunion=fecha_ AND comulgarporprimeravez.estado = 1;
    ELSE
      IF(tipodoc='confirmar')THEN
        SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM solicitante, confirmar WHERE solicitante.id_solicitante=confirmar.id_confirmado AND confirmar.fecha_confirmacion=fecha_ AND confirmar.estado = 1;
      ELSE
        #SET esposo= (SELECT casar.id_matrimonio FROM solicitante, casar WHERE solicitante.id_solicitante=casar.id_esposo AND casar.fecha_matrimonio=fecha_);
        #SET esposa= (SELECT casar.id_matrimonio FROM solicitante, casar WHERE solicitante.id_solicitante=casar.id_esposa AND casar.fecha_matrimonio=fecha_);
        #SELECT nombre, apellido FROM solicitante WHERE id_solicitante=esposo AND id_solicitante=esposa;
        #IF(esposo=esposa)THEN
        IF(tipodoc='matrimonio')THEN
          SELECT m.id_matrimonio, m.id_esposo, m.id_esposa, eo.nombre, eo.apellido, ea.nombre, ea.apellido FROM casar m, solicitante eo, solicitante ea WHERE m.id_esposo = eo.id_solicitante AND m.id_esposa = ea.id_solicitante AND m.estado = 1;
        END IF;
      END IF;
    END IF;
  END IF;

END $$

DELIMITER ;