CREATE TABLE `Solicitante` (
	`id_solicitante` 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL ,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`direccion` 	 	VARCHAR( 100 ) NULL ,
	`sexo` 		 	BOOL NULL ,
	`tipo` 		 	VARCHAR( 10 ) NOT NULL 
) ENGINE = innodb;

CREATE TABLE `Ministro` (
	`id_ministro` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL ,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`dignidad` 	 	VARCHAR( 10 ) NOT NULL ,
	`esParroco` 	 	BOOL NOT NULL ,
	`esParrocoPrincipal` 	BOOL NOT NULL
) ENGINE = innodb;

CREATE TABLE `RegistroCivil` (
	`id_registro_civil`	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`tomo` 	 		VARCHAR( 50 ) NULL ,
	`anio` 	 		VARCHAR( 50 ) NULL ,
	`folio`  		VARCHAR( 50 ) NULL ,
	`acta` 	 		VARCHAR( 50 ) NULL ,
	`fecha_nacimiento` 	DATE NULL ,
	`fecha_inscripcion` 	DATE NULL 
) ENGINE = innodb;

CREATE TABLE `Provincia` (
	`id_provincia` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL 
) ENGINE = innodb;

CREATE TABLE `Ciudad` (
	`id_ciudad` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL,
	`id_provincia` 	 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_provincia) REFERENCES Provincia (id_provincia)
) ENGINE = innodb;

CREATE TABLE `Usuario` (
	`id_usuario` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`direccion` 	 	VARCHAR( 100 ) NULL ,
	`tipo` 	 		VARCHAR( 50 ) NULL ,
	`cargo` 	 	VARCHAR( 10 ) NULL ,
	`telefono1` 	 	VARCHAR( 20 ) NULL ,
	`telefono2` 	 	VARCHAR( 20 ) NULL ,
	`user` 	 		VARCHAR( 20 ) NULL ,
	`password` 	 	VARCHAR( 20 ) NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_administrador` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_administrador) REFERENCES Usuario (id_usuario)
) ENGINE = innodb;

CREATE TABLE `Tipo` (
	`id_tipo` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL 
) ENGINE = innodb;

CREATE TABLE `Descripcion` (
	`id_descripcion`  	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 100 ) NOT NULL 
) ENGINE = innodb;

CREATE TABLE `Registrar` (
	`id_registro`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`fecha` 	 	DATE NULL ,
	`valor` 	 	DOUBLE NULL ,
	`id_contador`  		BIGINT NOT NULL ,
	`id_tipo`  		BIGINT NOT NULL ,
	`id_descripcion` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_contador) REFERENCES Usuario (id_usuario) ,
	 FOREIGN KEY (id_tipo) REFERENCES Tipo (id_tipo) ,
	 FOREIGN KEY (id_descripcion) REFERENCES Descripcion (id_descripcion)
) ENGINE = innodb;





















