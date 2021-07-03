DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_solicitante` $$
CREATE PROCEDURE `ssp`.`ssp_modificar_solicitante` (id_soli BIGINT(10), nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), edad INTEGER, telefono VARCHAR(10), sexo BOOLEAN, legitimo BOOLEAN , lugar_nacimiento VARCHAR(50), fecha_naci VARCHAR(50) ,tipo VARCHAR(20))
BEGIN

  UPDATE solicitante s
  SET  s.nombre =nombre , s.apellido=apellido, s.direccion=direccion, s.edad=edad, s.telefono= telefono, s.sexo=sexo, s.legitimo=legitimo, s.lugar_nacimiento=lugar_nacimiento, s.fecha_nacimiento=fecha_naci,s.tipo=tipo
  WHERE (s.id_solicitante = id_soli AND s.tipo=tipo);

END $$

DELIMITER ;