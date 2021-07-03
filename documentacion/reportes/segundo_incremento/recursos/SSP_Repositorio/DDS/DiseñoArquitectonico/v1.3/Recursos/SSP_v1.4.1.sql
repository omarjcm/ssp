CREATE TABLE `Solicitante` (
	`id_solicitante` 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL ,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
#	`direccion` 	 	VARCHAR( 100 ) NULL ,
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
	`fecha_inscripcion` 	DATE NULL ,
	`id_ciudad` 	 	BIGINT NOT NULL ,
         FOREIGN KEY (id_ciudad) REFERENCES Cuidad (id_ciudad)
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

CREATE TABLE `Recinto` (
	`id_recinto` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL,
	`id_ciudad` 	 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_ciudad) REFERENCES Ciudad (id_ciudad)
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
	`user` 	 		VARCHAR( 20 ) NOT NULL ,
	`password` 	 	VARCHAR( 20 ) NOT NULL ,
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
	`fecha` 	 	DATE NOT NULL ,
	`valor` 	 	DOUBLE NOT NULL ,
	`id_contador`  		BIGINT NOT NULL ,
	`tipo`  		VARCHAR( 20 ) NOT NULL ,
	`descripcion` 		VARCHAR( 100 ) NOT NULL ,
	 FOREIGN KEY (id_contador) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;

CREATE TABLE `Bautizar` (
	`id_bautizo`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`id_bautizo_libro`  	VARCHAR( 50 ) NOT NULL ,
	`num_libro`  		VARCHAR( 50 ) NOT NULL ,
	`folio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`anio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`fecha_bautizo`  	DATE NOT NULL ,
	`lugar`  		VARCHAR( 50 ) NOT NULL ,
	`observacion`  		VARCHAR( 300 ) NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_bautizado` 		BIGINT NOT NULL ,
	`id_padre` 		BIGINT NOT NULL ,
	`id_madre` 		BIGINT NOT NULL ,
	`id_padrino` 		BIGINT NOT NULL ,
	`id_madrina` 		BIGINT NOT NULL ,
	`id_registro_civil`	BIGINT NOT NULL ,
	`id_ciudad` 		BIGINT NOT NULL ,
	`id_ministro` 		BIGINT NOT NULL ,
	`id_usuario` 		BIGINT NOT NULL ,
	 FOREIGN KEY (id_bautizado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_registro_civil) REFERENCES RegistroCivil (id_registro_civil) ,
	 FOREIGN KEY (id_ciudad) REFERENCES Ciudad (id_ciudad) ,
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;

CREATE TABLE `ComulgarPorPrimeraVez` (
	`id_comunion`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`id_comunion_libro`  	VARCHAR( 50 ) NOT NULL ,
	`num_libro`  		VARCHAR( 50 ) NOT NULL ,
	`folio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`fecha_comunion`  	DATE NOT NULL ,
	`fecha_nacimiento`  	DATE NULL ,
	`direccion`  		VARCHAR( 100 ) NULL ,
	`estado_civil_padres`	VARCHAR( 50 ) NULL ,
	`nombre_institucion`	VARCHAR( 50 ) NULL ,
	`nivel`			VARCHAR( 50 ) NULL ,
	`edad`			INTEGER NULL ,
	`lugar`  		VARCHAR( 50 ) NOT NULL ,
	`observacion`  		VARCHAR( 300 ) NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_comulgado` 		BIGINT NOT NULL ,
	`id_padre` 		BIGINT NOT NULL ,
	`id_madre` 		BIGINT NOT NULL ,
	`id_padrino` 		BIGINT NOT NULL ,
	`id_madrina` 		BIGINT NOT NULL ,
	`id_ciudad` 		BIGINT NOT NULL ,
	`id_ministro` 		BIGINT NOT NULL ,
	`id_usuario` 		BIGINT NOT NULL ,
	 FOREIGN KEY (id_comulgado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_ciudad) REFERENCES Ciudad (id_ciudad) ,
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;

CREATE TABLE `Confirmar` (
	`id_confirmacion`  	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`id_confirmacion_libro` VARCHAR( 50 ) NOT NULL ,
	`num_libro`  		VARCHAR( 50 ) NOT NULL ,
	`folio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`anio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`fecha_confirmacion`  	DATE NOT NULL ,
	`ciudad_bautizo`  	VARCHAR( 100 ) NULL ,
	`iglesia_bautizo`	VARCHAR( 50 ) NULL ,
	`lugar`  		VARCHAR( 50 ) NOT NULL ,
	`observacion`  		VARCHAR( 300 ) NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_confirmado` 	BIGINT NOT NULL ,
	`id_padre` 		BIGINT NOT NULL ,
	`id_madre` 		BIGINT NOT NULL ,
	`id_padrino` 		BIGINT NOT NULL ,
	`id_madrina` 		BIGINT NOT NULL ,
	`id_ciudad` 		BIGINT NOT NULL ,
	`id_ministro` 		BIGINT NOT NULL ,
	`id_usuario` 		BIGINT NOT NULL ,
	 FOREIGN KEY (id_confirmado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_ciudad) REFERENCES Ciudad (id_ciudad) ,
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;

CREATE TABLE `Casar` (
	`id_matrimonio`  	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`id_matrimonio_libro`  	VARCHAR( 50 ) NOT NULL ,
	`num_libro`  		VARCHAR( 50 ) NOT NULL ,
	`folio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`anio_libro`  		VARCHAR( 50 ) NOT NULL ,
	`fecha_matrimonio`  	DATE NOT NULL ,
	`lugar`  		VARCHAR( 50 ) NOT NULL ,
	`observacion`  		VARCHAR( 300 ) NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_esposo` 		BIGINT NOT NULL ,
	`id_esposa` 		BIGINT NOT NULL ,
	`id_padre_esposo` 	BIGINT NOT NULL ,
	`id_madre_esposo` 	BIGINT NOT NULL ,
	`id_padre_esposa` 	BIGINT NOT NULL ,
	`id_madre_esposa` 	BIGINT NOT NULL ,
	`id_padrino` 		BIGINT NOT NULL ,
	`id_madrina` 		BIGINT NOT NULL ,
	`id_registro_civil` 	BIGINT NOT NULL ,
	`id_ministro` 		BIGINT NOT NULL ,
	`id_usuario` 		BIGINT NOT NULL ,
	 FOREIGN KEY (id_esposo) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_esposa) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre_esposo) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre_esposo) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre_esposa) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre_esposa) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_registro_civil) REFERENCES RegistroCivil (id_registro_civil) ,
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;






































