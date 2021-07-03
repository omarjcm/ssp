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
 (1,'',1,1,2,3,4,5,1,1,0,1),
 (2,'',1,6,7,8,4,9,2,1,0,2),
 (3,'',1,10,11,12,4,13,3,1,0,3),
 (4,'',1,14,15,16,4,17,4,1,0,4),
 (5,'',1,18,19,20,4,21,5,1,0,5),
 (6,'',1,22,15,16,4,23,6,1,0,6),
 (7,'',1,24,25,26,4,27,7,1,0,7),
 (8,'',1,28,29,30,4,31,8,1,0,8),
 (9,'',1,32,19,20,4,33,9,1,0,9),
 (10,'',1,34,35,36,4,37,10,1,0,10),
 (11,'',1,38,39,40,4,41,11,1,0,11),
 (12,'',1,42,43,44,4,45,12,1,0,12),
 (13,'',1,46,43,44,4,47,8,1,0,13),
 (14,'',1,48,49,50,4,51,13,1,0,14),
 (15,'',1,52,53,54,4,55,14,1,0,15),
 (16,'',1,56,57,58,4,59,15,1,0,16),
 (17,'',1,60,57,58,4,61,16,1,0,17),
 (18,'',1,62,63,64,4,65,17,1,0,18),
 (19,'',1,66,67,68,4,69,18,1,0,19),
 (20,'',1,70,71,72,4,73,19,1,0,20),
 (21,'',1,74,71,75,4,73,20,1,0,21),
 (22,'',1,76,77,78,4,79,21,1,0,22),
 (23,'',1,80,81,82,4,83,22,1,0,23),
 (24,'',1,84,81,82,4,85,23,1,0,24),
 (25,'',1,86,87,88,4,89,24,1,0,25);
