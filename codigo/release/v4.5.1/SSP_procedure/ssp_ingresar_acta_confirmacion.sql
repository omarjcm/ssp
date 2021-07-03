DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_acta_confirmacion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_confirmacion`(
nomCon_ VARCHAR(50), apeCon_ VARCHAR(50), sexoCon_ BOOLEAN,
nomP_ VARCHAR(50), apeP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50),nomPa_ VARCHAR(50),
apePa_ VARCHAR(50), nomMa_ VARCHAR(50), apeMa_ VARCHAR(50),
id_ministro_ BIGINT, id_usuario_ BIGINT, num_sacramento_ VARCHAR(50),
num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50),
lugar_confirmacion_ VARCHAR(50), fecha_confirmacion_ DATE, fecha_nacimiento_ DATE,
observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
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

  SET AUTOCOMMIT= 0;


  #Valida comulgado
  CALL ssp_existe_solicitante(nomCon_, apeCon_, 'confirmado', salida);
  IF(salida = nomCon_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
      #Valida registro eclesiastico del comulgado
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
        START TRANSACTION;
     --   BEGIN
        #Ingresa comulgado
        CALL ssp_ingresar_solicitante(nomCon_, apeCon_, '', null, '', '', sexoCon_, null, null, '', fecha_nacimiento_, 'confirmado', salida);
        #Ingresa registro eclesiastico del comulgado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        #Ingresa padre del comulgado
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', 1, null, null, '', '', 'padre', salida);
        #Ingresa madre del comulgado
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', 0, null, null, '', '', 'madre', salida);
        #Ingresa padrino del comulgado
        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);
        #Ingresa madrina del comulgado
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
        #Ingresa ministro responsable del comulgado
        -- CALL ssp_ingresar_ministro(nombreP_, apellidoP_, dignidad_, es_parroco_, es_parroco_principal_, salida);
        #Ingresa registro eclesiastico del comulgado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        #Consulta el id del comulgado
        CALL ssp_id_solicitante(nomCon_, apeCon_, 'confirmado', id_confirmado);
        #Consulta el id del padre del comulgado
        CALL ssp_id_solicitante(nomP_, apeP_, 'padre', id_padre);
        #Consulta el id de la madre del comulgado
        CALL ssp_id_solicitante(nomM_, apeM_, 'madre', id_madre);
        #Consulta el id del padrino del bautizado
        CALL ssp_id_solicitante(nomPa_, apePa_, 'padrino', id_padrino);
        #Consulta el id de la madrina del bautizado
        CALL ssp_id_solicitante(nomMa_, apeMa_, 'madrina', id_madrina);
        #Consulta el id del ministro
        -- CALL ssp_id_ministro(nombreP_, apellidoP_, id_ministro);
        #Consulta el id del registro eclesiastico
        CALL ssp_id_registro_eclesiastico(num_sacramento_, 1, id_registro_eclesiastico);

        INSERT INTO confirmar(fecha_confirmacion, lugar_confirmacion, observacion, estado, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (fecha_confirmacion_, lugar_confirmacion_, observacion_, 1, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro_, id_usuario_, id_registro_eclesiastico);
       -- END;

        IF(@error<>0) THEN
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