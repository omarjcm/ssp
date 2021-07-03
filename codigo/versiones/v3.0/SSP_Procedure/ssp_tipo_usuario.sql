DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_tipo_usuario` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_tipo_usuario`(usuario_ VARCHAR(50), contrasenia_ VARCHAR(50),tipo_ VARCHAR(50))
BEGIN

  SELECT * FROM usuario WHERE (usuario=usuario_ AND contrasenia=contrasenia_ AND tipo=tipo_);

END $$

DELIMITER ;