﻿DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_anular_acta` $$
CREATE PROCEDURE `ssp`.`ssp_anular_acta` (id_ VARCHAR(50), tipodoc VARCHAR(50))
BEGIN
  IF(tipodoc='bautizo')THEN
    UPDATE bautizar SET estado = 0 WHERE id_bautizado = id_;
  ELSE
    IF(tipodoc='comunion')THEN
      UPDATE comulgarporprimeravez SET estado = 0 WHERE id_comulgado = id_;
    #ELSE
      #IF(tipodoc='confirmar')THEN
        #SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM solicitante, confirmar WHERE solicitante.id_solicitante=confirmar.id_confirmado AND confirmar.fecha_confirmacion=fecha_;
      #ELSE
        #SET esposo= (SELECT casar.id_matrimonio FROM solicitante, casar WHERE solicitante.id_solicitante=casar.id_esposo AND casar.fecha_matrimonio=fecha_);
        #SET esposa= (SELECT casar.id_matrimonio FROM solicitante, casar WHERE solicitante.id_solicitante=casar.id_esposa AND casar.fecha_matrimonio=fecha_);
        #SELECT nombre, apellido FROM solicitante WHERE id_solicitante=esposo AND id_solicitante=esposa;
        #IF(esposo=esposa)THEN
          #SELECT id_matrimonio, id_esposo, id_esposa FROM casar WHERE id_matrimonio = esposo;
        #END IF;
      #END IF;
    END IF;
  END IF;
END $$

DELIMITER ;