DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_usuario` $$
CREATE PROCEDURE `ssp`.`ssp_modificar_usuario` (id_usuario BIGINT(10), nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), tipo VARCHAR(50), cargo VARCHAR(50), telefono1 VARCHAR(50), telefono2 VARCHAR(50), usuario VARCHAR(50), contrasenia VARCHAR(50), estado BOOLEAN)
BEGIN
  UPDATE usuario u
  SET  u.nombre =nombre , u.apellido=apellido, u.direccion=direccion, u.tipo=tipo, u.cargo=cargo, u.telefono1=telefono1, u.telefono2=telefono2, u.usuario=usuario, u.contrasenia=contrasenia, u.estado=estado
  WHERE (u.id_usuario = id_usuario);
END $$

DELIMITER ;