INSERT INTO `bautizar` (`id_bautizo`,`observacion`,`estado`,`id_bautizado`,`id_padre`,`id_madre`,`id_padrino`,`id_madrina`,`id_registro_civil`,`id_ministro`,`id_usuario`,`id_registro_eclesiastico`) VALUES 
 (26,'',1,90,91,92,4,93,25,1,0,26),
 (27,'',1,94,95,96,4,97,26,1,0,27),
 (28,'',1,98,99,100,4,101,27,1,0,28),
 (29,'',1,102,99,100,4,103,28,1,0,29),
 (30,'',1,104,105,106,4,97,29,1,0,30),
 (31,'',1,107,108,109,4,110,30,1,0,31),
 (32,'',1,111,112,113,4,114,31,1,0,32),
 (33,'',1,115,116,117,4,118,32,1,0,33),
 (34,'',1,119,120,121,4,122,33,1,0,34),
 (35,'',1,123,124,125,4,126,34,1,0,35),
 (36,'',1,127,128,129,4,130,35,1,0,36),
 (37,'',1,131,132,133,4,134,36,1,0,37),
 (38,'',1,135,136,137,138,139,37,3,0,38),
 (39,'',1,140,43,141,142,143,38,3,0,39),
 (40,'',1,144,145,146,147,148,39,3,0,40);
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
/*!40000 ALTER TABLE `confirmar` ENABLE KEYS */;


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
 (3,'Dionisio','Zuluaga Arteche','P.',0,0);
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
  `descripcion` varchar(100) NOT NULL,
  `id_contador` bigint(20) NOT NULL,
  PRIMARY KEY  (`id_registro`),
  KEY `id_contador` (`id_contador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registro`
--

/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
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
 (1,'1','','81','81','','0000-00-00','Balao - Guayas'),
 (2,'5T','','357','2678','','0000-00-00','Guayaquil - Guayas'),
 (3,'26','','208','13098','','0000-00-00','Guayaquil - Guayas'),
 (4,'','','25','19662','','0000-00-00','Guayaquil - Guayas'),
 (5,'87','','195','8989','','0000-00-00','Guayaquil - Guayas'),
 (6,'7','','397','5598','','0000-00-00','Guayaquil - Guayas'),
 (7,'2','','369','769','','0000-00-00','Guayaquil - Guayas'),
 (8,'IX','','41','','','0000-00-00','Cuenca - Azogues'),
 (9,'7T','','123','3690','','0000-00-00','Guayaquil - Guayas'),
 (10,'6','','298','4595','','0000-00-00','Guayaquil - Guayas'),
 (11,'39','','174','15855','','0000-00-00','Guayaquil - Guayas'),
 (12,'12T','','45','8045','','0000-00-00','Guayaquil - Guayas'),
 (13,'30','','190','14059','','0000-00-00','Guayaquil - Guayas'),
 (14,'5°','','35','52','','0000-00-00','Daule - Guayas'),
 (15,'7,t','','146','3916','','0000-00-00','Guayaquil - Guayas');
INSERT INTO `registrocivil` (`id_registro_civil`,`tomo`,`anio`,`folio`,`acta`,`estado_civil`,`fecha_inscripcion`,`lugar_inscripcion`) VALUES 
 (16,' 7,t','','146','3915','','0000-00-00','Guayaquil - Guayas'),
 (17,'40','','177','16058','','0000-00-00','Guayaquil - Guayas'),
 (18,'3','','97','214','','0000-00-00','Barreiro - Los Ríos'),
 (19,'19','','53','10.353','','0000-00-00','Guayaquil - Guayas'),
 (20,'14','','299','10997','','0000-00-00','Guayaquil - Guayas'),
 (21,'2','','112','318','','0000-00-00','Quinindé - Esmeraldas'),
 (22,'1','','327','7854','','0000-00-00','Quinindé - Esmeraldas'),
 (23,'16','','148','9948','','0000-00-00','Guayaquil - Guayas'),
 (24,'11','','246','8247','','0000-00-00','Guayaquil - Guayas'),
 (25,'5','','103','3405','','0000-00-00','Guayaquil - Guayas'),
 (26,'9','','141','919','','0000-00-00','Eloy Alfaro, Durán - Guayas'),
 (27,'3','','330','2260','','0000-00-00','Guayaquil - Guayas'),
 (28,'9','','210','6420','','0000-00-00','Guayaquil - Guayas'),
 (29,'45','','27','16908','','0000-00-00','Guayaquil - Guayas');
INSERT INTO `registrocivil` (`id_registro_civil`,`tomo`,`anio`,`folio`,`acta`,`estado_civil`,`fecha_inscripcion`,`lugar_inscripcion`) VALUES 
 (30,'34','','32','14713','','0000-00-00','Guayaquil - Guayas'),
 (31,'2','','39','66','','0000-00-00','Febres Cordero - Los Ríos'),
 (32,'1','','83','83','','0000-00-00','Guayaquil - Guayas'),
 (33,'18','','353','10949','','0000-00-00','Guayaquil - Guayas'),
 (34,'6','','37','4077','','0000-00-00','Guayaquil - Guayas'),
 (35,'2','','59','256','','0000-00-00','Baba - Los Ríos'),
 (36,'1','','2','3','','0000-00-00','Tendales - Machala'),
 (37,'29','1995','8','8564','','0000-00-00','Guayaquil - Guayas'),
 (38,'20','1998','153','7423','','0000-00-00','Guayaquil - Guayas'),
 (39,'3-B','1999','383','1183','','0000-00-00','Guayaquil - Guayas');
/*!40000 ALTER TABLE `registrocivil` ENABLE KEYS */;


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
 (1,'1/1971','I','1','1971','Parroquia Cristo Rey','1971-10-02','','',1),
 (2,'2/1971','I','1','1971','Escuela San Judas Tadeo','1971-10-31','','',1),
 (3,'3/1971','I','1','1971','Parroquia Cristo Rey','1971-11-18','','',1),
 (4,'4/1971','I','1','1971','Parroquia Cristo Rey','1971-10-21','','',1),
 (5,'5/1971','I','2','1971','Parroquia Cristo Rey','1971-11-21','','',1),
 (6,'6/1971','I','2','1971','Parroquia Cristo Rey','1971-11-21','','',1),
 (7,'7/1971','I','2','1971','Parroquia Cristo Rey','1971-11-21','','',1),
 (8,'8/1971','I','2','1971','Parroquia Cristo Rey','1971-11-22','','',1),
 (9,'9/1971','I','3','1971','Parroquia Cristo Rey','1971-11-28','','',1),
 (10,'10/1971','I','3','1971','Parroquia Cristo Rey','1971-11-28','','',1),
 (11,'11/1971','I','3','1971','Parroquia Cristo Rey','1971-12-07','','',1),
 (12,'12/1971','I','3','1971','Parroquia Cristo Rey','1971-12-09','','',1);
INSERT INTO `registroeclesiastico` (`id_registro_eclesiastico`,`num_sacramento`,`num_libro`,`folio_libro`,`anio_libro`,`lugar_bautizo`,`fecha_bautizo`,`iglesia_bautizo`,`arquidiocesis`,`es_acta`) VALUES 
 (13,'13/1971','I','4','1971','Parroquia Cristo Rey','1971-12-09','','',1),
 (14,'14/1971','I','4','1971','Parroquia Cristo Rey','1971-12-12','','',1),
 (15,'15/1971','I','4','1971','Parroquia Cristo Rey','1971-12-17','','',1),
 (16,'16/1971','I','4','1971','Parroquia Cristo Rey','1971-12-18','','',1),
 (17,'17/1971','I','5','1971','Parroquia Cristo Rey','1971-12-18','','',1),
 (18,'18/1971','I','5','1971','Parroquia Cristo Rey','1971-12-18','','',1),
 (19,'19/1971','I','5','1971','Parroquia Cristo Rey','1971-12-19','','',1),
 (20,'20/1971','I','5','1971','Parroquia Cristo Rey','1971-12-19','','',1),
 (21,'21/1971','I','6','1971','Parroquia Cristo Rey','1971-12-19','','',1),
 (22,'22/1971','I','6','1971','Parroquia Cristo Rey','1971-12-19','','',1),
 (23,'23/1971','I','6','1971','Parroquia Cristo Rey','1971-12-24','','',1),
 (24,'24/1971','I','6','1971','Parroquia Cristo Rey','1971-12-24','','',1);
INSERT INTO `registroeclesiastico` (`id_registro_eclesiastico`,`num_sacramento`,`num_libro`,`folio_libro`,`anio_libro`,`lugar_bautizo`,`fecha_bautizo`,`iglesia_bautizo`,`arquidiocesis`,`es_acta`) VALUES 
 (25,'25/1971','I','7','1971','Parroquia Cristo Rey','1971-12-24','','',1),
 (26,'26/1971','I','7','1971','Parroquia Cristo Rey','1971-12-25','','',1),
 (27,'27/1971','I','7','1971','Parroquia Cristo Rey','1971-12-25','','',1),
 (28,'28/1971','I','7','1971','Parroquia Cristo Rey','1971-12-31','','',1),
 (29,'29/1971','I','8','1971','Parroquia Cristo Rey','1971-12-31','','',1),
 (30,'30/1971','I','8','1971','Parroquia Cristo Rey','1971-12-31','','',1),
 (31,'31/1971','I','8','1971','Parroquia Cristo Rey','1971-12-31','','',1),
 (32,'1/1972','I','8','1972','Parroquia Cristo Rey','1972-01-02','','',1),
 (33,'2/1972','I','9','1972','Parroquia Cristo Rey','1972-01-02','','',1),
 (34,'3/1972','I','9','1972','Parroquia Cristo Rey','1972-01-08','','',1),
 (35,'4/1972','I','9','1972','Parroquia Cristo Rey','1972-01-09','','',1),
 (36,'5/1972','I','9','1972','Parroquia Cristo Rey','1972-01-11','','',1);
INSERT INTO `registroeclesiastico` (`id_registro_eclesiastico`,`num_sacramento`,`num_libro`,`folio_libro`,`anio_libro`,`lugar_bautizo`,`fecha_bautizo`,`iglesia_bautizo`,`arquidiocesis`,`es_acta`) VALUES 
 (37,'6/1972','I','10','1972','Parroquia Cristo Rey','1972-01-14','','',1),
 (38,'1','V','1111','2000','Parroquia Cristo Rey','2000-01-08','','',1),
 (39,'2','V','1111','2000','Parroquia Cristo Rey','2000-01-08','','',1),
 (40,'3','V','1112','2000','Parroquia Cristo Rey','2000-01-08','','',1),
 (41,'1','1','1','1985','Parroquia Nuestra Sra. del Sagrado Corazon','1985-06-19','','',1);
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
 (1,'Liliana Fabiola','Zamora García','',NULL,'','',0,NULL,NULL,'Hda. Colón-Balao - Guayas','1970-03-05','bautizado'),
 (2,'Marcos','Zamora Ruiz','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (3,'Apolonia','Garcia','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (4,'','','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (5,'','','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (6,'Isabel Marina','Alvarez Parra','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1957-06-18','bautizado'),
 (7,'Arturo','Alvarez Campuzano','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (8,'Hipólita Dolores','Parra','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (9,'Aurora','Oneto','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (10,'Mónica Graciela','Peralta Alvarado','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-09-16','bautizado'),
 (11,'Juan Rufino','Peralta Motesdeoca','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (12,'Tránsito','Alvarado Robles de Peralta','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (13,'Maclovia','Peralta','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (14,'Guillermo Vicente','Wong Correa','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1964-11-12','bautizado'),
 (15,'Guillermo Segundo','Wong Pérez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (16,'Clemencia','Correa','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (17,'Egma','Baldeón','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (18,'Sandra Elizabeth','Garotiza Díaz','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1969-03-26','bautizado'),
 (19,'Jorge Elmundo','Garotiza Cedeño','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (20,'Delia Amada','Díaz Pincay','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (21,'Amada','Morán','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (22,'Sandra Raquel','Wong Correa','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1969-05-21','bautizado'),
 (23,'Aurora','de Vásquez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (24,'Eugenio Martín','Tubillo López','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1966-12-20','bautizado'),
 (25,'Martín','Tubillo Gutiérrez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (26,'Laura','López de Tubillo','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (27,'Rosa Julia','Velalcaza de Novoa','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (28,'Julio Iván','Rojas Calle','',NULL,'','',1,NULL,NULL,'\"El Vecino\", Cuenca - Azogues','1971-05-08','bautizado'),
 (29,'Gabriel Dario','Rojas ','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (30,'Angela','de la Cruz Calle','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (31,'Beatriz','de Calle','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (32,'Franklin Darwin','Garotiza Díaz','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1967-01-12','bautizado'),
 (33,'Celia','Villa','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (34,'Christian Barnard','Garcés Barcia','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1970-05-11','bautizado'),
 (35,'Reinaldo Ladislao','Garcés Navarrete','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (36,'Rosa Magdalena','Barcia García','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (37,'Victoría','de Echeverría','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (38,'José Luis','Gómez López','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-11-26','bautizado'),
 (39,'José Luis','Gómez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (40,'Rosa Inés','López','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (41,'María','de Palma','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (42,'Tomás Vicente','González Amores','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1949-12-29','bautizado'),
 (43,'','','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (44,'','','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (45,'Mercedes','de Prado','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (46,'Eva Cristina','Mendoza Martínez','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1951-12-04','bautizado'),
 (47,'Rita','Mena de Toral','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (48,'César Ranulfo','Durazno Paredes','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-10-19','bautizado'),
 (49,'Segundo Elías','Durazno Nacipucha','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (50,'Delia Agustina','Paredes de Durazno','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (51,'Dolores Amelía','de Puma','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (52,'Hilda Sonia','Ruiz Terán','',NULL,'','',0,NULL,NULL,'Santa Lucía, Cantón Daule','1971-03-08','bautizado'),
 (53,'Gustavo','Ruiz','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (54,'Sonia María','Terán Vera','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (55,'María','Mosquera de Chacha','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (56,'María Luis','Franco Flores','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1967-03-23','bautizado'),
 (57,'Alfonso','Franco Faggioni','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (58,'Adela','Flores de Franco','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (59,'Gloria','Franco de Morales','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (60,'María Elena','Franco Flores','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1962-09-03','bautizado'),
 (61,'Leticia','Zambrano','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (62,'Jorge Luis','Montoya Toala','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-11-24','bautizado'),
 (63,'Francisco','Montoya Macías','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (64,'Felícitas','Zoila Toala','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (65,'Gricelda','Ubaldina Ramírez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (66,'Hector Francisco','Quinto Cabanilla','',NULL,'','',1,NULL,NULL,'Babahoyo - Los Ríos','1967-04-29','bautizado'),
 (67,'Flavio','Quinto','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (68,'María','Cabanilla Brunes','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (69,'América','León','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (70,'Luis Gonzalo','Asádobay López','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-06-12','bautizado'),
 (71,'Gonzalo','Asádobay Sabay','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (72,'Elvisa','López Aguiar de Asádobay','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (73,'Rosario','Sánchez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (74,'Olga Beatriz','Asádobay López','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1969-10-14','bautizado'),
 (75,'Elvisa','López Aguilar de Asádobay','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (76,'Ana Lian Cleopatra','Paredes Velasco','',NULL,'','',0,NULL,NULL,'Rocafuerte - Esmeraldas','1958-05-21','bautizado'),
 (77,'Sócrates','Paredes Rodriguez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (78,'Maria Luisa','Velasco Estupiñan','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (79,'Irene Angela','Gonzalez Corbez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (80,'Maria Isabel','Vargas Puchal','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1970-07-18','bautizado'),
 (81,'Segundo José','Vargas Auguicha','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (82,'Transito','Puchal Guiracocha de Vargas','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (83,'María','Cruz de Escalada','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (84,'Maria Cecilia','Vargas Puchal','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-07-25','bautizado'),
 (85,'María Delfina','Huiracocha','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (86,'Alfredo Efraín','Toscano Mendez','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-06-18','bautizado'),
 (87,'Angel','Toscano Buenaños','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (88,'Zoila','Méndez Méndez de Toscano','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (89,'María','Bonilla','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (90,'Fausto Gerson','Mina Ortiz','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-02-18','bautizado'),
 (91,'Flavio Baudilio','Mina Estupiñán','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (92,'Nelly Adina','Ortiz Aragón','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (93,'Francisca','Mina Estupiñán','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (94,'Fidel Giovanny','León Fajardo','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-10-28','bautizado'),
 (95,'Rudelio','León Moreno','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (96,'Clara Celeste','Fajardo Peñafiel','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (97,'Ana','de Sánchez','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (98,'Nancy Enriqueta','Tenesaca Jara','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-02-11','bautizado'),
 (99,'Carlos Roberto','Tenesaca Sánchez','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (100,'Alejandrina','Jara de Tenesaca','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (101,'Colombia','Gavilanes','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (102,'Oswaldo Wilson','Tenesaca Jara','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1968-10-16','bautizado'),
 (103,'Carmen','Carrión','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (104,'Alexandra Marisol','Lindao Lindao','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-12-21','bautizado'),
 (105,'Mario','Lindao Pilay','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (106,'María Cristina','Lindao de Lindao','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (107,'Giovanny Félix','Peñafiel Cedillo','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1971-11-06','bautizado'),
 (108,'Féliz Nicolas','Peñafiel Leybon','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (109,'Inés Victoria','Cedillo Maridueña','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (110,'Aurora','Bernabé de Bernadino','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (111,'Cesar José','Zambrano Navarrete','',NULL,'','',1,NULL,NULL,'Febres Cordero, Babahoyo - Los Ríos','1971-06-09','bautizado');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (112,'José Amalis','Zambrano Omezado','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (113,'Blanca Celeste','Navarrete','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (114,'Judit','Navarrete González','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (115,'Griselda Rocío','Zambrano Romero','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1971-06-12','bautizado'),
 (116,'Medardo','Zambrano Macías','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (117,'Lucia','Romero Bustamante','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (118,'María de Lourdes','Naranjo González','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (119,'Hilda Alejandrina','Farías Gonzalez','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1970-07-30','bautizado'),
 (120,'Antonio Martín','Farías Quijije','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (121,'Valentina Esmeralda','González Ortega','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (122,'Angela','Carillo','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (123,'Blanca Inés','Yupa Nace','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1969-04-24','bautizado'),
 (124,'Juan María','Yupa','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (125,'María','Nace de Yupa','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (126,'Celeste','Palacios de Aroca','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (127,'Ernesto Armando','Sánchez Quintero','',NULL,'','',1,NULL,NULL,'Hda. Sta. Ana, Cantón Baba - Los Ríos','1971-07-01','bautizado'),
 (128,'Galo','Sánchez Cornejo','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (129,'Angela','Quintero','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (130,'Epifania','Bevera','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (131,'Alfredo Anchundia','Castillo Naranjo','',NULL,'','',1,NULL,NULL,'Tendales - Machala','1971-12-06','bautizado');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (132,'Oscar Alfredo','Castillo ovando','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (133,'Martha María','Naranjo Valdivieso','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (134,'Angélica','Barroso Vascones','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (135,'Leonardo Mauricio','Alvarado Salcedo','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1994-10-27','bautizado'),
 (136,'Leonardo','Alvarado Matamoros','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (137,'Leandra','Salcedo Arama','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (138,'Armando','Salcedo','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (139,'Eugenia','Zambrano','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (140,'Irving Alexis','Vera Palma','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1998-01-10','bautizado'),
 (141,'Ericka Graciela','Vera Palma','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre');
INSERT INTO `solicitante` (`id_solicitante`,`nombre`,`apellido`,`direccion`,`edad`,`telefono`,`profesion`,`sexo`,`legitimo`,`impedimento`,`lugar_nacimiento`,`fecha_nacimiento`,`tipo`) VALUES 
 (142,'Giovany','Zambrano Manjarres','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (143,'Yvon','Pisfil','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (144,'Kevin Adrian','Pico Franco','',NULL,'','',1,NULL,NULL,'Guayaquil - Guayas','1999-10-30','bautizado'),
 (145,'Jorge','Pico Herrera','',NULL,'','',1,NULL,NULL,'','0000-00-00','padre'),
 (146,'Mariana','Franco','',NULL,'','',0,NULL,NULL,'','0000-00-00','madre'),
 (147,'Victor','Quichimbo Alvarado','',NULL,'','',1,NULL,NULL,'','0000-00-00','padrino'),
 (148,'Lilian','Amaguana Flores','',NULL,'','',0,NULL,NULL,'','0000-00-00','madrina'),
 (149,'Lucciola maricela','Moreira Zamora','',NULL,'','',0,NULL,NULL,'Guayaquil - Guayas','1985-06-10','bautizado');
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
 (3,'Guillermo Omar','Pizarro Vasquez','La A entre la 42 y 43','Administrador','Sr.','2345678','','gpizarro','1234',1,0),
 (4,'Jessica Maria','Armijos Farez','Guasmo','Administrador','Srta.','2456789','','jarmijos','jarmijos',1,0),
 (9,'Katherine','Zambrano','41 y Goyena','Administrador','Srta.','2475080','','katho','12345678',1,3),
 (10,'Lucciola Maricela','Moreira Zamora','calle Q y la 41','Secretario','Srta.','2664665','2667619','Lucciola','470972',1,3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


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
-- Definition of procedure `ssp_buscar_solicitante`
--

DROP PROCEDURE IF EXISTS `ssp_buscar_solicitante`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_buscar_solicitante`(nom VARCHAR(10), ape VARCHAR(10), tipo_ VARCHAR(50))
BEGIN
   DECLARE varnom VARCHAR(10);
   DECLARE varape VARCHAR(10);
   SET varnom= CONCAT(nom,'%');
   SET varape= CONCAT(ape,'%');

   SELECT nombre,apellido FROM solicitante WHERE (nombre LIKE varnom AND apellido LIKE varape AND tipo = tipo_);

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
  SELECT id_soli_;

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
          CALL ssp_ingresar_registro_civil(tomo_, anio_, folio_, acta_, '', '', lugar_, salida);
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
-- Definition of procedure `ssp_insertar_registro`
--

DROP PROCEDURE IF EXISTS `ssp_insertar_registro`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='' */ $$
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
