DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_anular_usuario` $$
CREATE PROCEDURE `ssp`.`ssp_anular_usuario` (id_ VARCHAR(50))
BEGIN
  UPDATE usuario SET estado = 0 WHERE id_usuario = id_;
END $$

DELIMITER ;