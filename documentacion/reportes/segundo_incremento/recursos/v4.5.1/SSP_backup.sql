# MySQL-Front 3.2  (Build 14.8)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: ssp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

DROP DATABASE IF EXISTS `ssp`;
CREATE DATABASE `ssp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ssp`;

#
# Table structure for table bautizar
#

CREATE TABLE `bautizar` (
  `id_bautizo` bigint(20) NOT NULL auto_increment,
  `observacion` varchar(300) default NULL,
  `estado` tinyint(1) NOT NULL,
  `id_bautizado` bigint(20) NOT NULL,
  `id_padre` bigint(20) NOT NULL,
  `id_madre` bigint(20) NOT NULL,
  `id_padrino` bigint(20) NOT NULL,
  `id_madrina` bigint(20) NOT NULL,
  `id_registro_civil` bigint(20) NOT NULL,
  `id_ministro` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `id_registro_eclesiastico` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_bautizo`),
  KEY `id_bautizado` (`id_bautizado`),
  KEY `id_padre` (`id_padre`),
  KEY `id_madre` (`id_madre`),
  KEY `id_padrino` (`id_padrino`),
  KEY `id_madrina` (`id_madrina`),
  KEY `id_registro_civil` (`id_registro_civil`),
  KEY `id_ministro` (`id_ministro`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_registro_eclesiastico` (`id_registro_eclesiastico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table bautizar
#

INSERT INTO `bautizar` VALUES (1,'',1,1,2,3,4,5,1,1,1,1);
INSERT INTO `bautizar` VALUES (2,'',1,6,7,8,9,10,2,1,1,2);
INSERT INTO `bautizar` VALUES (3,'',1,11,12,13,14,15,3,1,1,3);

#
# Table structure for table casar
#

CREATE TABLE `casar` (
  `id_matrimonio` bigint(20) NOT NULL auto_increment,
  `fecha_matrimonio` date NOT NULL,
  `lugar_matrimonio` varchar(50) NOT NULL,
  `fecha_inscripcion` date default NULL,
  `observacion` varchar(300) default NULL,
  `estado` tinyint(1) NOT NULL,
  `id_esposo` bigint(20) NOT NULL,
  `id_esposa` bigint(20) NOT NULL,
  `id_padre_esposo` bigint(20) NOT NULL,
  `id_madre_esposo` bigint(20) NOT NULL,
  `id_padre_esposa` bigint(20) NOT NULL,
  `id_madre_esposa` bigint(20) NOT NULL,
  `id_padrino` bigint(20) NOT NULL,
  `id_madrina` bigint(20) NOT NULL,
  `id_registro_civil` bigint(20) NOT NULL,
  `id_ministro` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `id_registro_eclesiastico` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_matrimonio`),
  KEY `id_esposo` (`id_esposo`),
  KEY `id_esposa` (`id_esposa`),
  KEY `id_padre_esposo` (`id_padre_esposo`),
  KEY `id_madre_esposo` (`id_madre_esposo`),
  KEY `id_padre_esposa` (`id_padre_esposa`),
  KEY `id_madre_esposa` (`id_madre_esposa`),
  KEY `id_padrino` (`id_padrino`),
  KEY `id_madrina` (`id_madrina`),
  KEY `id_registro_civil` (`id_registro_civil`),
  KEY `id_ministro` (`id_ministro`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_registro_eclesiastico` (`id_registro_eclesiastico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table casar
#

INSERT INTO `casar` VALUES (1,'2007-06-20','Guayaquil',NULL,'',1,26,27,28,29,30,31,32,33,4,1,1,6);

#
# Table structure for table comulgarporprimeravez
#

CREATE TABLE `comulgarporprimeravez` (
  `id_comunion` bigint(20) NOT NULL auto_increment,
  `fecha_comunion` date NOT NULL,
  `estado_civil_padres` varchar(50) default NULL,
  `nombre_institucion` varchar(50) default NULL,
  `grado` varchar(5) default NULL,
  `nivel` varchar(50) default NULL,
  `num_ficha` varchar(10) NOT NULL,
  `lugar_comunion` varchar(50) NOT NULL,
  `observacion` varchar(300) default NULL,
  `estado` tinyint(1) NOT NULL,
  `id_comulgado` bigint(20) NOT NULL,
  `id_padre` bigint(20) NOT NULL,
  `id_madre` bigint(20) NOT NULL,
  `id_padrino` bigint(20) NOT NULL,
  `id_madrina` bigint(20) NOT NULL,
  `id_ministro` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `id_registro_eclesiastico` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_comunion`),
  KEY `id_comulgado` (`id_comulgado`),
  KEY `id_padre` (`id_padre`),
  KEY `id_madre` (`id_madre`),
  KEY `id_padrino` (`id_padrino`),
  KEY `id_madrina` (`id_madrina`),
  KEY `id_ministro` (`id_ministro`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_registro_eclesiastico` (`id_registro_eclesiastico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table comulgarporprimeravez
#

INSERT INTO `comulgarporprimeravez` VALUES (1,'0000-00-00','hvjhvjhvjh','jhvjh','7',NULL,'','uhoiho','',1,16,17,18,19,20,1,1,4);

#
# Table structure for table confirmar
#

CREATE TABLE `confirmar` (
  `id_confirmacion` bigint(20) NOT NULL auto_increment,
  `fecha_confirmacion` date default NULL,
  `lugar_confirmacion` varchar(50) default NULL,
  `num_ficha` varchar(10) default NULL,
  `nivel` varchar(10) default NULL,
  `lugar_comunion` varchar(50) default NULL,
  `fecha_comunion` date default NULL,
  `curso` varchar(10) default NULL,
  `observacion` varchar(300) default NULL,
  `estado` tinyint(1) NOT NULL,
  `id_confirmado` bigint(20) NOT NULL,
  `id_padre` bigint(20) NOT NULL,
  `id_madre` bigint(20) NOT NULL,
  `id_padrino` bigint(20) NOT NULL,
  `id_madrina` bigint(20) NOT NULL,
  `id_ministro` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `id_registro_eclesiastico` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_confirmacion`),
  KEY `id_confirmado` (`id_confirmado`),
  KEY `id_padre` (`id_padre`),
  KEY `id_madre` (`id_madre`),
  KEY `id_padrino` (`id_padrino`),
  KEY `id_madrina` (`id_madrina`),
  KEY `id_ministro` (`id_ministro`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_registro_eclesiastico` (`id_registro_eclesiastico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table confirmar
#

INSERT INTO `confirmar` VALUES (1,'2002-08-09','guayaquil',NULL,NULL,NULL,NULL,NULL,'',1,21,22,23,24,25,1,1,5);

#
# Table structure for table ministro
#

CREATE TABLE `ministro` (
  `id_ministro` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dignidad` varchar(10) NOT NULL,
  `es_parroco` tinyint(1) default NULL,
  `es_parroco_principal` tinyint(1) default NULL,
  PRIMARY KEY  (`id_ministro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table ministro
#

INSERT INTO `ministro` VALUES (1,'Alberto','Raad','P.',1,0);
INSERT INTO `ministro` VALUES (2,'Juan Ignacio','Larrea Holguín','Mons.',1,0);
INSERT INTO `ministro` VALUES (3,'Rodolfo','Soledispa','P.',1,0);
INSERT INTO `ministro` VALUES (4,'Marcos','Pérez Caicedo','Mons.',1,0);

#
# Table structure for table registro
#

CREATE TABLE `registro` (
  `id_registro` bigint(20) NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `valor` double NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_contador` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_registro`),
  KEY `id_contador` (`id_contador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table registro
#

INSERT INTO `registro` VALUES (1,'2002-02-04',45.6,'ingreso','limosna',1);
INSERT INTO `registro` VALUES (2,'2002-12-02',45.6,'ingreso','limosna',2);

#
# Table structure for table registrocivil
#

CREATE TABLE `registrocivil` (
  `id_registro_civil` bigint(20) NOT NULL auto_increment,
  `tomo` varchar(50) default NULL,
  `anio` varchar(50) default NULL,
  `folio` varchar(50) default NULL,
  `acta` varchar(50) default NULL,
  `estado_civil` varchar(10) default NULL,
  `fecha_inscripcion` date default NULL,
  `lugar_inscripcion` varchar(50) default NULL,
  PRIMARY KEY  (`id_registro_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table registrocivil
#

INSERT INTO `registrocivil` VALUES (1,'iuf','fuyf','fu','guayas','','0000-00-00',NULL);
INSERT INTO `registrocivil` VALUES (2,'2','2009','2','a22','','0000-00-00',NULL);
INSERT INTO `registrocivil` VALUES (3,'jbkjb','jkk','kjb','kjb','','0000-00-00',NULL);
INSERT INTO `registrocivil` VALUES (4,'2','2000','1','34','','0000-00-00',NULL);

#
# Table structure for table registroeclesiastico
#

CREATE TABLE `registroeclesiastico` (
  `id_registro_eclesiastico` bigint(20) NOT NULL auto_increment,
  `num_sacramento` varchar(50) default NULL,
  `num_libro` varchar(50) default NULL,
  `folio_libro` varchar(50) default NULL,
  `anio_libro` varchar(50) default NULL,
  `lugar_bautizo` varchar(50) default NULL,
  `fecha_bautizo` date default NULL,
  `iglesia_bautizo` varchar(50) default NULL,
  `arquidiocesis` varchar(10) default NULL,
  `es_acta` tinyint(1) default NULL,
  PRIMARY KEY  (`id_registro_eclesiastico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table registroeclesiastico
#

INSERT INTO `registroeclesiastico` VALUES (1,'12','3','2','2003','','0000-00-00','','',1);
INSERT INTO `registroeclesiastico` VALUES (2,'6','2','3','2009','Cristo Rey','2009-04-02','','',1);
INSERT INTO `registroeclesiastico` VALUES (3,'39','3','2','2009','Cristo Rey','2000-03-04','','',1);
INSERT INTO `registroeclesiastico` VALUES (4,'56','77','9','87689','','0000-00-00','','',1);
INSERT INTO `registroeclesiastico` VALUES (5,'67','87','7','2002','','0000-00-00','','',1);
INSERT INTO `registroeclesiastico` VALUES (6,'22','2','1','2004','','0000-00-00','','',1);

#
# Table structure for table solicitante
#

CREATE TABLE `solicitante` (
  `id_solicitante` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(100) default NULL,
  `edad` varchar(10) default NULL,
  `telefono` varchar(100) default NULL,
  `profesion` varchar(100) default NULL,
  `sexo` tinyint(1) default NULL,
  `legitimo` tinyint(1) default NULL,
  `impedimento` tinyint(1) default NULL,
  `lugar_nacimiento` varchar(50) default NULL,
  `fecha_nacimiento` date default NULL,
  `tipo` varchar(30) NOT NULL,
  PRIMARY KEY  (`id_solicitante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table solicitante
#

INSERT INTO `solicitante` VALUES (1,'ghhfouyg','gkjg','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1990-12-11','bautizado');
INSERT INTO `solicitante` VALUES (2,'uyfohf','ikufgk','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` VALUES (3,'jgl','kjg','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` VALUES (4,'kjgi','ugo','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (5,'iugi','ugifuy','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` VALUES (6,'pamela','garcia','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','2003-02-02','bautizado');
INSERT INTO `solicitante` VALUES (7,'pedro','garcia','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` VALUES (8,'maria','peralta','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` VALUES (9,'pepito','gonzalez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (10,'manuela','garces','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` VALUES (11,'javier','flores','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','2003-04-05','bautizado');
INSERT INTO `solicitante` VALUES (12,'jose','paredes','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` VALUES (13,'mariana','gonzalez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` VALUES (14,'jose','jkbkjb','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (15,'kjbk','jbkjb','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` VALUES (16,'oihoiho','ioihoihoi','jhjhvjhv','89','','',1,NULL,NULL,'','2009-08-07','comulgado');
INSERT INTO `solicitante` VALUES (17,'hvhvjhvjh','jhvjhvjh','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` VALUES (18,'jhv','jhvj','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` VALUES (19,'vjhvjhvjhv','hjvjhvjhv','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (20,'jhvjh','vjhv','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` VALUES (21,'juliet','espinoza','',NULL,'','',1,NULL,NULL,'','1990-10-08','confirmado');
INSERT INTO `solicitante` VALUES (22,'roberto','espinoza','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` VALUES (23,'rita','suarea','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` VALUES (24,'javier','solorzano','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (25,'pilar','olmedo','',NULL,'','',NULL,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` VALUES (26,'mauricio','palma','',NULL,'','',0,NULL,NULL,'','0000-00-00','esposo');
INSERT INTO `solicitante` VALUES (27,'janet','moscoso','',NULL,'','',0,NULL,NULL,'','0000-00-00','esposa');
INSERT INTO `solicitante` VALUES (28,'mario','palma','',NULL,'','',0,NULL,NULL,'','0000-00-00','padre_novio');
INSERT INTO `solicitante` VALUES (29,'maria','petrol','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre_novio');
INSERT INTO `solicitante` VALUES (30,'juan','salvatierra','',NULL,'','',0,NULL,NULL,'','0000-00-00','padre_novia');
INSERT INTO `solicitante` VALUES (31,'lucia','arosemena','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre_novia');
INSERT INTO `solicitante` VALUES (32,'omar','arosemena','',NULL,'','',0,NULL,NULL,'','0000-00-00','padrino');
INSERT INTO `solicitante` VALUES (33,'maria','escoboso','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');

#
# Table structure for table usuario
#

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(100) default NULL,
  `tipo` varchar(50) NOT NULL,
  `cargo` varchar(10) default NULL,
  `telefono1` varchar(20) default NULL,
  `telefono2` varchar(20) default NULL,
  `usuario` varchar(20) NOT NULL,
  `contrasenia` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `id_administrador` bigint(20) default NULL,
  PRIMARY KEY  (`id_usuario`),
  KEY `id_administrador` (`id_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table usuario
#

INSERT INTO `usuario` VALUES (1,'stephanie','Flores','37 y Vaca Galindo','Administrador','Srta.','2462076',NULL,'stepp','stepp',1,1);
INSERT INTO `usuario` VALUES (2,'Vanessa','Izquierdo','LA Alborada','Secretario','Srta.','256897','','vane','vane',1,1);
INSERT INTO `usuario` VALUES (3,'Guillermo Omar','Pizarro Vasquez','La A entre la 42 y 43','Administrador','Sr.','2345678','','gpizarro','1234',1,0);
INSERT INTO `usuario` VALUES (4,'Jessica Maria','Armijos Farez','Guasmo','Administrador','Srta.','2456789','','jarmijos','jarmijos',1,0);
INSERT INTO `usuario` VALUES (5,'Luis','Suárez','','Administrador','Sr.','2354679','','lsuarez','lsuarez',1,0);
INSERT INTO `usuario` VALUES (6,'Estefania','Verdesoto','La Alborada','secretario','Srta.','2454566','','stefy','stefy',1,1);
INSERT INTO `usuario` VALUES (7,'Ninoska Sonia','Domecth Flores','guayaquil','Secretario','Srta.','2434344','','dninoska','dninoska',1,1);
INSERT INTO `usuario` VALUES (8,'Jahir','Domentch Flores','guayaquil','Administrador','Sr.','2346789','','djahir','djahir',1,1);

#
# Source for procedure spp_usuario
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `spp_usuario`(usuario_ VARCHAR(50), contrasenia_ VARCHAR(50), tipo_ VARCHAR(50))
BEGIN

  SELECT * FROM usuario WHERE (usuario=usuario_ AND contrasenia= contrasenia_ AND tipo= tipo_);

END;

#
# Source for procedure ssp_buscar_fecha
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_fecha`(fecha_ DATE, tipodoc VARCHAR(50))
BEGIN

  DECLARE esposo BIGINT(20);
  DECLARE esposa BIGINT(20);

  IF(tipodoc='bautizo')THEN
    SELECT solicitante.nombre, solicitante.apellido FROM bautizar,registroeclesiastico, solicitante WHERE bautizar.id_registro_eclesiastico=registroeclesiastico.id_registro_eclesiastico AND bautizar.id_bautizado=solicitante.id_solicitante AND registroeclesiastico.fecha_bautizo= fecha_;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT solicitante.nombre, solicitante.apellido FROM solicitante, comulgarporprimeravez WHERE solitante.id_solicitante=comulgarporprimeravez.id_comulgado AND comulgarporprimeravez.fecha_comunion=fecha_;
    ELSE
      IF(tipodoc='confirmar')THEN
        SELECT solicitante.nombre, solicitante.apellido FROM solicitante, confirmar WHERE solitante.id_solicitante=confirmar.id_confirmado AND confirmar.fecha_confirmacion=fecha_;
      ELSE
        SET esposo= (SELECT id_solicitante FROM solicitante, casar WHERE id_solicitante=casar.id_esposo AND casar.fecha_matrimonio=fecha_);
        SET esposa= (SELECT id_solicitante FROM solicitante, casar WHERE id_solicitante=casar.id_esposa AND casar.fecha_matrimonio=fecha_);
        SELECT nombre, apellido FROM solicitante WHERE id_solicitante=esposo AND id_solicitante=esposa;
      END IF;
    END IF;
  END IF;

END;

#
# Source for procedure ssp_buscar_ministro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ministro`()
BEGIN

  SELECT * FROM Ministro;

END;

#
# Source for procedure ssp_buscar_solicitante
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_solicitante`(nom VARCHAR(10), ape VARCHAR(10), tipo_ VARCHAR(50))
BEGIN
   DECLARE varnom VARCHAR(10);
   DECLARE varape VARCHAR(10);
   SET varnom= CONCAT(nom,'%');
   SET varape= CONCAT(ape,'%');

   SELECT nombre,apellido FROM solicitante WHERE (nombre LIKE varnom AND apellido LIKE varape AND tipo = tipo_);

END;

#
# Source for procedure ssp_es_usuario
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_es_usuario`( nombre_ VARCHAR(50), apellido_ VARCHAR(50), usuario_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET  salida= (SELECT nombre FROM Usuario WHERE nombre=nombre_ AND apellido=apellido_ AND usuario=usuario_);
  SELECT salida;

END;

#
# Source for procedure ssp_existe_ministro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_ministro`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), OUT mensaje VARCHAR(10))
BEGIN
  DECLARE apellido_ministro VARCHAR(50);
  SELECT apellido INTO apellido_ministro FROM Ministro WHERE nombre = nombre_ AND apellido = apellido_;

  IF(apellido_ministro = apellido_) THEN
    SET mensaje = nombre_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END;

#
# Source for procedure ssp_existe_registro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(50), descripcion_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT descripcion FROM registro WHERE (fecha=fecha_ AND valor=valor_ AND tipo=tipo_ AND descripcion=descripcion_));
  SELECT salida;

END;

#
# Source for procedure ssp_existe_registro_civil
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro_civil`(acta_ VARCHAR(50), OUT mensaje VARCHAR(10))
BEGIN
  DECLARE acta_nueva VARCHAR(50);
  SELECT acta INTO acta_nueva FROM RegistroCivil WHERE acta = acta_;

  IF(acta_nueva = acta_) THEN
    SET mensaje = acta_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END;

#
# Source for procedure ssp_existe_registro_eclesiastico
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro_eclesiastico`( nsacramento VARCHAR(50), anio VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT num_sacramento FROM registroeclesiastico WHERE (num_sacramento=nsacramento AND anio_libro=anio));
  SELECT salida;

END;

#
# Source for procedure ssp_existe_solicitante
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), tipo_ VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  DECLARE tipo_soli VARCHAR(50);
  SELECT tipo INTO tipo_soli FROM Solicitante WHERE nombre = nombre_ AND apellido = apellido_ AND tipo= tipo_;

  IF(tipo_soli = tipo_) THEN
    SET mensaje = nombre_;
  ELSE
    SET mensaje = NULL;
  END IF;

  SELECT mensaje;
END;

#
# Source for procedure ssp_id_ministro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_ministro`(nombreP_ VARCHAR(50), apellidoP_ VARCHAR(50), OUT id_minis_ BIGINT(20))
BEGIN

  SET id_minis_= (SELECT id_ministro FROM ministro WHERE nombre= nombreP_ AND apellido= apellidoP_);
  SELECT id_minis_;

END;

#
# Source for procedure ssp_id_registro_civil
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_civil`(acta_ VARCHAR(50), OUT id_regis_ BIGINT(20))
BEGIN

  SET id_regis_ = (SELECT id_registro_civil FROM registrocivil WHERE acta= acta_);
  SELECT id_regis_;

END;

#
# Source for procedure ssp_id_registro_eclesiastico
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_eclesiastico`(num_sacramento_ VARCHAR(50), acta_ BOOLEAN, OUT id_registro_ecles_ BIGINT(20))
BEGIN

  SET id_registro_ecles_ = (SELECT id_registro_eclesiastico FROM registroeclesiastico WHERE num_sacramento= num_sacramento_ AND es_acta= acta_);
  SELECT id_registro_ecles_;

END;

#
# Source for procedure ssp_id_solicitante
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), tipo_ VARCHAR(50), OUT id_soli_ BIGINT(20))
BEGIN

  SET id_soli_= (SELECT id_solicitante FROM solicitante WHERE nombre=nombre_ AND apellido= apellido_ AND tipo=tipo_);
  SELECT id_soli_;

END;

#
# Source for procedure ssp_ingresar_acta_bautizo
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_bautizo`(
nomB_ VARCHAR(50), apeB_ VARCHAR(50), sexoB_ BOOLEAN, fecha_nacimiento_ DATE,
lugar_nacimiento_ VARCHAR(50),nomP_ VARCHAR(50), apeP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50),lugar_inscripcion_ VARCHAR(50),
id_ministro BIGINT, id_usuario BIGINT,num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50),
fecha_bautizo_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  DECLARE existe VARCHAR(30);
  DECLARE id_bautizado BIGINT(20);
  DECLARE id_padre BIGINT(20);
  DECLARE id_madre BIGINT(20);
  DECLARE id_padrino BIGINT(20);
  DECLARE id_madrina BIGINT(20);
  DECLARE id_registro_civil BIGINT(20);
  DECLARE id_registro_eclesiastico BIGINT(20);
  DECLARE counter VARCHAR(10);

  SET AUTOCOMMIT= 0;


  #Valida bautizado
  CALL ssp_existe_solicitante(nomB_, apeB_, 'bautizado', salida);
  IF(salida = nomB_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE

    #Valida regsitro civil del bautizado
    CALL ssp_existe_registro_civil (acta_, salida);
    SET existe = 'Ya existe registro';
    IF(salida = existe) THEN
      SET mensaje = existe;
    ELSE

      #Valida registro eclesiastico del bautizado
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE

        START TRANSACTION;
     --   BEGIN
        #Ingresa bautizado
        CALL ssp_ingresar_solicitante(nomB_, apeB_, '', null, '', '', sexoB_, null, null, lugar_nacimiento_, fecha_nacimiento_, 'bautizado', salida);

        #Ingresa regsitro civil del bautizado
        CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', '', lugar_inscripcion_ , salida);

        #Ingresa registro eclesiastico del bautizado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, '', '', 1, salida);

        #Ingresa padre del bautizado
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', 1, null, null, '', '', 'padre', salida);

        #Ingresa madre del bautizado
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', 0, null, null, '', '', 'madre', salida);

        #Ingresa padrino del bautizado

        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);

        #Ingresa madrina del bautizado
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
        #Consulta el id del bautizado
        CALL ssp_id_solicitante(nomB_, apeB_, 'bautizado', id_bautizado);
        #Consulta el id del padre del bautizado
        CALL ssp_id_solicitante(nomP_, apeP_, 'padre', id_padre);
        #Consulta el id de la madre del bautizado
        CALL ssp_id_solicitante(nomM_, apeM_, 'madre', id_madre);
        #Consulta el id del padrino del bautizado
        CALL ssp_id_solicitante(nomPa_, apePa_, 'padrino', id_padrino);
        #Consulta el id de la madrina del bautizado
        CALL ssp_id_solicitante(nomMa_, apeMa_, 'madrina', id_madrina);
        #Consulta el id del registro civil del bautizado
        CALL ssp_id_registro_civil(acta_, id_registro_civil);
        #Consulta el id del registro eclesiastico
        CALL ssp_id_registro_eclesiastico(num_sacramento_, 1, id_registro_eclesiastico);

        INSERT INTO Bautizar(observacion, estado, id_bautizado, id_padre, id_madre, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (observacion_, 1, id_bautizado, id_padre, id_madre, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario,
        id_registro_eclesiastico);

        IF(@error <> 0) THEN
          SET mensaje = 'Error en Base de Datos';
          ROLLBACK;
        ELSE
          SET mensaje = 'Ingreso exitoso';
          COMMIT;
        END IF;
       END IF;
     END IF;
  END IF;

 SELECT mensaje;

END;

#
# Source for procedure ssp_ingresar_acta_comunion
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_comunion`(
nomCom_ VARCHAR(50), apeCom_ VARCHAR(50), sexoCom_ BOOLEAN, edadCom_ INTEGER,
nomP_ VARCHAR(50), apeP_ VARCHAR(50), nomM_ VARCHAR(50),
apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), id_ministro_ BIGINT(20), id_usuario BIGINT(20), num_sacramento_ VARCHAR(50),
num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), direccion_ VARCHAR(50),
fecha_comunion_ DATE, estado_civil_padres_ VARCHAR(50),
nombre_institucion_ VARCHAR(50), grado_ VARCHAR(50), lugar_comunion_ VARCHAR(50),
fecha_nacimiento_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  DECLARE existe VARCHAR(30);
  DECLARE id_comulgado BIGINT(20);
  DECLARE id_padre BIGINT(20);
  DECLARE id_madre BIGINT(20);
  DECLARE id_padrino BIGINT(20);
  DECLARE id_madrina BIGINT(20);
  DECLARE id_registro_civil BIGINT(20);
  DECLARE id_ministro BIGINT(20);
  DECLARE id_registro_eclesiastico BIGINT(20);
  DECLARE counter VARCHAR(10);

  SET AUTOCOMMIT= 0;

  #Valida comulgado
  CALL ssp_existe_solicitante(nomCom_, apeCom_, 'comulgado', salida);
  IF(salida = nomCom_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
      #Valida registro eclesiastico del comulgado
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
        START TRANSACTION;

        #Ingresa comulgado
        CALL ssp_ingresar_solicitante(nomCom_, apeCom_, direccion_, edadCom_, '', '', sexoCom_, null, null, '', fecha_nacimiento_, 'comulgado', salida);
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
        -- CALL ssp_ingresar_ministro(nombreP_, apellidoP_, dignidad_, 0, 1, salida);
        #Ingresa registro eclesiastico del comulgado
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        #Consulta el id del comulgado
        CALL ssp_id_solicitante(nomCom_, apeCom_, 'comulgado', id_comulgado);
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

        INSERT INTO comulgarporprimeravez(fecha_comunion, estado_civil_padres, nombre_institucion, grado, lugar_comunion, observacion, estado, id_comulgado, id_padre, id_madre, id_padrino, id_madrina, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (fecha_comunion_, estado_civil_padres_, nombre_institucion_, grado_, lugar_comunion_, observacion_, 1, id_comulgado, id_padre, id_madre, id_padrino, id_madrina, id_ministro_, id_usuario, id_registro_eclesiastico);

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

END;

#
# Source for procedure ssp_ingresar_acta_confirmacion
#

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

END;

#
# Source for procedure ssp_ingresar_acta_matrimonio
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_acta_matrimonio`(
numSa_ VARCHAR(50), numL_ VARCHAR(50),
folioL_ VARCHAR(50), anioL_ VARCHAR(50), id_ministro_ BIGINT(20),
lugarMatrimonio_ VARCHAR(50), fechaMatrimonio_ DATE, observacion_ VARCHAR(50),
nomEsposo_ VARCHAR(50), apellEsposo_ VARCHAR(50), nomEsposa_ VARCHAR(50),
apellEsposa_ VARCHAR(50), nomPaEsposo_ VARCHAR(50), apellPaEsposo_ VARCHAR(50), nomPaEsposa_ VARCHAR(50),
apellPaEsposa_ VARCHAR(50), nomMaEsposo_ VARCHAR(50), apellMaEsposo_ VARCHAR(50),
nomMaEsposa_ VARCHAR(50), apellMaEsposa_ VARCHAR(50), nomPadri_ VARCHAR(50), apellPadri_ VARCHAR(50),
nomMadri_ VARCHAR(50), apellMadri_ VARCHAR(50), acta_ VARCHAR(50), anio_ VARCHAR(50),
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
  #DECLARE id_ministro BIGINT(20);
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
          CALL ssp_ingresar_solicitante(nomPaEsposo_, apellPaEsposo_, '', null, '', '', '', null, null, '', '', 'padre_novio', salida);
          #Ingresa madre del esposo
          CALL ssp_ingresar_solicitante(nomMaEsposo_, apellMaEsposo_, '', null, '', '', '', null, null, '', '', 'madre_novio', salida);
          #Ingresa padre del esposa
          CALL ssp_ingresar_solicitante(nomPaEsposa_, apellPaEsposa_, '', null, '', '', '', null, null, '', '', 'padre_novia', salida);
          #Ingresa madre del esposa
          CALL ssp_ingresar_solicitante(nomMaEsposa_, apellMaEsposa_, '', null, '', '', '', null, null, '', '', 'madre_novia', salida);
          #Ingresa padrino de los novios
          CALL ssp_ingresar_solicitante(nomPadri_, apellPadri_, '', null, '', '', '', null, null, '', '', 'padrino', salida);
          #Ingresa madrina del los novios
          CALL ssp_ingresar_solicitante(nomMadri_, apellMadri_, '', null, '', '', '', null, null, '', '', 'madrina', salida);
          #Ingresa ministro responsable del matrimonio
          #CALL ssp_ingresar_ministro(nomMinis_, apellMinis_, dignidad_, null, null, salida);
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
          CALL ssp_id_solicitante(nomMadri_, apellMadri_, 'madrina', id_madrina);
          #Consulta el id del registro civil del matrimonio
          CALL ssp_id_registro_civil(acta_, id_registro_civil);
          #Consulta el id del ministro
          #CALL ssp_id_ministro(nomMinis_, apellMinis_, id_ministro);
          #Consulta el id del registro eclesiastico
          CALL ssp_id_registro_eclesiastico(numSa_, 1, id_registro_eclesiastico);

          INSERT INTO Casar(fecha_matrimonio, lugar_matrimonio, observacion, estado, id_esposo, id_esposa, id_padre_esposo, id_madre_esposo, id_padre_esposa, id_madre_esposa, id_padrino, id_madrina, id_registro_civil, id_ministro, id_usuario, id_registro_eclesiastico)
	        VALUES (fechaMatrimonio_, lugarMatrimonio_, observacion_,1, id_esposo, id_esposa, id_padre_esposo, id_madre_esposo, id_padre_esposa, id_madre_esposa, id_padrino, id_madrina, id_registro_civil, id_ministro_, id_usuario, id_registro_eclesiastico);

          IF(@error <> 0) THEN
            SET mensaje = 'Error en Base de Datos';
            ROLLBACK;
          ELSE
            SET mensaje = 'Ingreso exitoso';
            COMMIT;
          END IF;
        END IF;
      END IF;
    END IF;
  END IF;

  SELECT mensaje;

END;

#
# Source for procedure ssp_ingresar_ministro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_ministro`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), dignidad_ VARCHAR(50), es_parroco_ BOOLEAN, es_parroco_principal_ BOOLEAN, OUT mensaje VARCHAR(10))
BEGIN
  DECLARE salida VARCHAR(10);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_ministro(nombre_, apellido_, salida);

  IF(salida = nombre_) THEN
      SET mensaje = 'Ya existe ministro';
  ELSE
    START TRANSACTION;
    INSERT INTO Ministro(nombre, apellido, dignidad, es_parroco, es_parroco_principal)
	  VALUES (nombre_, apellido_, dignidad_, es_parroco_, es_parroco_principal_);

    IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;
  END IF;

  SELECT mensaje;

END;

#
# Source for procedure ssp_ingresar_registro_civil
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_registro_civil`(tomo_ VARCHAR(50), anio_ VARCHAR(50), folio_ VARCHAR(50), acta_ VARCHAR(50), estado_civil_ VARCHAR(50), fecha_inscripcion_ DATE, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE salida VARCHAR(50);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_registro_civil(acta_, salida);

  IF(salida = acta_) THEN
      SET mensaje = 'Ya existe registro';
  ELSE
    START TRANSACTION;
    INSERT INTO RegistroCivil(tomo, anio, folio, acta, estado_civil, fecha_inscripcion)
	  VALUES (tomo_, anio_, folio_, acta_, estado_civil_, fecha_inscripcion_);

    IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;
  END IF;

  SELECT mensaje;

END;

#
# Source for procedure ssp_ingresar_solicitante
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), direccion_ VARCHAR(100), edad_ INTEGER, telefono_ VARCHAR(100), profesion_ VARCHAR(100), sexo_ BOOLEAN, legitimo_ BOOLEAN, impedimento_ BOOLEAN, lugar_nacimiento_ VARCHAR(50), fecha_nacimiento_ DATE, tipo_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_solicitante(nombre_, apellido_,tipo_, salida);

  IF(salida = nombre_) THEN
    SET mensaje = 'Ya existe solicitante';
  ELSE
    START TRANSACTION;
    INSERT INTO Solicitante(nombre, apellido, direccion, edad, telefono, profesion, sexo, legitimo, impedimento, lugar_nacimiento, fecha_nacimiento, tipo)
	  VALUES (nombre_, apellido_, direccion_, edad_, telefono_, profesion_, sexo_, legitimo_, impedimento_, lugar_nacimiento_, fecha_nacimiento_, tipo_);

    IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;
  END IF;

  SELECT mensaje;
END;

#
# Source for procedure ssp_insertar_registro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(50), descripcion_ VARCHAR(50), id_contador_ BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL ssp_existe_registro(fecha_, valor_, tipo_, descripcion_, result);

  IF(result= descripcion_) THEN
    SELECT mensaje='Ya de encuentra ese registro';

  ELSE
      START TRANSACTION;
      INSERT INTO registro(fecha, valor, tipo, descripcion, id_contador)
      VALUES (fecha_, valor_, tipo_, descripcion_, id_contador_);

      IF(@error <> 0)THEN
         SELECT mensaje='Error en la base de Datos';
         ROLLBACK;
      ELSE
        SELECT mensaje='Okey';
        COMMIT;
      END IF;
  END IF;



END;

#
# Source for procedure ssp_insertar_registro_eclesiastico
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_registro_eclesiastico`(num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50), fecha_bautizo_ DATE, iglesia_bautizo_ VARCHAR(50), arquidiocesis_ VARCHAR(50), es_acta_ BOOLEAN, OUT mensaje VARCHAR(50))
BEGIN
 DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL SSP_existe_registro_eclesiastico(num_sacramento_, anio_libro_, result);

  IF(result= num_sacramento_) THEN
    SELECT mensaje='Ya se encuentra registrado en la Base';

  ELSE
      START TRANSACTION;
      INSERT INTO registroeclesiastico(num_sacramento, num_libro, folio_libro, anio_libro, lugar_bautizo, fecha_bautizo, iglesia_bautizo, arquidiocesis, es_acta)
      VALUES (num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, iglesia_bautizo_, arquidiocesis_, es_acta_);

      IF(@error <> 0)THEN
         SELECT mensaje='Error en la base de Datos';
         ROLLBACK;
      ELSE
        SELECT mensaje='Okey';
        COMMIT;
      END IF;
  END IF;

END;

#
# Source for procedure ssp_insertar_usuario
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_usuario`(nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), tipo VARCHAR(50), cargo VARCHAR(50), telefono1 VARCHAR(50), telefono2 VARCHAR(50), usuario VARCHAR(50), contrasea VARCHAR(50), estado BOOLEAN, id_administrador BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  DECLARE result VARCHAR(50);
  SET AUTOCOMMIT= 0;

  CALL SSP_es_usuario(nombre, apellido, usuario, result);

  IF(result= nombre) THEN
    SELECT mensaje='Ya de encuentra registrado en la Base';

  ELSE
      START TRANSACTION;
      INSERT INTO usuario(nombre, apellido, direccion, tipo, cargo, telefono1, telefono2, usuario, contrasenia, estado, id_administrador)
      VALUES (nombre, apellido, direccion, tipo, cargo, telefono1, telefono2, usuario, contrasenia, estado, id_administrador);

      IF(@error <> 0)THEN
         SELECT mensaje='Error en la base de Datos';
         ROLLBACK;
      ELSE
        SELECT mensaje='Okey';
        COMMIT;
      END IF;
  END IF;

END;

#
# Source for procedure ssp_ministro
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ministro`()
BEGIN

  SELECT * FROM ministro;

END;

#
# Source for procedure ssp_tipo_usuario
#

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_tipo_usuario`(usuario_ VARCHAR(50), contrasenia_ VARCHAR(50),tipo_ VARCHAR(50))
BEGIN

  SELECT * FROM usuario WHERE (usuario=usuario_ AND contrasenia=contrasenia_ AND tipo=tipo_);

END;

#
#  Foreign keys for table bautizar
#

ALTER TABLE `bautizar`
  ADD FOREIGN KEY (`id_bautizado`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padrino`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madrina`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_registro_civil`) REFERENCES `registrocivil` (`id_registro_civil`),
  ADD FOREIGN KEY (`id_ministro`) REFERENCES `ministro` (`id_ministro`),
  ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD FOREIGN KEY (`id_registro_eclesiastico`) REFERENCES `registroeclesiastico` (`id_registro_eclesiastico`);

#
#  Foreign keys for table casar
#

ALTER TABLE `casar`
  ADD FOREIGN KEY (`id_esposo`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padrino`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madrina`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_registro_civil`) REFERENCES `registrocivil` (`id_registro_civil`),
  ADD FOREIGN KEY (`id_ministro`) REFERENCES `ministro` (`id_ministro`),
  ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD FOREIGN KEY (`id_registro_eclesiastico`) REFERENCES `registroeclesiastico` (`id_registro_eclesiastico`),
  ADD FOREIGN KEY (`id_esposa`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padre_esposo`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madre_esposo`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padre_esposa`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madre_esposa`) REFERENCES `solicitante` (`id_solicitante`);

#
#  Foreign keys for table comulgarporprimeravez
#

ALTER TABLE `comulgarporprimeravez`
  ADD FOREIGN KEY (`id_comulgado`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padrino`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madrina`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_ministro`) REFERENCES `ministro` (`id_ministro`),
  ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD FOREIGN KEY (`id_registro_eclesiastico`) REFERENCES `registroeclesiastico` (`id_registro_eclesiastico`);

#
#  Foreign keys for table confirmar
#

ALTER TABLE `confirmar`
  ADD FOREIGN KEY (`id_confirmado`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madre`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_padrino`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_madrina`) REFERENCES `solicitante` (`id_solicitante`),
  ADD FOREIGN KEY (`id_ministro`) REFERENCES `ministro` (`id_ministro`),
  ADD FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD FOREIGN KEY (`id_registro_eclesiastico`) REFERENCES `registroeclesiastico` (`id_registro_eclesiastico`);

#
#  Foreign keys for table registro
#

ALTER TABLE `registro`
  ADD FOREIGN KEY (`id_contador`) REFERENCES `usuario` (`id_usuario`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
