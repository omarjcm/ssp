DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ministro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ministro`()
BEGIN

  SELECT * FROM ministro;

END $$

DELIMITER ;