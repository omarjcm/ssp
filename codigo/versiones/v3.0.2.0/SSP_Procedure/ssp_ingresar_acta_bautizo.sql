DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_acta_bautizo` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_bautizo`(
nomB_ VARCHAR(50), apeB_ VARCHAR(50), sexoB_ BOOLEAN, tipoB_ VARCHAR(50),
nomP_ VARCHAR(50), apeP_ VARCHAR(50), tipoP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50), tipoM_ VARCHAR(50),
nomPa_ VARCHAR(50), apePa_ VARCHAR(50), tipoPa_ VARCHAR(50), nomMa_ VARCHAR(50), apeMa_ VARCHAR(50),
tipoMa_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50), nombreP_ VARCHAR(50), apellidoP_ VARCHAR(50),
dignidad_ VARCHAR(50), id_usuario BIGINT, num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  DECLARE existe VARCHAR(30);
  DECLARE id_bautizado BIGINT(20);
  DECLARE id_padre BIGINT(20);
  DECLARE id_madre BIGINT(20);
  DECLARE id_padrino BIGINT(20);
  DECLARE id_madrina BIGINT(20);
  DECLARE id_registro_civil BIGINT(20);
  DECLARE id_ministro BIGINT(20);
  DECLARE id_registro_eclesiastico BIGINT(20);
  DECLARE counter VARCHAR(10);

  SET AUTOCOMMIT= 0;


  #Valida bautizado
  CALL ssp_existe_solicitante(nomB_, apeB_, tipoB_, salida);
  IF(salida = nomB_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
    SET counter = '1';
    #Valida regsitro civil del bautizado
    CALL ssp_existe_registro_civil (acta_, salida);
    SET existe = 'Ya existe registro';
    IF(salida = existe) THEN
      SET mensaje = existe;
    ELSE
    SET counter=2;
      #Valida registro eclesiastico del bautizado
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
      SET counter=3;
        START TRANSACTION;
     --   BEGIN
        #Ingresa bautizado
        CALL ssp_ingresar_solicitante(nomB_, apeB_, '', null, '', '', sexoB_, null, null, '', '', tipoB_, salida);
        SET counter=4;
        #Ingresa regsitro civil del bautizado
        CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', '', salida);
        SET counter=5;
        #Ingresa registro eclesiastico del bautizado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        SET counter=6;
        #Ingresa padre del bautizado
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', null, null, null, '', '', tipoP_, salida);
        SET counter=7;
        #Ingresa madre del bautizado
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', null, null, null, '', '', tipoM_, salida);
        SET counter=8;
        #Ingresa padrino del bautizado
        SET counter=9;
        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', null, null, null, '', '', tipoPa_, salida);
      --  counter=10;
        #Ingresa madrina del bautizado
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', null, null, null, '', '', tipoMa_, salida);
        SET counter=11;
        #Ingresa ministro responsable del bautizo
        CALL ssp_ingresar_ministro(nombreP_, apellidoP_, dignidad_, null, null, salida);
        SET counter=12;
        #Consulta el id del bautizado
        CALL ssp_id_solicitante(nomB_, apeB_, tipoB_, id_bautizado);
        #Consulta el id del padre del bautizado
        CALL ssp_id_solicitante(nomP_, apeP_, tipoP_, id_padre);
        #Consulta el id de la madre del bautizado
        CALL ssp_id_solicitante(nomM_, apeM_, tipoM_, id_madre);
        #Consulta el id del padrino del bautizado
        CALL ssp_id_solicitante(nomPa_, apePa_, tipoPa_, id_padrino);
        #Consulta el id de la madrina del bautizado
        CALL ssp_id_solicitante(nomMa_, apeMa_, tipoMa_, id_madrina);
        #Consulta el id del registro civil del bautizado
        CALL ssp_id_registro_civil(acta_, id_registro_civil);
        #Consulta el id del ministro
        CALL ssp_id_ministro(nombreP_, apellidoP_, id_ministro);
        #Consulta el id del registro eclesiastico
        CALL ssp_id_registro_eclesiastico(num_sacramento_, 1, id_registro_eclesiastico);

        INSERT INTO Bautizar(observacion, estado, id_bautizado, id_padre, id_madre, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (observacion_, 1, id_bautizado, id_padre, id_madre, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario,
        id_registro_eclesiastico);
       -- END;

        IF(counter!=13) THEN
          SET mensaje = 'Error en Base de Datos';
          ROLLBACK;
        ELSE
          SET mensaje = 'Ingreso exitoso';
          COMMIT;
        END IF;
       END IF;
     END IF;
  END IF;

 SELECT mensaje;

END $$

DELIMITER ;