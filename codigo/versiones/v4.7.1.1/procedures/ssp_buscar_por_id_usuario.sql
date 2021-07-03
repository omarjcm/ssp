DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_por_id_usuario` $$
CREATE PROCEDURE `ssp`.`ssp_buscar_por_id_usuario` (id_u_ BIGINT(20))
BEGIN
  SELECT * FROM usuario WHERE id_usuario = id_u_;
END $$

DELIMITER ;