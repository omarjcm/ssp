-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ssp
--

CREATE DATABASE IF NOT EXISTS ssp;
USE ssp;

--
-- Definition of table `bautizar`
--

DROP TABLE IF EXISTS `bautizar`;
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

--
-- Dumping data for table `bautizar`
--

/*!40000 ALTER TABLE `bautizar` DISABLE KEYS */;
INSERT INTO `bautizar` (`id_bautizo`,`observacion`,`estado`,`id_bautizado`,`id_padre`,`id_madre`,`id_padrino`,`id_madrina`,`id_registro_civil`,`id_ministro`,`id_usuario`,`id_registro_eclesiastico`) VALUES 
 (1,'',1,1,2,3,4,5,1,5,3,1);
/*!40000 ALTER TABLE `bautizar` ENABLE KEYS */;


--
-- Definition of table `casar`
--

DROP TABLE IF EXISTS `casar`;
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

--
-- Dumping data for table `casar`
--

/*!40000 ALTER TABLE `casar` DISABLE KEYS */;
INSERT INTO `casar` (`id_matrimonio`,`fecha_matrimonio`,`lugar_matrimonio`,`fecha_inscripcion`,`observacion`,`estado`,`id_esposo`,`id_esposa`,`id_padre_esposo`,`id_madre_esposo`,`id_padre_esposa`,`id_madre_esposa`,`id_padrino`,`id_madrina`,`id_registro_civil`,`id_ministro`,`id_usuario`,`id_registro_eclesiastico`) VALUES 
 (1,'2007-08-25','Guayaquil',NULL,' ',1,19,20,21,22,23,24,25,5,1,7,3,1),
 (2,'2007-08-25','Guayaquil',NULL,' ',1,26,27,28,29,30,31,32,5,1,7,3,3);
/*!40000 ALTER TABLE `casar` ENABLE KEYS */;


--
-- Definition of table `comulgarporprimeravez`
--

DROP TABLE IF EXISTS `comulgarporprimeravez`;
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

--
-- Dumping data for table `comulgarporprimeravez`
--

/*!40000 ALTER TABLE `comulgarporprimeravez` DISABLE KEYS */;
INSERT INTO `comulgarporprimeravez` (`id_comunion`,`fecha_comunion`,`estado_civil_padres`,`nombre_institucion`,`grado`,`nivel`,`num_ficha`,`lugar_comunion`,`observacion`,`estado`,`id_comulgado`,`id_padre`,`id_madre`,`id_padrino`,`id_madrina`,`id_ministro`,`id_usuario`,`id_registro_eclesiastico`) VALUES 
 (1,'2007-08-25','','',NULL,NULL,'','Parroquia Cristo Rey','',1,6,7,8,9,5,7,3,2),
 (2,'2007-08-25','','',NULL,NULL,'','Parroquia Cristo Rey','',1,10,7,8,9,5,5,3,1),
 (3,'2007-08-25','',' ',NULL,NULL,'','Parroquia Cristo Rey',' ',1,11,12,13,9,14,7,3,1);
/*!40000 ALTER TABLE `comulgarporprimeravez` ENABLE KEYS */;


--
-- Definition of table `confirmar`
--

DROP TABLE IF EXISTS `confirmar`;
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

--
-- Dumping data for table `confirmar`
--

/*!40000 ALTER TABLE `confirmar` DISABLE KEYS */;
INSERT INTO `confirmar` (`id_confirmacion`,`fecha_confirmacion`,`lugar_confirmacion`,`num_ficha`,`nivel`,`lugar_comunion`,`fecha_comunion`,`curso`,`observacion`,`estado`,`id_confirmado`,`id_padre`,`id_madre`,`id_padrino`,`id_madrina`,`id_ministro`,`id_usuario`,`id_registro_eclesiastico`) VALUES 
 (1,'2007-08-25','Parroquia Cristo Rey',NULL,NULL,NULL,NULL,NULL,'',1,15,16,17,18,5,7,3,1);
/*!40000 ALTER TABLE `confirmar` ENABLE KEYS */;


--
-- Definition of table `descripcion`
--

