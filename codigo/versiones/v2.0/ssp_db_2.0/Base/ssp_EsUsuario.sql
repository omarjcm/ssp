DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_EsUsuario` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_EsUsuario`( nombre_ VARCHAR(50), apellido_ VARCHAR(50), usuario_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN
 -- DECLARE out opcion VARCHAR(50);

  SET  salida= (SELECT nombre FROM Usuario WHERE nombre=nombre_ AND apellido=apellido_ AND usuario=usuario_);

END $$

DELIMITER ;