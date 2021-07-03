DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_actualizar_registro_eclesiastico` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_registro_eclesiastico`(
id_re_ VARCHAR(50), num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50),
fecha_bautizo_ DATE, OUT mensaje VARCHAR(30))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE RegistroEclesiastico
  SET num_sacramento=num_sacramento_, num_libro=num_libro_, folio_libro=folio_libro_, anio_libro=anio_libro_, lugar_bautizo=lugar_bautizo_, fecha_bautizo=fecha_bautizo_
  WHERE id_registro_eclesiastico = id_re_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;


END $$

DELIMITER ;