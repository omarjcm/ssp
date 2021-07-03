DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_registro_eclesiastico` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_registro_eclesiastico`(num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50), fecha_bautizo_ DATE, iglesia_bautizo_ VARCHAR(50), arquidiocesis_ VARCHAR(50), es_acta_ BOOLEAN, OUT mensaje VARCHAR(50))
BEGIN
 DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL SSP_existe_registro_eclesiastico(num_sacramento_, anio_libro_, result);

  IF(result= num_sacramento_) THEN
    SELECT mensaje='Ya se encuentra registrado en la Base';

  ELSE
      START TRANSACTION;
      INSERT INTO registroeclesiastico(num_sacramento, num_libro, folio_libro, anio_libro, lugar_bautizo, fecha_bautizo, iglesia_bautizo, arquidiocesis, es_acta)
      VALUES (num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, iglesia_bautizo_, arquidiocesis_, es_acta_);

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