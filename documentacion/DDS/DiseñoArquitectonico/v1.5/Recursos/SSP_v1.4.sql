CREATE TABLE `SSP`.`Solicitante` (
	`id_solicitante` 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL ,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`direccion` 	 	VARCHAR( 100 ) NULL ,
	`edad` 	 		VARCHAR( 10 ) NULL ,
	`telefono` 	 	VARCHAR( 100 ) NULL ,
	`profesion` 	 	VARCHAR( 100 ) NULL ,
	`sexo` 		 	BOOL NULL ,
	`legitimo` 		BOOL NULL ,
	`impedimento` 		BOOL NULL ,
	`lugar_nacimiento`  	VARCHAR( 50 ) NULL ,
	`fecha_nacimiento`  	DATE NULL ,
	`tipo` 		 	VARCHAR( 10 ) NOT NULL 
) ENGINE = innodb;

CREATE TABLE `SSP`.`Ministro` (
	`id_ministro` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL ,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`dignidad` 	 	VARCHAR( 10 ) NOT NULL ,
	`esParroco` 	 	BOOL NOT NULL ,
	`esParrocoPrincipal` 	BOOL NOT NULL
) ENGINE = innodb;

CREATE TABLE `SSP`.`RegistroCivil` (
	`id_registro_civil`	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`tomo` 	 		VARCHAR( 50 ) NULL ,
	`anio` 	 		VARCHAR( 50 ) NULL ,
	`folio`  		VARCHAR( 50 ) NULL ,
	`acta` 	 		VARCHAR( 50 ) NOT NULL ,
	`estado_civil` 		VARCHAR( 10 ) NULL ,
	`fecha_inscripcion` 	DATE NULL 	
) ENGINE = innodb;

CREATE TABLE `SSP`.`RegistroEclesiastico` (
	`id_registro_eclesiastico`	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`num_sacramento` 	 	VARCHAR( 50 ) NOT NULL ,
	`num_libro` 	 		VARCHAR( 50 ) NULL ,
	`folio_libro` 	 		VARCHAR( 50 ) NULL ,
	`anio_libro`  			VARCHAR( 50 ) NOT NULL ,
	`lugar_bautizo` 	 	VARCHAR( 50 ) NULL ,
	`fecha_bautizo` 		DATE NULL ,
	`iglesia_bautizo` 	 	VARCHAR( 50 ) NULL ,
	`arquidiocesis` 		VARCHAR( 10 ) NULL ,
	`es_acta` 			BOOL NULL 	
) ENGINE = innodb;

CREATE TABLE `SSP`.`Usuario` (
	`id_usuario` 	 	BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`nombre` 	 	VARCHAR( 50 ) NOT NULL,
	`apellido` 	 	VARCHAR( 50 ) NOT NULL ,
	`direccion` 	 	VARCHAR( 100 ) NULL ,
	`tipo` 	 		VARCHAR( 50 ) NULL ,
	`cargo` 	 	VARCHAR( 10 ) NULL ,
	`telefono1` 	 	VARCHAR( 20 ) NULL ,
	`telefono2` 	 	VARCHAR( 20 ) NULL ,
	`usuario` 	 	VARCHAR( 20 ) NOT NULL ,
	`contrasenia` 	 	VARCHAR( 20 ) NOT NULL ,
	`estado` 	 	BOOL NOT NULL ,
	`id_administrador` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_administrador) REFERENCES Usuario (id_usuario)
) ENGINE = innodb;

CREATE TABLE `SSP`.`Registro` (
	`id_registro`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	`fecha` 	 	DATE NOT NULL ,
	`valor` 	 	DOUBLE NOT NULL ,
	`tipo`  		VARCHAR( 20 ) NOT NULL ,
	`descripcion` 		VARCHAR( 100 ) NOT NULL ,
	`id_contador`  		BIGINT NOT NULL ,		
	 FOREIGN KEY (id_contador) REFERENCES Usuario (id_usuario) 
) ENGINE = innodb;

CREATE TABLE `SSP`.`Bautizar` (
	`id_bautizo`  			BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,	
	`observacion`  			VARCHAR( 300 ) NULL ,
	`estado` 	 		BOOL NOT NULL ,
	`id_bautizado` 			BIGINT NOT NULL ,
	`id_padre` 			BIGINT NOT NULL ,
	`id_madre` 			BIGINT NOT NULL ,
	`id_padrino` 			BIGINT NOT NULL ,
	`id_madrina` 			BIGINT NOT NULL ,
	`id_registro_civil` 		BIGINT NOT NULL ,	
	`id_ministro` 			BIGINT NOT NULL ,
	`id_usuario` 			BIGINT NOT NULL ,
	`id_registro_eclesiastico` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_bautizado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_registro_civil) REFERENCES RegistroCivil (id_registro_civil) ,	 
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario),
 	 FOREIGN KEY (id_registro_eclesiastico) REFERENCES RegistroEclesiastico (id_registro_eclesiastico)
) ENGINE = innodb;

