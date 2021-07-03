DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_fecha` $$
CREATE PROCEDURE `ssp`.`ssp_buscar_fecha` (fecha_ DATE, tipodoc VARCHAR(50))
BEGIN

  DECLARE esposo BIGINT(20);
  DECLARE esposa BIGINT(20);

  IF(tipodoc='bautizo')THEN
    SELECT solicitante.nombre, solicitante.apellido FROM bautizar,registroeclesiastico, solicitante WHERE bautizar.id_registro_eclesiastico=registroeclesiastico.id_registro_eclesiastico AND bautizar.id_bautizado=solicitante.id_solicitante AND registroeclesiastico.fecha_bautizo= fecha_;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT solicitante.nombre, solicitante.apellido FROM solicitante, comulgarporprimeravez WHERE solitante.id_solicitante=comulgarporprimeravez.id_comulgado AND comulgarporprimeravez.fecha_comunion=fecha_;
    ELSE
      IF(tipodoc='confirmar')THEN
        SELECT solicitante.nombre, solicitante.apellido FROM solicitante, confirmar WHERE solitante.id_solicitante=confirmar.id_confirmado AND confirmar.fecha_confirmacion=fecha_;
      ELSE
        SET esposo= (SELECT id_solicitante FROM solicitante, casar WHERE id_solicitante=casar.id_esposo AND casar.fecha_matrimonio=fecha_);
        SET esposa= (SELECT id_solicitante FROM solicitante, casar WHERE id_solicitante=casar.id_esposa AND casar.fecha_matrimonio=fecha_);
        SELECT nombre, apellido FROM solicitante WHERE id_solicitante=esposo AND id_solicitante=esposa;
      END IF;
    END IF;
  END IF;

END $$

DELIMITER ;