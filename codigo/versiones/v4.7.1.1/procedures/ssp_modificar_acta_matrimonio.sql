DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_acta_matrimonio` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_acta_matrimonio`(
id_matrimonio_ BIGINT(20), id_re BIGINT(20), id_rc BIGINT(20), id_padre_novio BIGINT(20),
id_madre_novio BIGINT(20),id_madre_novia BIGINT(20), id_padre_novia BIGINT(20),
id_esposo BIGINT(20), id_esposa BIGINT(20),id_padrino BIGINT(20), id_madrina BIGINT(20),
id_ministro_ BIGINT(50), numSa_ VARCHAR(50), numL_ VARCHAR(50),folioL_ VARCHAR(50),
anioL_ VARCHAR(50),lugarMatrimonio_ VARCHAR(50), fechaMatrimonio_ DATE,
observacion_ VARCHAR(50),nomEsposo_ VARCHAR(50), apellEsposo_ VARCHAR(50),
nomEsposa_ VARCHAR(50),apellEsposa_ VARCHAR(50), nomPaEsposo_ VARCHAR(50),
apellPaEsposo_ VARCHAR(50), nomPaEsposa_ VARCHAR(50),apellPaEsposa_ VARCHAR(50),
nomMaEsposo_ VARCHAR(50), apellMaEsposo_ VARCHAR(50),nomMaEsposa_ VARCHAR(50),
apellMaEsposa_ VARCHAR(50), nomPadri_ VARCHAR(50), apellPadri_ VARCHAR(50),
nomMadri_ VARCHAR(50), apellMadri_ VARCHAR(50), acta_ VARCHAR(50), anio_ VARCHAR(50),
tomo_ VARCHAR(50), folio_ VARCHAR(50), lugar_ VARCHAR(50), id_usuario_ BIGINT(20),
OUT mensaje VARCHAR(50))
BEGIN

  SET AUTOCOMMIT= 0;

  CALL ssp_modificar_solicitante(id_esposo , nomEsposo_ , apellEsposo_, '', 0, '', 1, 1, '', '','esposo');
  CALL ssp_modificar_solicitante(id_esposa , nomEsposa_ , apellEsposa_, '', 0, '', 0, 1, '', '','esposa');
  CALL ssp_modificar_solicitante(id_padre_novio , nomPaEsposo_ , apellPaEsposo_, '', 0, '', 1, 1, '', '','padre_novio');
  CALL ssp_modificar_solicitante(id_padre_novia , nomPaEsposa_ , apellPaEsposa_, '', 0, '', 1, 1, '', '','padre_novia');
  CALL ssp_modificar_solicitante(id_madre_novio , nomMaEsposo_ , apellMaEsposo_, '', 0, '', 0, 1, '', '','madre_novio');
  CALL ssp_modificar_solicitante(id_madre_novia , nomMaEsposa_ , apellMaEsposa_, '', 0, '', 0, 1, '', '','madre_novia');
  CALL ssp_modificar_solicitante(id_padrino , nomPadri_ , apellPadri_, '', 0, '', 1, 1, '', '','padrino');
  CALL ssp_modificar_solicitante(id_madrina , nomMadri_ , apellMadri_, '', 0, '', 0, 1, '', '','madrina');

  CALL ssp_modificar_registro_civil(id_rc, tomo_, anio_, folio_, acta_, '', '', lugar_);
  CALL ssp_modificar_registro_eclesiastico(id_re,numSa_, numL_, folioL_, anioL_, '', '', '', '', 1);

  START TRANSACTION;


  UPDATE casar c
  SET c.fecha_matrimonio=fechaMatrimonio_, c.lugar_matrimonio=lugarMatrimonio_, c.observacion=observacion_, c.estado=1, c.id_ministro = id_ministro_
	WHERE id_matrimonio=id_matrimonio_;

  IF(@error <> 0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Modificacion exitoso';
    COMMIT;
  END IF;
  SELECT mensaje;


END $$

DELIMITER ;