CREATE TABLE `SSP`.`ComulgarPorPrimeraVez` (
	`id_comunion`  			BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,	
	`fecha_comunion`  		DATE NOT NULL ,	
	`estado_civil_padres`		VARCHAR( 50 ) NULL ,
	`nombre_institucion`		VARCHAR( 50 ) NULL ,
	`grado`				VARCHAR( 5 ) NULL ,
	`nivel`				VARCHAR( 50 ) NULL ,
	`num_ficha`			VARCHAR( 10 ) NOT NULL ,	
	`lugar_comunion`  		VARCHAR( 50 ) NOT NULL ,
	`observacion`  			VARCHAR( 300 ) NULL ,
	`estado` 	 		BOOL NOT NULL ,
	`id_comulgado` 			BIGINT NOT NULL ,
	`id_padre` 			BIGINT NOT NULL ,
	`id_madre` 			BIGINT NOT NULL ,
	`id_padrino` 			BIGINT NOT NULL ,
	`id_madrina` 			BIGINT NOT NULL ,	
	`id_ministro` 			BIGINT NOT NULL ,
	`id_usuario` 			BIGINT NOT NULL ,
	`id_registro_eclesiastico` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_comulgado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,	 
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ,
	 FOREIGN KEY (id_registro_eclesiastico) REFERENCES RegistroEclesiastico (id_registro_eclesiastico)
) ENGINE = innodb;

CREATE TABLE `SSP`.`Confirmar` (
	`id_confirmacion`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,	
	`fecha_confirmacion`  		DATE NOT NULL ,
	`num_ficha`  			VARCHAR( 10 ) NULL ,
	`nivel`				VARCHAR( 10 ) NULL ,	
	`lugar_comunion`  		VARCHAR( 50 ) NULL ,
	`fecha_comunion`  		DATE NULL ,
	`curso`				VARCHAR( 10 ) NULL ,
	`observacion`  			VARCHAR( 300 ) NULL ,
	`estado` 	 		BOOL NOT NULL ,
	`id_confirmado` 		BIGINT NOT NULL ,
	`id_padre` 			BIGINT NOT NULL ,
	`id_madre` 			BIGINT NOT NULL ,
	`id_padrino` 			BIGINT NOT NULL ,
	`id_madrina` 			BIGINT NOT NULL ,	
	`id_ministro` 			BIGINT NOT NULL ,
	`id_usuario` 			BIGINT NOT NULL ,
	`id_registro_eclesiastico` 	BIGINT NOT NULL ,
	 FOREIGN KEY (id_confirmado) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madre) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_padrino) REFERENCES Solicitante (id_solicitante) ,
	 FOREIGN KEY (id_madrina) REFERENCES Solicitante (id_solicitante) ,	 
	 FOREIGN KEY (id_ministro) REFERENCES Ministro (id_ministro) ,
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ,
	 FOREIGN KEY (id_registro_eclesiastico) REFERENCES RegistroEclesiastico (id_registro_eclesiastico)
) ENGINE = innodb;

CREATE TABLE `SSP`.`Casar` (
	`id_matrimonio`  		BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY ,	
	`fecha_matrimonio`  		DATE NOT NULL ,
	`lugar_matrimonio`  		VARCHAR( 50 ) NOT NULL ,
	`fecha_inscripcion`  		DATE NULL ,
	`observacion`  			VARCHAR( 300 ) NULL ,
	`estado` 	 		BOOL NOT NULL ,
	`id_esposo` 			BIGINT NOT NULL ,
	`id_esposa` 			BIGINT NOT NULL ,
	`id_padre_esposo` 		BIGINT NOT NULL ,
	`id_madre_esposo` 		BIGINT NOT NULL ,
	`id_padre_esposa` 		BIGINT NOT NULL ,
	`id_madre_esposa` 		BIGINT NOT NULL ,
	`id_padrino` 			BIGINT NOT NULL ,
	`id_madrina` 			BIGINT NOT NULL ,
	`id_registro_civil` 		BIGINT NOT NULL ,
	`id_ministro` 			BIGINT NOT NULL ,
	`id_usuario` 			BIGINT NOT NULL ,
	`id_registro_eclesiastico` 	BIGINT NOT NULL ,
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
	 FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario) ,
	 FOREIGN KEY (id_registro_eclesiastico) REFERENCES RegistroEclesiastico (id_registro_eclesiastico)
) ENGINE = innodb;






































