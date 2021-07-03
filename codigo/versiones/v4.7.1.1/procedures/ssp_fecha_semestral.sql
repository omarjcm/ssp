DELIMITER $$

DROP FUNCTION IF EXISTS `ssp`.`ssp_fecha_semestral` $$
CREATE FUNCTION `ssp`.`ssp_fecha_semestral` (fecha1 DATE) RETURNS DATE
BEGIN

DECLARE mes INTEGER;
DECLARE mens VARCHAR(20);
DECLARE fecha_semestral DATE;

  SET mes= MONTH(fecha1);

  IF(mes=1 OR mes=9 OR mes=11 OR mes=2)THEN
    SET fecha_semestral= ADDDATE(fecha1,182);
  ELSE
    IF(mes=3 OR mes=5 OR mes=8 OR mes=7)THEN
       SET fecha_semestral= ADDDATE(fecha1,184);
    ELSE
       IF(mes=4 OR mes= 10 OR mes=12 OR mes=6)THEN
          SET fecha_semestral= ADDDATE(fecha1,183);
       ELSE
          SET mens='No existe fecha';
        END IF;
      END IF;
  END IF;

  RETURN fecha_semestral;

END $$

DELIMITER ;