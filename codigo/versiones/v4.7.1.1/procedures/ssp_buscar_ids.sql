DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_ids` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ids`(id_ VARCHAR(50), tipodoc_ VARCHAR(50))
BEGIN


  SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM Bautizar b WHERE b.id_bautizo = id_;

  IF(tipodoc='bautizo')THEN
    SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM Bautizar b WHERE b.id_bautizo = id_bau_;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM ComulgarPorPrimeraVez WHERE id_comunion = id_;
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