DROP TABLE IF EXISTS `descripcion`;
CREATE TABLE `descripcion` (
  `id_descripcion` bigint(20) unsigned NOT NULL auto_increment,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descripcion`
--

/*!40000 ALTER TABLE `descripcion` DISABLE KEYS */;
INSERT INTO `descripcion` (`id_descripcion`,`descripcion`) VALUES 
 (1,'pago luz'),
 (2,'limosnas'),
 (20,'sueldos'),
 (21,'vasija'),
 (22,'escoba');
/*!40000 ALTER TABLE `descripcion` ENABLE KEYS */;


--
-- Definition of table `ministro`
--

DROP TABLE IF EXISTS `ministro`;
CREATE TABLE `ministro` (
  `id_ministro` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dignidad` varchar(10) NOT NULL,
  `es_parroco` tinyint(1) default NULL,
  `es_parroco_principal` tinyint(1) default NULL,
  PRIMARY KEY  (`id_ministro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ministro`
--

/*!40000 ALTER TABLE `ministro` DISABLE KEYS */;
INSERT INTO `ministro` (`id_ministro`,`nombre`,`apellido`,`dignidad`,`es_parroco`,`es_parroco_principal`) VALUES 
 (1,'Longino','Schmidt','P.',0,0),
 (2,'Antonio','Doyle','P.',0,0),
 (3,'Dionisio','Zuluaga Arteche','P.',0,0),
 (4,'Ramiro','Herrera Herrera','P.',1,0),
 (5,'Bernardino','Echeverría','Mons.',0,0),
 (6,'Alberto','Raad','P.',1,1),
 (7,'Juan Ignacio','Larrea Holguín','Mons.',0,0);
/*!40000 ALTER TABLE `ministro` ENABLE KEYS */;


--
-- Definition of table `registro`
--

DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro` (
  `id_registro` bigint(20) NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `valor` double NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_contador` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_registro`),
  KEY `id_contador` (`id_contador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registro`
--

/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` (`id_registro`,`fecha`,`valor`,`tipo`,`id_contador`) VALUES 
 (1,'2007-08-25',45,'Egreso Interno',3),
 (2,'2007-08-25',45,'Ingreso',3),
 (4,'2007-12-02',1000,'Ingreso',12),
 (5,'2007-09-01',250,'Egreso Interno',3),
 (6,'2007-09-12',200,'ingreso',3),
 (7,'2007-09-14',300,'egreso interno',3),
 (8,'2007-09-18',10,'Egreso Interno',1);
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;


--
-- Definition of table `registrocivil`
--

DROP TABLE IF EXISTS `registrocivil`;
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

--
-- Dumping data for table `registrocivil`
--

/*!40000 ALTER TABLE `registrocivil` DISABLE KEYS */;
INSERT INTO `registrocivil` (`id_registro_civil`,`tomo`,`anio`,`folio`,`acta`,`estado_civil`,`fecha_inscripcion`,`lugar_inscripcion`) VALUES 
 (1,'','','','','','2007-08-18','Guayaquil - Guayas');
/*!40000 ALTER TABLE `registrocivil` ENABLE KEYS */;


--
-- Definition of table `registrodescripcion`
--

DROP TABLE IF EXISTS `registrodescripcion`;
CREATE TABLE `registrodescripcion` (
  `id_registro_descripcion` bigint(20) NOT NULL auto_increment,
  `id_registro` bigint(20) NOT NULL,
  `id_descripcion` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_registro_descripcion`),
  KEY `id_registro` USING BTREE (`id_registro`),
  KEY `id_descripcion` USING BTREE (`id_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrodescripcion`
--

/*!40000 ALTER TABLE `registrodescripcion` DISABLE KEYS */;
INSERT INTO `registrodescripcion` (`id_registro_descripcion`,`id_registro`,`id_descripcion`) VALUES 
 (1,4,2),
 (2,5,20),
 (3,6,21),
 (4,7,21),
 (5,8,22);
/*!40000 ALTER TABLE `registrodescripcion` ENABLE KEYS */;


--
-- Definition of table `registroeclesiastico`
--

DROP TABLE IF EXISTS `registroeclesiastico`;
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

--
-- Dumping data for table `registroeclesiastico`
--

/*!40000 ALTER TABLE `registroeclesiastico` DISABLE KEYS */;
INSERT INTO `registroeclesiastico` (`id_registro_eclesiastico`,`num_sacramento`,`num_libro`,`folio_libro`,`anio_libro`,`lugar_bautizo`,`fecha_bautizo`,`iglesia_bautizo`,`arquidiocesis`,`es_acta`) VALUES 
 (1,'89','II','23','2007','Parroquia Cristo Rey','2007-08-25','','',1),
 (2,'90','II','34','2007','','0000-00-00','','',1),
 (3,'78','III','283','2007','','0000-00-00','','',1);
/*!40000 ALTER TABLE `registroeclesiastico` ENABLE KEYS */;


--
-- Definition of table `solicitante`
--

DROP TABLE IF EXISTS `solicitante`;
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

--
-- Dumping data for table `solicitante`
--

/*!40000 ALTER TABLE `solicitante` DISABLE KEYS */;
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (1,'Manuela Silvana','Núñez Samaniego','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','2007-08-04','bautizado'),
 (2,'Juan','Núñez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (3,'Manuela','Samaniego','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (4,'Alberto','','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (5,'','','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (6,'Luis Alfonso','León Zúñiga','','0','','',1,NULL,NULL,'','2007-08-04','comulgado'),
 (7,'',' ','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (8,'',' ','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (9,' ','','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (10,'Juan Antonio','Segura Segovia','','0','','',1,NULL,NULL,'','2007-08-04','comulgado'),
 (11,'Mónica','Argudo Solis',' ','0','','',0,NULL,NULL,'','2007-08-04','comulgado'),
 (12,' ','Argudo','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (13,' ','Solis','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (14,'Soldiamar',' ','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (15,'Soila','Guevara Cueva','',NULL,'','',0,NULL,NULL,'','2007-08-04','confirmado'),
 (16,'','Guevara','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (17,'','Cueva','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (18,'Juan','Benalcazar','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (19,'Juan Alberto','Sánchez Zurita','',NULL,'','',1,NULL,NULL,'','0000-00-00','esposo'),
 (20,'Susy Sandra','Molina Arteaga','',NULL,'','',0,NULL,NULL,'','0000-00-00','esposa'),
 (21,' ','Sánchez','',NULL,'','1',0,NULL,NULL,'','0000-00-00','padre_novio'),
 (22,' ','Zurita','',NULL,'','0',0,NULL,NULL,'','0000-00-00','madre_novio'),
 (23,' ','Molina','',NULL,'','1',0,NULL,NULL,'','0000-00-00','padre_novia'),
 (24,' ','Arteaga','',NULL,'','0',0,NULL,NULL,'','0000-00-00','madre_novia');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (25,'Juan','Solorzano','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (26,'Luis Juan','Adalberto Pérez','',NULL,'','',1,NULL,NULL,'','0000-00-00','esposo'),
 (27,'Susy Celia','Sánchez Molina','',NULL,'','',0,NULL,NULL,'','0000-00-00','esposa'),
 (28,' ','Adalberto','',NULL,'','1',0,NULL,NULL,'','0000-00-00','padre_novio'),
 (29,' ','Pérez','',NULL,'','0',0,NULL,NULL,'','0000-00-00','madre_novio'),
 (30,' ','Sánchez','',NULL,'','1',0,NULL,NULL,'','0000-00-00','padre_novia'),
 (31,' ','Molina','',NULL,'','0',0,NULL,NULL,'','0000-00-00','madre_novia'),
 (32,'Luis','Arteaga','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino');
/*!40000 ALTER TABLE `solicitante` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
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

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`,`nombre`,`apellido`,`direccion`,`tipo`,`cargo`,`telefono1`,`telefono2`,`usuario`,`contrasenia`,`estado`,`id_administrador`) VALUES 
 (1,'stephanie','Flores','37 y Vaca Galindo','Administrador','Srta.','2462076',NULL,'stepp','stepp',1,1),
 (2,'Vanessa','Izquierdo','LA Alborada','Secretario','Srta.','256897','','vane','vane',1,1),
 (3,'Guillermo Omar','Pizarro Vásquez','La A entre la 42 y 43','Administrador','Sr.','2345678','','gpizarro','12345',1,0),
 (4,'Jessica Maria','Armijos Farez','Guasmo','Administrador','Srta.','2456789','','jarmijos','jarmijos',1,0),
 (10,'Lucciola Maricela','Moreira Zamora','calle Q y la 41','Secretario','Srta.','2664665','2667619','Lucciola','470972',1,3),
 (11,'Sally Emperatriz','Lopez Astudillo','Vacas Galindo /32ava','Secretario','Sra.','2462159','2479137','slopez','12345',1,3),
 (12,'Dario','Pizarro Vasquez','La A entre la 42 y la 43','Contador','Sr.','2845844','','dpizarro','12345',1,3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


--
-- Definition of procedure `ssp_actualizar_datos_bautizo`
--

DROP PROCEDURE IF EXISTS `ssp_actualizar_datos_bautizo`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_datos_bautizo`(
id_bautizo_ VARCHAR(50), id_b_ VARCHAR(50), id_pa_ VARCHAR(50), id_ma_ VARCHAR(50),
id_pad_ VARCHAR(50), id_mad_ VARCHAR(50), id_rc_ VARCHAR(50), id_re_ VARCHAR(50),
nomB_ VARCHAR(50), apeB_ VARCHAR(50), sexoB_ BOOLEAN, fecha_nacimiento_ DATE,
lugar_nacimiento_ VARCHAR(50),nomP_ VARCHAR(50), apeP_ VARCHAR(50),
nomM_ VARCHAR(50), apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50),lugar_inscripcion_ VARCHAR(50),
id_ministro_ BIGINT, id_usuario BIGINT,num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50),
fecha_bautizo_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30))
BEGIN
  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;

  START TRANSACTION;
  
  CALL ssp_actualizar_solicitante(id_b_, nomB_, apeB_, sexoB_, lugar_nacimiento_, fecha_nacimiento_, '', '', 'bautizado', salida);

  
  CALL ssp_actualizar_registro_civil(id_rc_, tomo_, anio_, folio_, acta_, '', lugar_inscripcion_, salida);

  
  CALL ssp_actualizar_registro_eclesiastico(id_re_, num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, salida);

  
  CALL ssp_actualizar_solicitante(id_pa_, nomP_, apeP_, 1, '', '', '', '', 'padre', salida);

  
  CALL ssp_actualizar_solicitante(id_ma_, nomM_, apeM_, 0, '', '', '', '', 'madre', salida);

  
  CALL ssp_actualizar_solicitante(id_pad_, nomPa_, apePa_, 1, '', '', '', '', 'padrino', salida);

  
  CALL ssp_actualizar_solicitante(id_mad_, nomMa_, apeMa_, 0, '', '', '', '', 'madrina', salida);

  UPDATE Bautizar SET observacion = observacion_, id_ministro = id_ministro_, id_usuario = id_usuario WHERE id_bautizo = id_bautizo_;

  IF(@error <> 0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización de bautizo exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_actualizar_datos_comunion`
--

DROP PROCEDURE IF EXISTS `ssp_actualizar_datos_comunion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_datos_comunion`(
id_comunion_ VARCHAR(50), id_c_ VARCHAR(50), id_pa_ VARCHAR(50),
id_ma_ VARCHAR(50), id_pad_ VARCHAR(50), id_mad_ VARCHAR(50), id_re_ VARCHAR(50),
nomCom_ VARCHAR(50), apeCom_ VARCHAR(50), sexoCom_ BOOLEAN, edadCom_ INTEGER,
nomP_ VARCHAR(50), apeP_ VARCHAR(50), nomM_ VARCHAR(50),
apeM_ VARCHAR(50), nomPa_ VARCHAR(50), apePa_ VARCHAR(50),
nomMa_ VARCHAR(50), apeMa_ VARCHAR(50), id_ministro_ BIGINT(20), id_usuario BIGINT(20), num_sacramento_ VARCHAR(50),
num_libro_ VARCHAR(50), folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), direccion_ VARCHAR(50),
fecha_comunion_ DATE, estado_civil_padres_ VARCHAR(50),
nombre_institucion_ VARCHAR(50), grado_ VARCHAR(50), lugar_comunion_ VARCHAR(50),
fecha_nacimiento_ DATE, observacion_ VARCHAR(300), OUT mensaje VARCHAR(30)
)
BEGIN

  DECLARE salida VARCHAR(30);
  SET AUTOCOMMIT= 0;

  START TRANSACTION;
  
  CALL ssp_actualizar_solicitante(id_c_, nomCom_, apeCom_, sexoCom_, '', fecha_nacimiento_, edadCom_, direccion_, 'comulgado', salida);

  
  

  
  CALL ssp_actualizar_registro_eclesiastico(id_re_, num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', salida);

  
  CALL ssp_actualizar_solicitante(id_pa_, nomP_, apeP_, 1, '', '', '', '', 'padre', salida);

  
  CALL ssp_actualizar_solicitante(id_ma_, nomM_, apeM_, 0, '', '', '', '', 'madre', salida);

  
  CALL ssp_actualizar_solicitante(id_pad_, nomPa_, apePa_, 1, '', '', '', '', 'padrino', salida);

  
  CALL ssp_actualizar_solicitante(id_mad_, nomMa_, apeMa_, 0, '', '', '', '', 'madrina', salida);

  UPDATE ComulgarPorPrimeraVez
  SET fecha_comunion = fecha_comunion_, estado_civil_padres = estado_civil_padres_, nombre_institucion = nombre_institucion_, grado = grado_, lugar_comunion = lugar_comunion_, observacion = observacion_, id_ministro = id_ministro_, id_usuario = id_usuario
  WHERE id_comunion = id_comunion_;

  IF(@error <> 0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización comunion exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_actualizar_registro_civil`
--

DROP PROCEDURE IF EXISTS `ssp_actualizar_registro_civil`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_registro_civil`(
id_rc_ VARCHAR(50), tomo_ VARCHAR(50), anio_ VARCHAR(50),
folio_ VARCHAR(50), acta_ VARCHAR(50), estado_civil_ VARCHAR(50),
lugar_inscripcion_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE RegistroCivil
  SET tomo=tomo_, anio=anio_, folio=folio_, acta=acta_, estado_civil=estado_civil_, lugar_inscripcion=lugar_inscripcion_
  WHERE id_registro_civil = id_rc_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_actualizar_registro_eclesiastico`
--

DROP PROCEDURE IF EXISTS `ssp_actualizar_registro_eclesiastico`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_registro_eclesiastico`(
id_re_ VARCHAR(50), num_sacramento_ VARCHAR(50), num_libro_ VARCHAR(50),
folio_libro_ VARCHAR(50), anio_libro_ VARCHAR(50), lugar_bautizo_ VARCHAR(50),
fecha_bautizo_ DATE, OUT mensaje VARCHAR(30))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE RegistroEclesiastico
  SET num_sacramento=num_sacramento_, num_libro=num_libro_, folio_libro=folio_libro_, anio_libro=anio_libro_, lugar_bautizo=lugar_bautizo_, fecha_bautizo=fecha_bautizo_
  WHERE id_registro_eclesiastico = id_re_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Actualización exitosa';
    COMMIT;
  END IF;

  SELECT mensaje;


END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_actualizar_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_actualizar_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_actualizar_solicitante`(
id_ VARCHAR(50), nom_ VARCHAR(50), ape_ VARCHAR(50), sexo_ BOOLEAN,
lugar_nacimiento_ VARCHAR(50), fecha_nacimiento_ DATE, edad_ VARCHAR(50),
direccion_ VARCHAR(50), tipo_ VARCHAR(50), OUT mensaje VARCHAR(30))
BEGIN
  SET AUTOCOMMIT= 0;

  START TRANSACTION;

  UPDATE solicitante
  SET nombre = nom_, apellido = ape_, direccion = direccion_, edad = edad_, sexo = sexo_, lugar_nacimiento = lugar_nacimiento_, fecha_nacimiento = fecha_nacimiento_
  WHERE id_solicitante = id_ AND tipo = tipo_;

  IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Actualización solicitante exitosa';
      COMMIT;
    END IF;

  SELECT mensaje;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_anio_mes_fecha`
--

DROP PROCEDURE IF EXISTS `ssp_anio_mes_fecha`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anio_mes_fecha`(fecha DATE, OUT anio BIGINT(10), OUT mes BIGINT(10))
BEGIN
  
  

  SELECT YEAR(fecha) INTO anio;
  SELECT MONTH(fecha) INTO mes;

  SELECT anio;
  SELECT mes;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_anular_acta`
--

DROP PROCEDURE IF EXISTS `ssp_anular_acta`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_acta`(id_ VARCHAR(50), tipodoc VARCHAR(50))
BEGIN



  IF(tipodoc='bautizo')THEN
    UPDATE Bautizar SET estado = 0 WHERE id_bautizado = id_;
  ELSE
    IF(tipodoc='comunion')THEN
      UPDATE ComulgarPorPrimeraVez SET estado = 0 WHERE id_comulgado = id_;

    END IF;
  END IF;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_anular_acta_confirmacion`
--

DROP PROCEDURE IF EXISTS `ssp_anular_acta_confirmacion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_acta_confirmacion`(id_confirmacion_ BIGINT(20), OUT mensaje VARCHAR(10))
BEGIN

  SET AUTOCOMMIT= 0;

  START TRANSACTION;


  UPDATE confirmar
  SET estado=0
  WHERE id_confirmacion=id_confirmacion_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Anulacion exitoso';
    COMMIT;
  END IF;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_anular_acta_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_anular_acta_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_acta_matrimonio`(id_matrimonio_ BIGINT(20), OUT mensaje VARCHAR(10))
BEGIN

  SET AUTOCOMMIT=0;

  START TRANSACTION;

  UPDATE casar
  SET estado=0
  WHERE id_matrimonio=id_matrimonio_;

  IF(@error<>0) THEN
    SET mensaje = 'Error en Base de Datos';
    ROLLBACK;
  ELSE
    SET mensaje = 'Anulacion exitoso';
    COMMIT;
  END IF;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_anular_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_anular_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_anular_usuario`(id_ VARCHAR(50))
BEGIN
  UPDATE usuario SET estado = 0 WHERE id_usuario = id_;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_datos_bautizo`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_datos_bautizo`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_datos_bautizo`(id_ VARCHAR(50))
BEGIN

  SELECT b.id_bautizo, re.id_registro_eclesiastico, re.num_sacramento, re.anio_libro, re.num_libro,
         re.folio_libro, rc.id_registro_civil, rc.anio, rc.tomo, rc.folio, rc.acta,
         rc.lugar_inscripcion, b.observacion, m.id_ministro, m.dignidad, m.nombre, m.apellido,
         re.fecha_bautizo, s.id_solicitante, s.nombre, s.apellido, s.sexo, pa.id_solicitante,
         pa.nombre, pa.apellido, ma.id_solicitante, ma.nombre, ma.apellido, s.lugar_nacimiento,
         s.fecha_nacimiento, pad.id_solicitante, pad.nombre, pad.apellido, mad.id_solicitante,
         mad.nombre, mad.apellido, re.lugar_bautizo, b.estado
  FROM bautizar b, solicitante s, registrocivil rc, registroeclesiastico re, ministro m,
       solicitante pa, solicitante ma, solicitante pad, solicitante mad
  WHERE s.id_solicitante = id_ AND s.id_solicitante = b.id_bautizado AND
        b.id_registro_eclesiastico = re.id_registro_eclesiastico AND
        b.id_registro_civil = rc.id_registro_civil AND b.id_ministro = m.id_ministro
        AND b.id_padre = pa.id_solicitante AND b.id_madre = ma.id_solicitante AND
        b.id_padrino = pad.id_solicitante AND b.id_madrina = mad.id_solicitante;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_datos_comunion`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_datos_comunion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_datos_comunion`(id_ VARCHAR(50))
BEGIN

  SELECT re.anio_libro, re.num_libro, re.folio_libro, re.num_sacramento,
         m.dignidad, m.nombre, m.apellido, pc.fecha_comunion, s.nombre, s.apellido,
         s.sexo, pa.nombre, pa.apellido, ma.nombre, ma.apellido, s.lugar_nacimiento,
         pad.nombre, pad.apellido, mad.nombre, mad.apellido, pc.lugar_comunion,
         s.edad, pc.grado, pc.nombre_institucion, s.direccion, pc.estado_civil_padres,
         s.fecha_nacimiento, pc.id_comunion, s.id_solicitante, pa.id_solicitante,
         ma.id_solicitante, pad.id_solicitante, mad.id_solicitante,
         re.id_registro_eclesiastico, m.id_ministro, pc.observacion, pc.estado, pc.nivel
  FROM comulgarporprimeravez pc, solicitante s, registrocivil rc, registroeclesiastico re,
       ministro m, solicitante pa, solicitante ma, solicitante pad, solicitante mad
  WHERE s.id_solicitante = id_ AND s.id_solicitante = pc.id_comulgado AND
        pc.id_registro_eclesiastico = re.id_registro_eclesiastico AND
        pc.id_ministro = m.id_ministro AND pc.id_padre = pa.id_solicitante
        AND pc.id_madre = ma.id_solicitante AND pc.id_padrino = pad.id_solicitante
        AND pc.id_madrina = mad.id_solicitante;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_esposa`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_esposa`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_esposa`(id_esposo long)
BEGIN

--  DECLARE id_esposa BIGINT(20);
--  DECLARE id_casado BIGINT(20);


  SELECT nombre, apellido, id_solicitante
  FROM solicitante
  WHERE id_solicitante= (SELECT c.id_esposa FROM casar c WHERE c.id_esposo= id_esposo);


END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_esposo`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_esposo`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_esposo`(id_esposa long)
BEGIN

  SELECT nombre, apellido, id_solicitante
  FROM solicitante
  WHERE id_solicitante= (SELECT c.id_esposo FROM casar c WHERE c.id_esposa= id_esposa);


END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_esposos`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_esposos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_fecha`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_fecha`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_fecha`(fecha_ DATE, tipodoc VARCHAR(50))
BEGIN

  DECLARE esposo BIGINT(20);
  DECLARE esposa BIGINT(20);

  IF(tipodoc='bautizo')THEN
    SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM bautizar,registroeclesiastico, solicitante WHERE bautizar.id_registro_eclesiastico=registroeclesiastico.id_registro_eclesiastico AND bautizar.id_bautizado=solicitante.id_solicitante AND registroeclesiastico.fecha_bautizo= fecha_ AND bautizar.estado = 1;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM solicitante, comulgarporprimeravez WHERE solicitante.id_solicitante=comulgarporprimeravez.id_comulgado AND comulgarporprimeravez.fecha_comunion=fecha_ AND comulgarporprimeravez.estado = 1;
    ELSE
      IF(tipodoc='confirmar')THEN
        SELECT solicitante.id_solicitante, solicitante.nombre, solicitante.apellido FROM solicitante, confirmar WHERE solicitante.id_solicitante=confirmar.id_confirmado AND confirmar.fecha_confirmacion=fecha_ AND confirmar.estado = 1;
      ELSE
        
        
        
        
        IF(tipodoc='matrimonio')THEN
          SELECT m.id_matrimonio, m.id_esposo, m.id_esposa, eo.nombre, eo.apellido, ea.nombre, ea.apellido FROM casar m, solicitante eo, solicitante ea WHERE m.id_esposo = eo.id_solicitante AND m.id_esposa = ea.id_solicitante AND m.estado = 1;
        END IF;
      END IF;
    END IF;
  END IF;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_ids`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_ids`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ids`(id_ VARCHAR(50), tipodoc_ VARCHAR(50))
BEGIN


  SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM Bautizar b WHERE b.id_bautizo = id_;

  IF(tipodoc='bautizo')THEN
    SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM Bautizar b WHERE b.id_bautizo = id_bau_;
  ELSE
    IF(tipodoc='comunion')THEN
      SELECT b.id_bautizado, b.id_padre, b.id_madre, b.id_padrino, b.id_madrina, b.id_registro_civil, b.id_ministro, b.id_registro_eclesiastico
  FROM ComulgarPorPrimeraVez WHERE id_comunion = id_;
    
      
        
      
        
        
        
        
          
        
      
    END IF;
  END IF;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_id_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_id_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_id_matrimonio`(nomEO_ VARCHAR(50), apeEO_ VARCHAR(50), nomEA_ VARCHAR(50), apeEA_ VARCHAR(50))
BEGIN
  SELECT id_matrimonio
  FROM casar c, solicitante eo, solicitante ea
  WHERE c.id_esposo = eo.id_solicitante AND c.id_esposa = ea.id_solicitante
        AND eo.nombre = nomEO_ AND eo.apellido = apeEO_
        AND ea.nombre = nomEA_ AND ea.apellido = apeEA_;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_id_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_id_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_id_solicitante`(id_soli_ BIGINT(20), tipo_ VARCHAR(50))
BEGIN
  SELECT nombre, apellido FROM solicitante WHERE id_solicitante = id_soli_ AND tipo = tipo_;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_matrimonio`(id_esposo long, id_esposa long)
BEGIN

  SELECT * FROM casar c WHERE c.id_esposo= id_esposo AND c.id_esposa= id_esposa;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_ministro`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_ministro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ministro`()
BEGIN

  SELECT * FROM Ministro;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_ministro_principal`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_ministro_principal`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_ministro_principal`()
BEGIN

  SELECT * FROM Ministro WHERE es_parroco_principal=1;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_por_id_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_por_id_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_por_id_usuario`(id_u_ BIGINT(20))
BEGIN
  SELECT * FROM usuario WHERE id_usuario = id_u_;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_solicitante`(nom VARCHAR(50), ape VARCHAR(50), tipo_ VARCHAR(50))
BEGIN
   DECLARE varnom VARCHAR(50);
   DECLARE varape VARCHAR(50);
   SET varnom= CONCAT(nom,'%');
   SET varnom= CONCAT('%',varnom);
   SET varape= CONCAT(ape,'%');

   SELECT * FROM solicitante WHERE (nombre LIKE varnom AND apellido LIKE varape AND tipo = tipo_);

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_buscar_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_usuario`(nom VARCHAR(50), ape VARCHAR(50))
BEGIN
  DECLARE varnom VARCHAR(50);
   DECLARE varape VARCHAR(50);
   SET varnom= CONCAT(nom,'%');
   SET varnom= CONCAT('%',varnom);
   SET varape= CONCAT(ape,'%');

   SELECT * FROM usuario WHERE (nombre LIKE varnom AND apellido LIKE varape AND estado = 1);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_consultar_acta_confirmacion`
--

DROP PROCEDURE IF EXISTS `ssp_consultar_acta_confirmacion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_acta_confirmacion`(id_confirmado_ BIGINT(20))
BEGIN

  SELECT
  c.fecha_confirmacion,c.lugar_confirmacion,c.observacion,c.estado,c.id_padre,
  c.id_madre,c.id_padrino,c.id_madrina,
  c.id_registro_eclesiastico,
  s.nombre, s.apellido,s.sexo, s.fecha_nacimiento, pa.nombre,
   pa.apellido, ma.nombre, ma.apellido, padri.nombre, padri.apellido, madri.nombre,
  madri.apellido, m.dignidad, m.nombre, m.apellido,rcl.num_sacramento, rcl.num_libro,
   rcl.folio_libro, rcl.anio_libro, c.id_confirmacion
  FROM confirmar c, solicitante s, registroeclesiastico rcl, ministro m, solicitante pa, solicitante ma, solicitante padri, solicitante madri
  WHERE c.id_confirmado=id_confirmado_ AND c.id_confirmado=s.id_solicitante
        AND c.id_padre=pa.id_solicitante AND c.id_madre=ma.id_solicitante
        AND c.id_padrino=padri.id_solicitante AND c.id_madrina=madri.id_solicitante
        AND c.id_ministro=m.id_ministro AND c.id_registro_eclesiastico= rcl.id_registro_eclesiastico;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_consultar_acta_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_consultar_acta_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_acta_matrimonio`(id_matrimonio_ VARCHAR(20))
BEGIN

   SELECT c.fecha_matrimonio, c.lugar_matrimonio, c.observacion, c.estado,
          c.id_matrimonio,c.id_esposo, c.id_esposa, c.id_padre_esposo, c.id_madre_esposo,
          c.id_padre_esposa, c.id_madre_esposa, c.id_padrino, c.id_madrina,
          c.id_registro_civil, c.id_registro_eclesiastico,
          esposo.nombre, esposo.apellido,
          esposa.nombre, esposa.apellido,
          madrina.nombre, madrina.apellido, padrino.nombre, padrino.apellido,
          minis.dignidad, minis.nombre, minis.apellido,
          rc.lugar_inscripcion, rc.anio, rc.tomo,rc.folio,rc.acta,
          rcl.num_sacramento, rcl.num_libro, rcl.folio_libro, rcl.anio_libro,
          padre_esposo.nombre, padre_esposo.apellido, madre_esposo.nombre,
          madre_esposo.apellido, padre_esposa.nombre,   padre_esposa.apellido,
          madre_esposa.nombre,madre_esposa.apellido,
          rc.fecha_inscripcion

   FROM casar c, solicitante esposo, solicitante esposa, solicitante padre_esposo, solicitante madre_esposo,
        solicitante padre_esposa, solicitante madre_esposa, solicitante padrino, solicitante madrina,
        ministro minis, registrocivil rc, registroeclesiastico rcl
   WHERE c.id_matrimonio = id_matrimonio_ AND c.id_esposo=esposo.id_solicitante AND c.id_esposa=esposa.id_solicitante AND c.id_padre_esposo=padre_esposo.id_solicitante AND c.id_madre_esposo=madre_esposo.id_solicitante
         AND c.id_padre_esposa=padre_esposa.id_solicitante AND c.id_madre_esposa=madre_esposa.id_solicitante AND c.id_padrino= padrino.id_solicitante AND c.id_madrina= madrina.id_solicitante AND c.id_ministro= minis.id_ministro
         AND c.id_registro_civil= rc.id_registro_civil AND c.id_registro_eclesiastico= rcl.id_registro_eclesiastico;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_consultar_descripcion`
--

DROP PROCEDURE IF EXISTS `ssp_consultar_descripcion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_descripcion`(nombre VARCHAR(50))
BEGIN
  DECLARE varnom VARCHAR(50);
  SET varnom= CONCAT(nombre,'%');

  SELECT * FROM descripcion WHERE descripcion LIKE varnom;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_consultar_registro`
--

DROP PROCEDURE IF EXISTS `ssp_consultar_registro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consultar_registro`(fecha_inicio DATE, fecha_fin DATE)
BEGIN

  SELECT r.tipo, r.descripcion, r.valor
  FROM registro r
  WHERE r.fecha BETWEEN fecha_inicio AND fecha_fin
  ORDER BY tipo;
--   GROUP BY r.tipo;

 /* SELECT r.descripcion, SUM(r.valor), r.tipo
  FROM registro r
  WHERE r.fecha BETWEEN fecha_inicio AND fecha_fin
  AND r.descripcion IN ( SELECT descripcion FROM registro WHERE fecha BETWEEN fecha_inicio AND fecha_fin)
  GROUP BY r.tipo;*/

  /*SELECT descripcion,tipo
  FROM registro
  WHERE tipo IN (SELECT tipo
                FROM registro
                WHERE fecha BETWEEN fecha_inicio AND fecha_fin
                ORDER BY tipo)
  ORDER BY tipo;
*/
/*  SELECT descripcion, SUM(valor), tipo
  FROM registro
  WHERE  fecha BETWEEN fecha_inicio AND fecha_fin
          AND descripcion IN (SELECT descripcion
                         FROM registro
                         WHERE fecha BETWEEN fecha_inicio AND fecha_fin)
          AND tipo IN (SELECT tipo
                       FROM registro
                       WHERE fecha BETWEEN fecha_inicio AND fecha_fin
                       ORDER BY tipo)
  GROUP BY tipo
  ORDER BY tipo;*/


END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_consulta_registro_anual`
--

DROP PROCEDURE IF EXISTS `ssp_consulta_registro_anual`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_consulta_registro_anual`(fecha1 DATE, fecha2 DATE)
BEGIN
  DECLARE anio_inicio BIGINT(20);
  DECLARE mes_inicio BIGINT(20);
  DECLARE anio_fin BIGINT(20);
  DECLARE mes_fin BIGINT(20);

  SET AUTOCOMMIT = 0;

  CALL ssp_anio_mes_fecha(fecha1, anio_inicio, mes_inicio);
  CALL ssp_anio_mes_fecha(fecha2, anio_fin, mes_fin);

  SELECT d.descripcion, r.valor, r.tipo
  FROM registro r, descripcion d, registrodescripcion rd
  WHERE rd.id_registro = r.id_registro AND rd.id_descripcion = d.id_descripcion
        AND MONTH(r.fecha) > (mes_inicio-1) AND MONTH(r.fecha) < (mes_fin+1);
        


  
  


END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_es_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_es_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_es_usuario`( nombre_ VARCHAR(50), apellido_ VARCHAR(50), usuario_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET  salida= (SELECT nombre FROM Usuario WHERE nombre=nombre_ AND apellido=apellido_ AND usuario=usuario_);
  SELECT salida;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_descripcion`
--

DROP PROCEDURE IF EXISTS `ssp_existe_descripcion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_descripcion`(nombre VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  DECLARE name VARCHAR(50);

  SET name= (SELECT nombre FROM descripcion WHERE descripcion=nombre);

  IF(name=nombre) THEN
    SET mensaje ='existe';
  ELSE
    SET mensaje ='no existe';
  END IF;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_ministro`
--

DROP PROCEDURE IF EXISTS `ssp_existe_ministro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_registro`
--

DROP PROCEDURE IF EXISTS `ssp_existe_registro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(50), descripcion_ VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT descripcion FROM registro WHERE (fecha=fecha_ AND valor=valor_ AND tipo=tipo_ AND descripcion=descripcion_));
  SELECT salida;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_registro_civil`
--

DROP PROCEDURE IF EXISTS `ssp_existe_registro_civil`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_registro_eclesiastico`
--

DROP PROCEDURE IF EXISTS `ssp_existe_registro_eclesiastico`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_existe_registro_eclesiastico`( nsacramento VARCHAR(50), anio VARCHAR(50), OUT salida VARCHAR(50))
BEGIN

  SET salida= (SELECT num_sacramento FROM registroeclesiastico WHERE (num_sacramento=nsacramento AND anio_libro=anio));
  SELECT salida;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_existe_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_existe_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_descripcion`
--

DROP PROCEDURE IF EXISTS `ssp_id_descripcion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_descripcion`(descrip VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  SET mensaje = (SELECT id_descripcion FROM descripcion WHERE descripcion = descrip);
  SELECT mensaje;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_ministro`
--

DROP PROCEDURE IF EXISTS `ssp_id_ministro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_ministro`(nombreP_ VARCHAR(50), apellidoP_ VARCHAR(50), OUT id_minis_ BIGINT(20))
BEGIN

  SET id_minis_= (SELECT id_ministro FROM ministro WHERE nombre= nombreP_ AND apellido= apellidoP_);
  SELECT id_minis_;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_registro`
--

DROP PROCEDURE IF EXISTS `ssp_id_registro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro`(fecha_ DATE, valor_ DOUBLE, tipo_ VARCHAR(20), id_contador_ BIGINT, OUT mensaje VARCHAR(50))
BEGIN
  SET mensaje = (SELECT id_registro FROM registro WHERE fecha = fecha_ AND valor = valor_ AND tipo = tipo_ AND id_contador = id_contador_);
  SELECT mensaje;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_registro_civil`
--

DROP PROCEDURE IF EXISTS `ssp_id_registro_civil`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_civil`(acta_ VARCHAR(50), OUT id_regis_ BIGINT(20))
BEGIN

  SET id_regis_ = (SELECT id_registro_civil FROM registrocivil WHERE acta= acta_);
  SELECT id_regis_;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_registro_eclesiastico`
--

DROP PROCEDURE IF EXISTS `ssp_id_registro_eclesiastico`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_registro_eclesiastico`(num_sacramento_ VARCHAR(50), acta_ BOOLEAN, OUT id_registro_ecles_ BIGINT(20))
BEGIN

  SET id_registro_ecles_ = (SELECT id_registro_eclesiastico FROM registroeclesiastico WHERE num_sacramento= num_sacramento_ AND es_acta= acta_);
  SELECT id_registro_ecles_;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_id_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_id_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_id_solicitante`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), tipo_ VARCHAR(50), OUT id_soli_ BIGINT(20))
BEGIN

  SET id_soli_= (SELECT id_solicitante FROM solicitante WHERE nombre=nombre_ AND apellido= apellido_ AND tipo=tipo_);
  

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_acta_bautizo`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_acta_bautizo`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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


  
  CALL ssp_existe_solicitante(nomB_, apeB_, 'bautizado', salida);
  IF(salida = nomB_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE

    
    CALL ssp_existe_registro_civil (acta_, salida);
    SET existe = 'Ya existe registro';
    IF(salida = existe) THEN
      SET mensaje = existe;
    ELSE

      
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE

        START TRANSACTION;
     
        
        CALL ssp_ingresar_solicitante(nomB_, apeB_, '', null, '', '', sexoB_, null, null, lugar_nacimiento_, fecha_nacimiento_, 'bautizado', salida);

        
        CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', '', lugar_inscripcion_ , salida);

        
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, lugar_bautizo_, fecha_bautizo_, '', '', 1, salida);

        
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', 1, null, null, '', '', 'padre', salida);

        
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', 0, null, null, '', '', 'madre', salida);

        

        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);

        
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
        
        CALL ssp_id_solicitante(nomB_, apeB_, 'bautizado', id_bautizado);
        
        CALL ssp_id_solicitante(nomP_, apeP_, 'padre', id_padre);
        
        CALL ssp_id_solicitante(nomM_, apeM_, 'madre', id_madre);
        
        CALL ssp_id_solicitante(nomPa_, apePa_, 'padrino', id_padrino);
        
        CALL ssp_id_solicitante(nomMa_, apeMa_, 'madrina', id_madrina);
        
        CALL ssp_id_registro_civil(acta_, id_registro_civil);
        
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_acta_comunion`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_acta_comunion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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

  
  CALL ssp_existe_solicitante(nomCom_, apeCom_, 'comulgado', salida);
  IF(salida = nomCom_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
      
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
        START TRANSACTION;

        
        CALL ssp_ingresar_solicitante(nomCom_, apeCom_, direccion_, edadCom_, '', '', sexoCom_, null, null, '', fecha_nacimiento_, 'comulgado', salida);
        
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', 1, null, null, '', '', 'padre', salida);
        
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', 0, null, null, '', '', 'madre', salida);
        
        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);
        
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
        
        
        
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        
        CALL ssp_id_solicitante(nomCom_, apeCom_, 'comulgado', id_comulgado);
        
        CALL ssp_id_solicitante(nomP_, apeP_, 'padre', id_padre);
        
        CALL ssp_id_solicitante(nomM_, apeM_, 'madre', id_madre);
        
        CALL ssp_id_solicitante(nomPa_, apePa_, 'padrino', id_padrino);
        
        CALL ssp_id_solicitante(nomMa_, apeMa_, 'madrina', id_madrina);
        
        
        
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_acta_confirmacion`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_acta_confirmacion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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


  
  CALL ssp_existe_solicitante(nomCon_, apeCon_, 'confirmado', salida);
  IF(salida = nomCon_) THEN
      SET mensaje = 'Ya existe solicitante';
  ELSE
      
      CALL ssp_existe_registro_eclesiastico( num_sacramento_, anio_libro_ , salida);
      SET existe = 'Ya se encuentra registrado en la Base';
      IF(salida = existe) THEN
        SET mensaje = existe;
      ELSE
        START TRANSACTION;
     
        
        CALL ssp_ingresar_solicitante(nomCon_, apeCon_, '', null, '', '', sexoCon_, null, null, '', fecha_nacimiento_, 'confirmado', salida);
        
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        
        CALL ssp_ingresar_solicitante(nomP_, apeP_, '', null, '', '', 1, null, null, '', '', 'padre', salida);
        
        CALL ssp_ingresar_solicitante(nomM_, apeM_, '', null, '', '', 0, null, null, '', '', 'madre', salida);
        
        CALL ssp_ingresar_solicitante(nomPa_, apePa_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);
        
        CALL ssp_ingresar_solicitante(nomMa_, apeMa_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
        
        
        
        CALL ssp_insertar_registro_eclesiastico(num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1, salida);
        
        CALL ssp_id_solicitante(nomCon_, apeCon_, 'confirmado', id_confirmado);
        
        CALL ssp_id_solicitante(nomP_, apeP_, 'padre', id_padre);
        
        CALL ssp_id_solicitante(nomM_, apeM_, 'madre', id_madre);
        
        CALL ssp_id_solicitante(nomPa_, apePa_, 'padrino', id_padrino);
        
        CALL ssp_id_solicitante(nomMa_, apeMa_, 'madrina', id_madrina);
        
        
        
        CALL ssp_id_registro_eclesiastico(num_sacramento_, 1, id_registro_eclesiastico);

        INSERT INTO confirmar(fecha_confirmacion, lugar_confirmacion, observacion, estado, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro, id_usuario, id_registro_eclesiastico)
	      VALUES (fecha_confirmacion_, lugar_confirmacion_, observacion_, 1, id_confirmado, id_padre, id_madre, id_padrino, id_madrina, id_ministro_, id_usuario_, id_registro_eclesiastico);
       

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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_acta_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_acta_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
  
  DECLARE id_registro_eclesiastico BIGINT(20);

  SET AUTOCOMMIT= 0;

  
  CALL ssp_existe_solicitante(nomEsposo_, apellEsposo_, 'esposo', salida);
  IF(salida=nomEsposo_)THEN
    SET mensaje='Ya se encuentra esa persona casada';
  ELSE
    CALL ssp_existe_solicitante(nomEsposa_, apellEsposa_, 'esposa', salida);
    IF(salida=nomEsposa_)THEN
      SET mensaje='Ya se encuentra esa persona casada';
    ELSE
      
      CALL ssp_existe_registro_civil (acta_, salida);
      SET existe = 'Ya existe registro';
      IF(salida=existe)THEN
        SET mensaje=existe;
      ELSE
        
        CALL ssp_existe_registro_eclesiastico( numSa_, anioL_ , salida);
        SET existe = 'Ya se encuentra registrado en la Base';
        IF(salida = existe) THEN
          SET mensaje = existe;
        ELSE
          
          CALL ssp_ingresar_solicitante(nomEsposo_, apellEsposo_, '', null, '', '', 1, null, null, '', '', 'esposo', salida);
          
          CALL ssp_ingresar_solicitante(nomEsposa_, apellEsposa_, '', null, '', '', 0, null, null, '', '', 'esposa', salida);
          
          CALL ssp_ingresar_solicitante(nomPaEsposo_, apellPaEsposo_, '', null, '', 1, '', null, null, '', '', 'padre_novio', salida);
          
          CALL ssp_ingresar_solicitante(nomMaEsposo_, apellMaEsposo_, '', null, '', 0, '', null, null, '', '', 'madre_novio', salida);
          
          CALL ssp_ingresar_solicitante(nomPaEsposa_, apellPaEsposa_, '', null, '', 1, '', null, null, '', '', 'padre_novia', salida);
          
          CALL ssp_ingresar_solicitante(nomMaEsposa_, apellMaEsposa_, '', null, '', 0, '', null, null, '', '', 'madre_novia', salida);
          
          CALL ssp_ingresar_solicitante(nomPadri_, apellPadri_, '', null, '', '', 1, null, null, '', '', 'padrino', salida);
          
          CALL ssp_ingresar_solicitante(nomMadri_, apellMadri_, '', null, '', '', 0, null, null, '', '', 'madrina', salida);
          
          
          
          CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', '', lugar_, salida);
          
          CALL ssp_insertar_registro_eclesiastico(numSa_, numL_, folioL_, anioL_, '', '', '', '', 1, salida);

          
          CALL ssp_id_solicitante(nomEsposo_, apellEsposo_, 'esposo', id_esposo);
          
          CALL ssp_id_solicitante(nomEsposa_, apellEsposa_, 'esposa', id_esposa);
          
          CALL ssp_id_solicitante(nomPaEsposo_, apellPaEsposo_, 'padre_novio', id_padre_esposo);
          
          CALL ssp_id_solicitante(nomMaEsposo_, apellMaEsposo_, 'madre_novio', id_madre_esposo);
          
          CALL ssp_id_solicitante(nomPaEsposa_, apellPaEsposa_, 'padre_novia', id_padre_esposa);
          
          CALL ssp_id_solicitante(nomMaEsposa_, apellMaEsposa_, 'madre_novia', id_madre_esposa);
          
          CALL ssp_id_solicitante(nomPadri_, apellPadri_, 'padrino', id_padrino);
          
          CALL ssp_id_solicitante(nomMadri_, apellMadri_, 'madrina', id_madrina);
          
          CALL ssp_id_registro_civil(acta_, id_registro_civil);
          
          
          
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_ministro`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_ministro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_ministro`(nombre_ VARCHAR(50), apellido_ VARCHAR(50), dignidad_ VARCHAR(50), es_parroco_ BOOLEAN, es_parroco_principal_ BOOLEAN, OUT mensaje VARCHAR(10))
BEGIN
  DECLARE salida VARCHAR(10);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_ministro(nombre_, apellido_, salida);

  IF(salida = nombre_) THEN
      SET mensaje = 'Ya existe ministro';
  ELSE
    START TRANSACTION;
    
    INSERT INTO Ministro(nombre, apellido, dignidad, esParroco, esParrocoPrincipal)
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_registro_civil`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_registro_civil`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_ingresar_registro_civil`(
  tomo_ VARCHAR(50), anio_ VARCHAR(50), folio_ VARCHAR(50), acta_ VARCHAR(50), estado_civil_ VARCHAR(50),
  fecha_inscripcion_ DATE, lugar_inscripcion_ VARCHAR(50), OUT mensaje VARCHAR(50))
BEGIN
  DECLARE salida VARCHAR(50);
  SET AUTOCOMMIT= 0;
  CALL ssp_existe_registro_civil(acta_, salida);

  IF(salida = acta_) THEN
      SET mensaje = 'Ya existe registro';
  ELSE
    START TRANSACTION;
    INSERT INTO RegistroCivil(tomo, anio, folio, acta, estado_civil, fecha_inscripcion, lugar_inscripcion)
	  VALUES (tomo_, anio_, folio_, acta_, estado_civil_, fecha_inscripcion_, lugar_inscripcion_);

    IF(@error<>0) THEN
      SET mensaje = 'Error en Base de Datos';
      ROLLBACK;
    ELSE
      SET mensaje = 'Ingreso exitoso';
      COMMIT;
    END IF;
  END IF;

  SELECT mensaje;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_ingresar_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_ingresar_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_insertar_descripcion`
--

DROP PROCEDURE IF EXISTS `ssp_insertar_descripcion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_descripcion`(nombre VARCHAR(50))
BEGIN

  INSERT INTO descripcion(descripcion) VALUES(nombre);

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_insertar_registro`
--

DROP PROCEDURE IF EXISTS `ssp_insertar_registro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_insertar_registro_eclesiastico`
--

DROP PROCEDURE IF EXISTS `ssp_insertar_registro_eclesiastico`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_insertar_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_insertar_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_insertar_usuario`(
  nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), tipo VARCHAR(50), cargo VARCHAR(50),
  telefono1 VARCHAR(50), telefono2 VARCHAR(50), usuario VARCHAR(50), contrasenia VARCHAR(50), estado BOOLEAN,
  id_administrador BIGINT, OUT mensaje VARCHAR(50))
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

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_acta_confirmacion`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_acta_confirmacion`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
     
  CALL ssp_modificar_solicitante(id_confir , nomCon_ , apeCon_, '', 0, '', sexoCon_, 1, '', fecha_nacimiento_,'confirmado');
  CALL ssp_modificar_solicitante(id_padre_ , nomP_ , apeP_, '', 0, '', 1, 1, '', '','padre');
  CALL ssp_modificar_solicitante(id_madre_ , nomM_ , apeM_, '', 0, '', 0, 1, '', '','madre');
  CALL ssp_modificar_solicitante(id_padri_ , nomPa_ , apePa_, '', 0, '', 1, 1, '', '','padrino');
  CALL ssp_modificar_solicitante(id_madri_ , nomMa_ , apeMa_, '', 0, '', 0, 1, '', '','madrina');

  CALL ssp_modificar_registro_eclesiastico(id_registr_ecle_,num_sacramento_, num_libro_, folio_libro_, anio_libro_, '', '', '', '', 1);


        UPDATE confirmar
        SET fecha_confirmacion=fecha_confirmacion_, lugar_confirmacion=lugar_confirmacion_, observacion=observacion_, estado=1, id_ministro = id_ministro_
         WHERE id_confirmacion=id_acta_confir;
       

        IF(@error<>0) THEN
          SET mensaje = 'Error en Base de Datos';
          ROLLBACK;
        ELSE
          SET mensaje = 'Modificacion exitoso';
          COMMIT;
        END IF;

 SELECT mensaje;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_acta_matrimonio`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_acta_matrimonio`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_registro_civil`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_registro_civil`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_registro_civil`(id_rc BIGINT(10), tomo VARCHAR(20), anio VARCHAR(20), folio VARCHAR(20), acta VARCHAR(20), esta_civil VARCHAR(20), fecha_inscripcion DATE, lugar_inscripcion VARCHAR(20))
BEGIN

  UPDATE registrocivil rc
  SET  rc.tomo= tomo, rc.anio= anio, rc.folio= folio, rc.acta=acta, rc.estado_civil=estado_civil, rc.fecha_inscripcion=fecha_inscripcion, rc.lugar_inscripcion=lugar_inscripcion
  WHERE rc.id_registro_civil= id_rc;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_registro_eclesiastico`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_registro_eclesiastico`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_registro_eclesiastico`(id_registr BIGINT(20),num_sacramento_ VARCHAR(20), num_libro_ VARCHAR(20), folio_libro_ VARCHAR(20), anio_libro_ VARCHAR(20), lugar_bautizo_ VARCHAR(20), fecha_bautizo_ DATE, iglesia_bautizo_ VARCHAR(20), arquidiocesis_ VARCHAR(20), es_acta_ BOOLEAN)
BEGIN

  UPDATE registroeclesiastico re
  SET  re.num_sacramento=num_sacramento_, re.num_libro=num_libro_, re.folio_libro=folio_libro, re.anio_libro=anio_libro_, re.lugar_bautizo=lugar_bautizo_, re.fecha_bautizo=fecha_bautizo_, re.iglesia_bautizo=iglesia_bautizo_, re.arquidiocesis=arquidiocesis_, re.es_acta=es_acta_
  WHERE re.id_registro_eclesiastico=id_registr;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_solicitante`(id_soli BIGINT(10), nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), edad INTEGER, telefono VARCHAR(10), sexo BOOLEAN, legitimo BOOLEAN , lugar_nacimiento VARCHAR(50), fecha_naci VARCHAR(50) ,tipo VARCHAR(20))
BEGIN

  UPDATE solicitante s
  SET  s.nombre =nombre , s.apellido=apellido, s.direccion=direccion, s.edad=edad, s.telefono= telefono, s.sexo=sexo, s.legitimo=legitimo, s.lugar_nacimiento=lugar_nacimiento, s.fecha_nacimiento=fecha_naci,s.tipo=tipo
  WHERE (s.id_solicitante = id_soli AND s.tipo=tipo);

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_modificar_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_modificar_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_modificar_usuario`(id_usuario BIGINT(10), nombre VARCHAR(50), apellido VARCHAR(50), direccion VARCHAR(50), tipo VARCHAR(50), cargo VARCHAR(50), telefono1 VARCHAR(50), telefono2 VARCHAR(50), usuario VARCHAR(50), contrasenia VARCHAR(50), estado BOOLEAN)
BEGIN
  UPDATE usuario u
  SET  u.nombre =nombre , u.apellido=apellido, u.direccion=direccion, u.tipo=tipo, u.cargo=cargo, u.telefono1=telefono1, u.telefono2=telefono2, u.usuario=usuario, u.contrasenia=contrasenia, u.estado=estado
  WHERE (u.id_usuario = id_usuario);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_registro_valor_total`
--

DROP PROCEDURE IF EXISTS `ssp_registro_valor_total`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_registro_valor_total`(descrip_ VARCHAR(20), tipo_ VARCHAR(20))
BEGIN

    SELECT fecha, descripcion, SUM(valor), tipo
    FROM registro
    WHERE descripcion= descrip_ AND tipo= tipo_
    GROUP BY fecha;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `ssp_tipo_usuario`
--

DROP PROCEDURE IF EXISTS `ssp_tipo_usuario`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_tipo_usuario`(usuario_ VARCHAR(50), contrasenia_ VARCHAR(50),tipo_ VARCHAR(50))
BEGIN

  SELECT * FROM usuario WHERE (usuario=usuario_ AND contrasenia=contrasenia_ AND tipo=tipo_);

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
