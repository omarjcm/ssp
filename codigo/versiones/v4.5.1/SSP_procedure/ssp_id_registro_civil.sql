DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_id_registro_civil` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_civil`(acta_ VARCHAR(50), OUT id_regis_ BIGINT(20))
BEGIN

  SET id_regis_ = (SELECT id_registro_civil FROM registrocivil WHERE acta= acta_);
  SELECT id_regis_;

END $$

DELIMITER ;