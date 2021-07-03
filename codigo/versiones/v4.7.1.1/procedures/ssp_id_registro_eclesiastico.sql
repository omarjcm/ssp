DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_id_registro_eclesiastico` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_eclesiastico`(num_sacramento_ VARCHAR(50), acta_ BOOLEAN, OUT id_registro_ecles_ BIGINT(20))
BEGIN

  SET id_registro_ecles_ = (SELECT id_registro_eclesiastico FROM registroeclesiastico WHERE num_sacramento= num_sacramento_ AND es_acta= acta_);
  SELECT id_registro_ecles_;

END $$

DELIMITER ;