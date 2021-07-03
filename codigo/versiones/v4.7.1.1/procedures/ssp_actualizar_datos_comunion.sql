DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_actualizar_datos_comunion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_datos_comunion`(
id_comunion_ VARCHAR(50), id_c_ VARCHAR(50), id_pa_ VARCHAR(50),
id_ma_ VARCHAR(50), id_pad_ VARCHAR(50), id_mad_ VARCHAR(50), id_re_ VARCHAR(50),
nomCom_ VARCHAR(50), apeCom_ VARCHAR(50), sexoCom_ BOOLEAN, edadCom_ INTEGER,
nomP_ VARCHAR(50), apeP_ VARCHAR(50), nomM_ VARCHAR(50),
apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), id_ministro_ BIGINT(20), id_usuario BIGINT(20), num_sacramento_ VARCHAR(50),
num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), direccion_ VARCHAR(50),
fecha_comunion_ DATE, estado_civil_padres_ VARCHAR(50),
nombre_institucion_ VARCHAR(50), grado_ VARCHAR(50), lugar_comunion_ VARCHAR(50),
fecha_nacimiento_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30)
)
BEGIN

  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;

  START TRANSACTION;
  #Actualiza comulgado
  CALL ssp_actualizar_solicitante(id_c_, nomCom_, apeCom_, sexoCom_, '', fecha_nacimiento_, edadCom_, direccion_, 'comulgado', salida);

  #Actualiza regsitro civil del comulgado
  #CALL ssp_actualizar_registro_civil(id_rc_, tomo_, anio_, folio_, acta_, '', lugar_inscripcion_, salida);

  #Actualiza registro eclesiastico del comulgado
  CALL ssp_actualizar_registro_eclesiastico(id_re_, num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', salida);

  #Actualiza padre del comulgado
  CALL ssp_actualizar_solicitante(id_pa_, nomP_, apeP_, 1, '', '', '', '', 'padre', salida);

  #Actualiza madre del comulgado
  CALL ssp_actualizar_solicitante(id_ma_, nomM_, apeM_, 0, '', '', '', '', 'madre', salida);

  #Actualiza padrino del comulgado
  CALL ssp_actualizar_solicitante(id_pad_, nomPa_, apePa_, 1, '', '', '', '', 'padrino', salida);

  #Actualiza madrina del comulgado
  CALL ssp_actualizar_solicitante(id_mad_, nomMa_, apeMa_, 0, '', '', '', '', 'madrina', salida);

  UPDATE ComulgarPorPrimeraVez
  SET fecha_comunion = fecha_comunion_, estado_civil_padres = estado_civil_padres_, nombre_institucion = nombre_institucion_, grado = grado_, lugar_comunion = lugar_comunion_, observacion = observacion_, id_ministro = id_ministro_, id_usuario = id_usuario
  WHERE id_comunion = id_comunion_;

  IF(@error <> 0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización comunion exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$

DELIMITER ;