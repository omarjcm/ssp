DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_modificar_registro_eclesiastico` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_registro_eclesiastico`(id_registr BIGINT(20),num_sacramento_ VARCHAR(20), num_libro_ VARCHAR(20), folio_libro_ VARCHAR(20), anio_libro_ VARCHAR(20), lugar_bautizo_ VARCHAR(20), fecha_bautizo_ DATE, iglesia_bautizo_ VARCHAR(20), arquidiocesis_ VARCHAR(20), es_acta_ BOOLEAN)
BEGIN

  UPDATE registroeclesiastico re
  SET  re.num_sacramento=num_sacramento_, re.num_libro=num_libro_, re.folio_libro=folio_libro, re.anio_libro=anio_libro_, re.lugar_bautizo=lugar_bautizo_, re.fecha_bautizo=fecha_bautizo_, re.iglesia_bautizo=iglesia_bautizo_, re.arquidiocesis=arquidiocesis_, re.es_acta=es_acta_
  WHERE re.id_registro_eclesiastico=id_registr;

END $$

DELIMITER ;