DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_consultar_bautizo_por_nombre` $$
CREATE PROCEDURE `ssp`.`ssp_consultar_bautizo_por_nombre` (nombre VARCHAR(50), apellido VARCHAR(50))
BEGIN

  SELECT id_solicitante solicitante FROM Solicitante s
  WHERE
    s.nombre LIKE CONCAT(nombre,'%') AND
    s.apellido LIKE CONCAT(apellido,'%')

  SELECT * FROM Bautizar b
  WHERE b.id_bautizado = solicitante

END $$

DELIMITER ;