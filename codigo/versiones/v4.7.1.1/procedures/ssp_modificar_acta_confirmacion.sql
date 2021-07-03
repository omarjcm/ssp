DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_acta_confirmacion` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_acta_confirmacion`(
id_confir BIGINT(20), id_padre_ BIGINT(20), id_madre_ BIGINT(20), id_padri_ BIGINT(20),
id_madri_ BIGINT(20), id_registr_ecle_ BIGINT(20), nomCon_ VARCHAR(50), apeCon_ VARCHAR(50),
sexoCon_ BOOLEAN,nomP_ VARCHAR(50), apeP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50),nomPa_ VARCHAR(50),
apePa_ VARCHAR(50), nomMa_ VARCHAR(50), apeMa_ VARCHAR(50),
id_ministro_ BIGINT, id_usuario_ BIGINT, num_sacramento_ VARCHAR(50),
num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50),
lugar_confirmacion_ VARCHAR(50), fecha_confirmacion_ DATE, fecha_nacimiento_ DATE,
observacion_ VARCHAR(300), OUT mensaje VARCHAR(30),id_acta_confir LONG)
BEGIN

  SET AUTOCOMMIT= 0;

      START TRANSACTION;
     --   BEGIN
  CALL ssp_modificar_solicitante(id_confir , nomCon_ , apeCon_, '', 0, '', sexoCon_, 1, '', fecha_nacimiento_,'confirmado');
  CALL ssp_modificar_solicitante(id_padre_ , nomP_ , apeP_, '', 0, '', 1, 1, '', '','padre');
  CALL ssp_modificar_solicitante(id_madre_ , nomM_ , apeM_, '', 0, '', 0, 1, '', '','madre');
  CALL ssp_modificar_solicitante(id_padri_ , nomPa_ , apePa_, '', 0, '', 1, 1, '', '','padrino');
  CALL ssp_modificar_solicitante(id_madri_ , nomMa_ , apeMa_, '', 0, '', 0, 1, '', '','madrina');

  CALL ssp_modificar_registro_eclesiastico(id_registr_ecle_,num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1);


        UPDATE confirmar
        SET fecha_confirmacion=fecha_confirmacion_, lugar_confirmacion=lugar_confirmacion_, observacion=observacion_, estado=1, id_ministro = id_ministro_
         WHERE id_confirmacion=id_acta_confir;
       -- END;

        IF(@error<>0) THEN
          SET mensaje = 'Error en Base de Datos';
          ROLLBACK;
        ELSE
          SET mensaje = 'Modificacion exitoso';
          COMMIT;
        END IF;

 SELECT mensaje;
END $$

DELIMITER ;