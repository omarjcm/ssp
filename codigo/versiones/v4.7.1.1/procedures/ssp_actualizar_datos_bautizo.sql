DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_actualizar_datos_bautizo` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_datos_bautizo`(
id_bautizo_ VARCHAR(50), id_b_ VARCHAR(50), id_pa_ VARCHAR(50), id_ma_ VARCHAR(50),
id_pad_ VARCHAR(50), id_mad_ VARCHAR(50), id_rc_ VARCHAR(50), id_re_ VARCHAR(50),
nomB_ VARCHAR(50), apeB_ VARCHAR(50), sexoB_ BOOLEAN, fecha_nacimiento_ DATE,
lugar_nacimiento_ VARCHAR(50),nomP_ VARCHAR(50), apeP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50),lugar_inscripcion_ VARCHAR(50),
id_ministro_ BIGINT, id_usuario BIGINT,num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50),
fecha_bautizo_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;

  START TRANSACTION;
  #Actualiza bautizado
  CALL ssp_actualizar_solicitante(id_b_, nomB_, apeB_, sexoB_, lugar_nacimiento_, fecha_nacimiento_, '', '', 'bautizado', salida);

  #Actualiza regsitro civil del bautizado
  CALL ssp_actualizar_registro_civil(id_rc_, tomo_, anio_, folio_, acta_, '', lugar_inscripcion_, salida);

  #Actualiza registro eclesiastico del bautizado
  CALL ssp_actualizar_registro_eclesiastico(id_re_, num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, salida);

  #Actualiza padre del bautizado
  CALL ssp_actualizar_solicitante(id_pa_, nomP_, apeP_, 1, '', '', '', '', 'padre', salida);

  #Actualiza madre del bautizado
  CALL ssp_actualizar_solicitante(id_ma_, nomM_, apeM_, 0, '', '', '', '', 'madre', salida);

  #Actualiza padrino del bautizado
  CALL ssp_actualizar_solicitante(id_pad_, nomPa_, apePa_, 1, '', '', '', '', 'padrino', salida);

  #Actualiza madrina del bautizado
  CALL ssp_actualizar_solicitante(id_mad_, nomMa_, apeMa_, 0, '', '', '', '', 'madrina', salida);

  UPDATE Bautizar SET observacion = observacion_, id_ministro = id_ministro_, id_usuario = id_usuario WHERE id_bautizo = id_bautizo_;

  IF(@error <> 0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización de bautizo exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$

DELIMITER ;