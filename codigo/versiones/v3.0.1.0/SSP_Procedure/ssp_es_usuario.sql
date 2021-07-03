DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_es_usuario` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_es_usuario`( nombre_ VARCHAR(50), apellido_ VARCHAR(50), usuario_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET  salida= (SELECT nombre FROM Usuario WHERE nombre=nombre_ AND apellido=apellido_ AND usuario=usuario_);
  SELECT salida;

END $$

DELIMITER ;