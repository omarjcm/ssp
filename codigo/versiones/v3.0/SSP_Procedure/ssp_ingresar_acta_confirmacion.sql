DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_acta_confirmacion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_confirmacion`(
nomCon_ VARCHAR(50), apeCon_ VARCHAR(50), sexoCon_ BOOLEAN, tipoCon_ VARCHAR(50),
nomP_ VARCHAR(50), apeP_ VARCHAR(50), tipoP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50), tipoM_ VARCHAR(50), nomPa_ VARCHAR(50),
apePa_ VARCHAR(50), tipoPa_ VARCHAR(50), nomMa_ VARCHAR(50), apeMa_ VARCHAR(50),
tipoMa_ VARCHAR(50), nombreP_ VARCHAR(50), apellidoP_ VARCHAR(50),
dignidad_ VARCHAR(50), es_parroco_ BOOLEAN, es_parroco_principal_ BOOLEAN,
id_usuario BIGINT, num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50),
lugar_confirmacion_ VARCHAR(50), fecha_confirmacion_ DATE, es_acta_ BOOLEAN,
observacion_ VARCHAR(300), estado_ BOOLEAN, OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  DECLARE existe VARCHAR(30);
  DECLARE id_confirmado BIGINT(20);
  DECLARE id_padre BIGINT(20);
  DECLARE id_madre BIGINT(20);
  DECLARE id_padrino BIGINT(20);
  DECLARE id_madrina BIGINT(20);
  DECLARE id_ministro BIGINT(20);
  DECLARE id_registro_eclesiastico BIGINT(20);
  DECLARE counter VARCHAR(10);

  SET AUTOCOMMIT= 0;


  #Valida comulgado
  CALL ssp_existe_solicitante(nomCon_, apeCon_, tipoCon_, salida);
  IF(salida = nomCon_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
    SET counter=1;
      #Valida registro eclesiastico del comulgado
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
      SET counter=2;
        START TRANSACTION;
     --   BEGIN
        #Ingresa comulgado
        CALL ssp_ingresar_solicitante(nomCon_, apeCon_, '', null, '', '', sexoCon_, null, null, '', '', tipoCon_, salida);
        SET counter=3;
        #Ingresa registro eclesiastico del comulgado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        SET counter=4;
        #Ingresa padre del comulgado
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', null, null, null, '', '', tipoP_, salida);
        SET counter=5;
        #Ingresa madre del comulgado
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', null, null, null, '', '', tipoM_, salida);
        SET counter=6;
        #Ingresa padrino del comulgado
        SET counter=7;
        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', null, null, null, '', '', tipoPa_, salida);
        SET counter=8;
        #Ingresa madrina del comulgado
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', null, null, null, '', '', tipoMa_, salida);
        SET counter=9;
        #Ingresa ministro responsable del comulgado
        CALL ssp_ingresar_ministro(nombreP_, apellidoP_, dignidad_, es_parroco_, es_parroco_principal_, salida);
        SET counter=10;
        #Ingresa registro eclesiastico del comulgado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        SET counter=11;
        #Consulta el id del comulgado
        CALL ssp_id_solicitante(nomCon_, apeCon_, tipoCon_, id_confirmado);
        #Consulta el id del padre del comulgado
        CALL ssp_id_solicitante(nomP_, apeP_, tipoP_, id_padre);
        #Consulta el id de la madre del comulgado
        CALL ssp_id_solicitante(nomM_, apeM_, tipoM_, id_madre);
        #Consulta el id del padrino del bautizado
        CALL ssp_id_solicitante(nomPa_, apePa_, tipoPa_, id_padrino);
        #Consulta el id de la madrina del bautizado
        CALL ssp_id_solicitante(nomMa_, apeMa_, tipoMa_, id_madrina);
        #Consulta el id del ministro
        CALL ssp_id_ministro(nombreP_, apellidoP_, id_ministro);
        #Consulta el id del registro eclesiastico
        CALL ssp_id_registro_eclesiastico(num_sacramento_, 1, id_registro_eclesiastico);

        INSERT INTO confirmar(fecha_confirmacion, lugar_confirmacion, observacion, estado, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (fecha_confirmacion_, lugar_confirmacion_, observacion_, 1, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro, id_usuario, id_registro_eclesiastico);
       -- END;

        IF(counter!=11) THEN
          SET mensaje = 'Error en Base de Datos';
          ROLLBACK;
        ELSE
          SET mensaje = 'Ingreso exitoso';
          COMMIT;
        END IF;
     END IF;
   END IF;

 SELECT mensaje;

END $$

DELIMITER ;