DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_ingresar_acta_matrimonio` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_matrimonio`(numSa_ VARCHAR(50), numL_ VARCHAR(50), folioL_ VARCHAR(50), anioL_ VARCHAR(50), nomMinis_ VARCHAR(50), apellMinis_ VARCHAR(50),
dignidad_ VARCHAR(50), lugarMatrimonio_ VARCHAR(50), fechaMatrimonio_ DATE, observacion_ VARCHAR(50), nomEsposo_ VARCHAR(50), apellEsposo_ VARCHAR(50), nomEsposa_ VARCHAR(50),
apellEsposa_ VARCHAR(50), nomPaEsposo_ VARCHAR(50), apellPaEsposo_ VARCHAR(50), nomPaEsposa_ VARCHAR(50), apellPaEsposa_ VARCHAR(50), nomMaEsposo_ VARCHAR(50), apellMaEsposo_ VARCHAR(50),
nomMaEsposa_ VARCHAR(50), apellMaEsposa_ VARCHAR(50), nomPadri_ VARCHAR(50), apellPadri_ VARCHAR(50), nomMadri_ VARCHAR(50), apellMadri_ VARCHAR(50), acta_ VARCHAR(50), anio_ VARCHAR(50),
tomo_ VARCHAR(50), folio_ VARCHAR(50), lugar_ VARCHAR(50), id_usuario BIGINT(20), OUT mensaje VARCHAR(50))
BEGIN

  DECLARE salida VARCHAR(30);
  DECLARE existe VARCHAR(30);
  DECLARE id_esposo BIGINT(20);
  DECLARE id_esposa BIGINT(20);
  DECLARE id_padre_esposo BIGINT(20);
  DECLARE id_madre_esposo BIGINT(20);
  DECLARE id_padre_esposa BIGINT(20);
  DECLARE id_madre_esposa BIGINT(20);
  DECLARE id_padrino BIGINT(20);
  DECLARE id_madrina BIGINT(20);
  DECLARE id_registro_civil BIGINT(20);
  DECLARE id_ministro BIGINT(20);
  DECLARE id_registro_eclesiastico BIGINT(20);

  SET AUTOCOMMIT= 0;

  #valida esposos
  CALL ssp_existe_solicitante(nomEsposo_, apellEsposo_, 'esposo', salida);
  IF(salida=nomEsposo_)THEN
    SET mensaje='Ya se encuentra esa persona casada';
  ELSE
    CALL ssp_existe_solicitante(nomEsposa_, apellEsposa_, 'esposa', salida);
    IF(salida=nomEsposa_)THEN
      SET mensaje='Ya se encuentra esa persona casada';
    ELSE
      #Valida regsitro civil del bautizado
      CALL ssp_existe_registro_civil (acta_, salida);
      SET existe = 'Ya existe registro';
      IF(salida=existe)THEN
        SET mensaje=existe;
      ELSE
        #Valida registro eclesiastico del bautizado
        CALL ssp_existe_registro_eclesiastico( numSa_, anioL_ , salida);
        SET existe = 'Ya se encuentra registrado en la Base';
        IF(salida = existe) THEN
          SET mensaje = existe;
        ELSE
          #Ingresa esposo
          CALL ssp_ingresar_solicitante(nomEsposo_, apellEsposo_, '', null, '', '', '', null, null, '', '', 'esposo', salida);
          #Ingresa esposa
          CALL ssp_ingresar_solicitante(nomEsposa_, apellEsposa_, '', null, '', '', '', null, null, '', '', 'esposa', salida);
          #Ingresa padre del esposo
          CALL ssp_ingresar_solicitante(nomPaEsposo_, apellPaEsposo_, '', null, '', '', null, null, null, '', '', 'padre_novio', salida);
          #Ingresa madre del esposo
          CALL ssp_ingresar_solicitante(nomMaEsposo_, apellMaEsposo_, '', null, '', '', null, null, null, '', '', 'madre_novio', salida);
          #Ingresa padre del esposa
          CALL ssp_ingresar_solicitante(nomPaEsposa_, apellPaEsposa_, '', null, '', '', null, null, null, '', '', 'padre_novia', salida);
          #Ingresa madre del esposa
          CALL ssp_ingresar_solicitante(nomMaEsposa_, apellMaEsposa_, '', null, '', '', null, null, null, '', '', 'madre_novia', salida);
          #Ingresa padrino de los novios
          CALL ssp_ingresar_solicitante(nomPadri_, apellPadri_, '', null, '', '', null, null, null, '', '', 'padrino', salida);
          #Ingresa madrina del los novios
          CALL ssp_ingresar_solicitante(nomMadri_, apellMadri_, '', null, '', '', null, null, null, '', '', 'madrina', salida);
          #Ingresa ministro responsable del matrimonio
          CALL ssp_ingresar_ministro(nomMinis_, apellMinis_, dignidad_, null, null, salida);
          #Ingresa regsitro civil del matrimonio
          CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', lugar_, salida);
          #Ingresa registro eclesiastico del bautizado
          CALL ssp_insertar_registro_eclesiastico(numSa_, numL_, folioL_, anioL_, '', '', '', '', 1, salida);

          #Consulta el id del esposo
          CALL ssp_id_solicitante(nomEsposo_, apellEsposo_, 'esposo', id_esposo);
          #Consulta el id del esposa
          CALL ssp_id_solicitante(nomEsposa_, apellEsposa_, 'esposa', id_esposa);
          #Consulta el id del padre del esposo
          CALL ssp_id_solicitante(nomPaEsposo_, apellPaEsposo_, 'padre_novio', id_padre_esposo);
          #Consulta el id de la madre del esposo
          CALL ssp_id_solicitante(nomMaEsposo_, apellMaEsposo_, 'madre_novio', id_madre_esposo);
          #Consulta el id del padre del esposa
          CALL ssp_id_solicitante(nomPaEsposa_, apellPaEsposa_, 'padre_novia', id_padre_esposa);
          #Consulta el id de la madre del esposa
          CALL ssp_id_solicitante(nomMaEsposa_, apellMaEsposa_, 'madre_novia', id_madre_esposa);
          #Consulta el id del padrino del matrimonio
          CALL ssp_id_solicitante(nomPadri_, apellPadri_, 'padrino', id_padrino);
          #Consulta el id de la madrina del matrimonio
          CALL ssp_id_solicitante(nomMadri_, apeMadri_, 'madrina', id_madrina);
          #Consulta el id del registro civil del matrimonio
          CALL ssp_id_registro_civil(acta_, id_registro_civil);
          #Consulta el id del ministro
          CALL ssp_id_ministro(nomMinis_, apellMinis_, id_ministro);
          #Consulta el id del registro eclesiastico
          CALL ssp_id_registro_eclesiastico(numSa_, 1, id_registro_eclesiastico);

          INSERT INTO Casar(fecha_matrimonio, lugar_matrimonio, observacion, estado, id_esposo, id_esposa, id_padre_esposo, id_madre_esposo, id_padre_esposa, id_madre_esposa, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario, id_registro_eclesiastico)
	        VALUES (fechaMatrimonio_, lugarMatrimonio_, observacion_,1, id_esposo, id_esposa, id_padre_esposo, id_madre_esposo, id_padre_esposa, id_madre_esposa, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario, id_registro_eclesiastico);

        END IF;
      END IF;
    END IF;
  END IF;

END $$

DELIMITER ;