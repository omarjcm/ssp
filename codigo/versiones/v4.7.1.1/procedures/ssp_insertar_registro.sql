DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_insertar_registro` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_registro`(fecha DATE, valor DOUBLE, tipo VARCHAR(20), descripcion VARCHAR(50), id_contador BIGINT, OUT mensaje VARCHAR(50) )
BEGIN
  DECLARE id_d BIGINT(20);
  DECLARE id_r BIGINT(20);
  DECLARE mensaje VARCHAR(50);

  SET AUTOCOMMIT= 0;

    START TRANSACTION;

    INSERT INTO registro(fecha, valor, tipo, id_contador)
    VALUES (fecha, valor, tipo, id_contador);

    CALL ssp_existe_descripcion(descripcion, mensaje);
    IF(mensaje='existe') THEN
      CALL ssp_id_descripcion(descripcion, id_d);
    ELSE
      CALL ssp_insertar_descripcion(descripcion);
      CALL ssp_id_descripcion(descripcion, id_d);
    END IF;

    CALL ssp_id_registro(fecha, valor, tipo, id_contador, id_r);
    INSERT INTO registrodescripcion(id_registro, id_descripcion)
    VALUES (id_r, id_d);

  IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;


  SELECT mensaje;


END $$

DELIMITER ;