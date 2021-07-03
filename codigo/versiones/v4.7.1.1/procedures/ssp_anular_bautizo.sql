DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_anular_acta` $$
CREATE PROCEDURE `ssp`.`ssp_anular_acta` (id_ VARCHAR(50), tipodoc VARCHAR(50))
BEGIN



  IF(tipodoc='bautizo')THEN
    UPDATE Bautizar SET estado = 0 WHERE id_bautizado = id_;
  ELSE
    IF(tipodoc='comunion')THEN
      UPDATE ComulgarPorPrimeraVez SET estado = 0 WHERE id_comulgado = id_;

    END IF;
  END IF;

END $$

DELIMITER ;