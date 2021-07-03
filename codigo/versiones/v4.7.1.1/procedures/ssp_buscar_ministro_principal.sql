DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_ministro_principal` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ministro_principal`()
BEGIN

  SELECT * FROM Ministro WHERE esParrocoPrincipal=1;

END $$

DELIMITER ;