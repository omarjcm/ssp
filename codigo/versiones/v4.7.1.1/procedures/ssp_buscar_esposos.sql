DELIMITER $$

DROP PROCEDURE IF EXISTS `ssp`.`ssp_buscar_esposos` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_esposos`(
nomEsposo VARCHAR(50), apeEsposo VARCHAR(50),
nomEsposa VARCHAR(50), apeEsposa VARCHAR(50) )
BEGIN
   DECLARE varnomEsposo VARCHAR(50);
   DECLARE varapeEsposo VARCHAR(50);
   DECLARE varnomEsposa VARCHAR(50);
   DECLARE varapeEsposa VARCHAR(50);

   SET varnomEsposo = CONCAT(nomEsposo,'%');
   SET varnomEsposo = CONCAT('%', varnomEsposo);
   SET varapeEsposo = CONCAT(apeEsposo,'%');
   SET varapeEsposo = CONCAT('%', varapeEsposo);

   SET varnomEsposa = CONCAT(nomEsposa,'%');
   SET varnomEsposa = CONCAT('%', varnomEsposa);
   SET varapeEsposa = CONCAT(apeEsposa,'%');
   SET varapeEsposa = CONCAT('%', varapeEsposa);

   SELECT matrimonio.id_matrimonio, esposo.nombre, esposo.apellido, esposa.nombre, esposa.apellido
   FROM   casar matrimonio, solicitante esposo, solicitante esposa
   WHERE (matrimonio.id_esposo = esposo.id_solicitante AND
          matrimonio.id_esposa = esposa.id_solicitante AND
          esposo.nombre LIKE varnomEsposo AND esposo.apellido LIKE varapeEsposo AND esposo.tipo = 'esposo' AND
    	    esposa.nombre LIKE varnomEsposa AND esposa.apellido LIKE varapeEsposa AND esposa.tipo = 'esposa' );

END $$

DELIMITER ;