DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_existe_ministro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_ministro`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), OUT mensaje VARCHAR(10))
BEGIN
  DECLARE apellido_ministro VARCHAR(50);
  SELECT apellido INTO apellido_ministro FROM Ministro WHERE nombre = nombre_ AND apellido = apellido_;

  IF(apellido_ministro = apellido_) THEN
    SET mensaje = nombre_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END $$

DELIMITER ;