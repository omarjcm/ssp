DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_registro` $$
CREATE PROCEDURE `ssp_insertar_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(50), descripcion_ VARCHAR(50), id_contador_ BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL ssp_existe_registro(fecha_, valor_, tipo_, descripcion_, result);

  IF(result= descripcion_) THEN
    SELECT mensaje='Ya de encuentra ese registro';

  ELSE
      START TRANSACTION;
      INSERT INTO registro(fecha, valor, tipo, descripcion, id_contador)
      VALUES (fecha_, valor_, tipo_, descripcion_, id_contador_);

      IF(@error <> 0)THEN
         SELECT mensaje='Error en la base de Datos';
         ROLLBACK;
      ELSE
        SELECT mensaje='Okey';
        COMMIT;
      END IF;
  END IF;



END $$

DELIMITER ;