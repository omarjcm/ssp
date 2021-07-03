DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_ministro` $$
CREATE PROCEDURE `ssp`.`ssp_buscar_ministro` ()
BEGIN
  SELECT * FROM Ministro;
END $$

DELIMITER ;
