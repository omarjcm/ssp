DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_id_ministro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_ministro`(nombreP_ VARCHAR(50), apellidoP_ VARCHAR(50), OUT id_minis_ BIGINT(20))
BEGIN

  SET id_minis_= (SELECT id_ministro FROM ministro WHERE nombre= nombreP_ AND apellido= apellidoP_);
  SELECT id_minis_;

END $$

DELIMITER ;