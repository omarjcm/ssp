--
-- This command file reloads a database that was unloaded using "dbunload".
--
-- ( Version :  9.0.0.1108)
--

SET OPTION Statistics          = 3
go
SET OPTION Date_order          = 'YMD'
go
SET OPTION describe_java_format= 'binary'
go
SET OPTION PUBLIC.Preserve_source_format = 'OFF'
go


-------------------------------------------------
--   Create userids and grant user permissions
-------------------------------------------------

GRANT CONNECT TO "DBA" IDENTIFIED BY "SQL"
go
GRANT RESOURCE, DBA, SCHEDULE TO "DBA"
go
GRANT CONNECT TO "dbo"  
go
GRANT GROUP TO "dbo"
go
GRANT RESOURCE, DBA TO "dbo"
go
commit work
go


-------------------------------------------------
--   Create removed system userids and grant permissions
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create user-defined types
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Install user-defined classes
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Grant user memberships
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create external servers
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create tables
-------------------------------------------------

CREATE TABLE "DBA"."Registro_Civil"
(
	"id_rc" 			bigint NOT NULL DEFAULT autoincrement,
	"fecha_nacimiento"      	date NULL,
	"fecha_inscripcion"     	date NULL,
	"tomo"  			char(50) NULL,
	"anio"  			char(50) NULL,
	"folio" 			char(50) NULL,
	"acta"  			char(50) NULL,
	"lugar" 			char(50) NULL, 
	 PRIMARY KEY ("id_rc")
)
go
CREATE TABLE "DBA"."Ciudad"
(
	"id_ciudad"     		bigint NOT NULL DEFAULT autoincrement,
	"nombre"        		char(50) NULL,
	"id_provincia"  		bigint NOT NULL, 
	 PRIMARY KEY ("id_ciudad")
)
go
CREATE TABLE "DBA"."Provincia"
(
	"id_provincia"  		bigint NOT NULL DEFAULT autoincrement,
	"nombre"        		char(50) NULL, 
	 PRIMARY KEY ("id_provincia")
)
go
CREATE TABLE "DBA"."Parroquia"
(
	"id_parroquia"  		bigint NOT NULL DEFAULT autoincrement,
	"nombre"        		char(50) NULL,
	"direccion"     		char(50) NULL,
	"telefono1"     		char(50) NULL,
	"telefono2"     		char(50) NULL,
	"telefono3"     		char(50) NULL,
	"id_ciudad"     		bigint NULL, 
	 PRIMARY KEY ("id_parroquia")
)
go
CREATE TABLE "DBA"."Solicitante"
(
	"id_solicitante"        	bigint NOT NULL DEFAULT autoincrement,
	"nombre"        		char(50) NOT NULL,
	"apellido"      		char(50) NOT NULL,
	"direccion"     		char(50) NULL,
	"sexo"  			char(50) NULL,
	"tipo"  			char(50) NULL,
	"id_ciudad"     		bigint NULL,
	"id_usuario"    		bigint NULL, 
	 PRIMARY KEY ("id_solicitante")
)
go
CREATE TABLE "DBA"."Confirmar"
(
	"id_confirmacion"       	bigint NOT NULL DEFAULT autoincrement,
	"id_confirmacion_libro" 	char(50) NOT NULL,
	"num_libro"     		char(50) NOT NULL,
	"folio_libro"   		char(50) NOT NULL,
	"anio_libro"    		char(50) NOT NULL,
	"fecha_confirmacion"    	date NOT NULL,
	"ciudad_bautizo"        	char(50) NULL,
	"iglesia_bautizo"       	char(50) NULL,
	"observacion"   		char(100) NULL,
	"estado"        		bit NULL,
	"id_confirmado" 		bigint NULL,
	"id_padre"      		bigint NULL,
	"id_madre"      		bigint NULL,
	"id_padrino"    		bigint NULL,
	"id_madrina"    		bigint NULL,
	"id_parroquia"  		bigint NULL,
	"id_ministro"   		bigint NOT NULL,
	"fecha_nacimiento"      	date NULL, 
	 PRIMARY KEY ("id_confirmacion")
)
go
CREATE TABLE "DBA"."Usuario"
(
	"id_usuario"    		bigint NOT NULL DEFAULT autoincrement,
	"clave" 			char(50) NULL,
	"usuario"       		char(50) NULL,
	"nombre"        		char(50) NOT NULL,
	"apellido"      		char(50) NOT NULL,
	"tipo_usuario"  		char(50) NULL,
	"cargo" 			char(50) NULL,
	"direccion"     		char(50) NULL,
	"telefono1"     		char(50) NULL,
	"telefono2"     		char(50) NULL,
	"id_ciudad"     		bigint NULL,
	"id_parroquia"  		bigint NULL,
	"estado"        		bit NULL, 
	 PRIMARY KEY ("id_usuario")
)
go
CREATE TABLE "DBA"."Casar"
(
	"id_matrimonio" 		bigint NOT NULL DEFAULT autoincrement,
	"id_matrimonio_libro"   	char(50) NOT NULL,
	"num_libro"     		char(50) NOT NULL,
	"folio_libro"   		char(50) NOT NULL,
	"anio_libro"    		char(50) NOT NULL,
	"fecha_matrimonio"      	date NULL,
	"observacion"   		char(100) NULL,
	"estado"        		bit NULL,
	"id_esposo"     		bigint NOT NULL,
	"id_esposa"     		bigint NOT NULL,
	"id_padre_esposo"       	bigint NULL,
	"id_madre_esposo"       	bigint NULL,
	"id_padre_esposa"       	bigint NULL,
	"id_madre_esposa"       	bigint NULL,
	"id_padrino"    		bigint NULL,
	"id_madrina"    		bigint NULL,
	"id_parroquia"  		bigint NULL,
	"id_rc" 			bigint NULL,
	"id_ministro"   		bigint NULL, 
	 PRIMARY KEY ("id_matrimonio")
)
go
COMMENT ON COLUMN "DBA"."Casar"."id_esposo" IS
	'Este es el esposo'
go

CREATE TABLE "DBA"."Bautizar"
(
	"id_bautizo"    		bigint NOT NULL DEFAULT autoincrement,
	"id_bautizo_libro"      	char(50) NOT NULL,
	"num_libro"     		char(50) NOT NULL,
	"folio_libro"   		char(50) NOT NULL,
	"anio_libro"    		char(50) NOT NULL,
	"fecha_bautizo" 		date NULL,
	"observacion"   		char(100) NULL,
	"estado"        		bit NULL,
	"id_bautizado"  		bigint NOT NULL,
	"id_padre"      		bigint NOT NULL,
	"id_madre"      		bigint NOT NULL,
	"id_padrino"    		bigint NOT NULL,
	"id_madrina"    		bigint NOT NULL,
	"id_parroquia"  		bigint NOT NULL,
	"id_rc" 			bigint NULL,
	"id_ministro"   		bigint NOT NULL, 
	 PRIMARY KEY ("id_bautizo")
)
go
CREATE TABLE "DBA"."ComulgarxPrimeraVez"
(
	"id_comunion"   		bigint NOT NULL DEFAULT autoincrement,
	"id_comunion_libro"     	char(50) NOT NULL,
	"num_libro"     		char(50) NOT NULL,
	"folio_libro"   		char(50) NOT NULL,
	"anio_libro"    		char(50) NOT NULL,
	"fecha_comunion"        	date NULL,
	"edad"  			integer NULL,
	"estadoCivilPadres"     	char(50) NULL,
	"name_institucion"      	char(50) NULL,
	"nivel" 			char(50) NULL,
	"observacion"   		char(100) NOT NULL,
	"estado"        		bit NULL,
	"id_comulgado"  		bigint NOT NULL,
	"id_padre"      		bigint NULL,
	"id_madre"      		bigint NULL,
	"id_padrino"    		bigint NULL,
	"id_madrina"    		bigint NULL,
	"id_ministro"   		bigint NULL,
	"id_parroquia"  		bigint NULL, 
	 PRIMARY KEY ("id_comunion")
)
go
commit work
go


-------------------------------------------------
--   Reload statistics
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Reload data
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Add foreign key definitions
-------------------------------------------------


ALTER TABLE "DBA"."Ciudad"
	ADD FOREIGN KEY "id_provincia" ("id_provincia") 
	REFERENCES "DBA"."Provincia" ("id_provincia") on update cascade on delete cascade
go

CREATE INDEX "id_ciud" ON "DBA"."Ciudad"
(
	"nombre" ASC
)
go

ALTER TABLE "DBA"."Parroquia"
	ADD FOREIGN KEY "id_ciudad" ("id_ciudad") 
	REFERENCES "DBA"."Ciudad" ("id_ciudad") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Solicitante"
	ADD FOREIGN KEY "id_ciudad" ("id_ciudad") 
	REFERENCES "DBA"."Ciudad" ("id_ciudad") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Solicitante"
	ADD FOREIGN KEY "id_usuario" ("id_usuario") 
	REFERENCES "DBA"."Usuario" ("id_usuario")
go

CREATE INDEX "id_solici" ON "DBA"."Solicitante"
(
	"apellido" ASC,
	"nombre" ASC,
	"tipo" ASC
)
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_confirmado" ("id_confirmado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante")
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_padre" ("id_confirmado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_madre" ("id_confirmado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_padrino" ("id_confirmado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_madrina" ("id_confirmado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_parroquia" ("id_parroquia") 
	REFERENCES "DBA"."Parroquia" ("id_parroquia") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Confirmar"
	ADD FOREIGN KEY "id_ministro" ("id_ministro") 
	REFERENCES "DBA"."Usuario" ("id_usuario")
go

ALTER TABLE "DBA"."Usuario"
	ADD FOREIGN KEY "id_ciudad" ("id_ciudad") 
	REFERENCES "DBA"."Ciudad" ("id_ciudad") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Usuario"
	ADD FOREIGN KEY "id_parroquia" ("id_parroquia") 
	REFERENCES "DBA"."Parroquia" ("id_parroquia") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_esposa" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on delete cascade on update cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_madre_esposo" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_madre_esposa" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_esposo" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante")
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_padre_esposo" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_padre_esposa" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_padrino" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_madrina" ("id_esposo") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_ministro" ("id_ministro") 
	REFERENCES "DBA"."Usuario" ("id_usuario") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_parroquia" ("id_parroquia") 
	REFERENCES "DBA"."Parroquia" ("id_parroquia") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Casar"
	ADD FOREIGN KEY "id_rc" ("id_rc") 
	REFERENCES "DBA"."Registro_Civil" ("id_rc") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_ministro" ("id_ministro") 
	REFERENCES "DBA"."Usuario" ("id_usuario")
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_bautizado" ("id_bautizado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante")
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_padre" ("id_bautizado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_madre" ("id_bautizado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_padrino" ("id_bautizado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_madrina" ("id_bautizado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_parroquia" ("id_parroquia") 
	REFERENCES "DBA"."Parroquia" ("id_parroquia") on update cascade on delete cascade
go

ALTER TABLE "DBA"."Bautizar"
	ADD FOREIGN KEY "id_rc" ("id_rc") 
	REFERENCES "DBA"."Registro_Civil" ("id_rc") on update cascade on delete cascade
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_comulgado" ("id_comulgado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante")
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_ministro" ("id_ministro") 
	REFERENCES "DBA"."Usuario" ("id_usuario")
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_padre" ("id_comulgado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_madre" ("id_comulgado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_padrino" ("id_comulgado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_madrina" ("id_comulgado") 
	REFERENCES "DBA"."Solicitante" ("id_solicitante") on update cascade on delete cascade
go

ALTER TABLE "DBA"."ComulgarxPrimeraVez"
	ADD FOREIGN KEY "id_parroquia" ("id_parroquia") 
	REFERENCES "DBA"."Parroquia" ("id_parroquia") on update cascade on delete cascade
go
commit work
go


-------------------------------------------------
--   Create functions
-------------------------------------------------

setuser "DBA" 
go
commit work
go


-------------------------------------------------
--   Create views
-------------------------------------------------

setuser "DBA" 
go
commit work
go


-------------------------------------------------
--   Create user messages
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create procedures
-------------------------------------------------

setuser "DBA" 
go

create procedure DBA.buscar_idConfirmacion(@id_confirmacion_libro_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Confirmar where(id_confirmacion_libro = @id_confirmacion_libro_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_idConfirmacion" IS 
{create PROCEDURE DBA."buscar_idConfirmacion"(@id_confirmacion_libro_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Confirmar WHERE (id_confirmacion_libro = @id_confirmacion_libro_)
END
}
go

create procedure DBA.ssp_IngresarProvincia(@nombre char(50),@mensaje char(100) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @nombrepro char(50)
  select @nombrepro=(select provi.nombre from Provincia as provi where nombre = @nombre)
  if(@nombrepro = @nombre)
    begin
      select @mensaje='La Provincia ya se encuentra en la Base'
      return
    end
  else
    begin transaction
  insert into Provincia(nombre) values(@nombre)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarProvincia" IS 
{create PROCEDURE DBA."ssp_IngresarProvincia"(@nombre char(50), @mensaje char(100) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @nombrepro char(50)
	select @nombrepro = (select provi.nombre from Provincia provi where nombre=@nombre)
	if(@nombrepro = @nombre)
		begin
			select @mensaje='La Provincia ya se encuentra en la Base'
			return
		end
	else
	begin transaction 
	insert into Provincia(nombre) values(@nombre) 
		if(@@error <> 0)
	    	begin
	   		   	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
		end



}
go

create procedure DBA.error(@id_camaronera integer,@cedula char(10),@nombre char(20),@apellido char(20),@usuario char(20),@contrasena char(20),@id_usuario integer output,@mensaje char(50) output)
as
begin
  if(length(@usuario) < 3)
    begin
      select @mensaje='Error: Usuario mínimo 3 caracteres'
      return
    end
  if(length(@contrasena) < 3)
    begin
      select @mensaje='Error: Contraseña mínimo 3 caracteres'
      return
    end
  if(length(@cedula) <= 9)
    begin
      select @mensaje='Error: Cedula de 10 digitos'
      return
    end
  declare @camar integer
  select @camar=(select count(*) from CAMARONERA where ID_CAMARONERA = @id_camaronera)
  if(@camar = 0)
    begin
      select @mensaje='Error Camaronera no Existente'
      return
    end
  execute DBA.Usuario_Existe_Ingresar @usuario,@cedula,@id_usuario
  if(@id_usuario is not null and @id_usuario <> 0)
    begin
      select @mensaje='Error Usuario ya Existente'
      return
    end
  begin transaction
  insert into USUARIO(ID_CAMARONERA_FK,CEDULA,NOMBRE,APELLIDO,DIRECCION,USUARIO,CONTRASENA) values(@id_camaronera,@cedula,@nombre,@apellido,@direccion,@usuario,@contrasena)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
      execute DBA.Usuario_Existe @usuario,@cedula,@id_usuario
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."error" IS 
{create procedure DBA.error(@id_camaronera integer,@cedula char(10),@nombre char(20),@apellido char(20),@usuario char(20),@contrasena char(20),@id_usuario integer output,@mensaje char(50) output)
as
begin
  if(length(@usuario) < 3)
    begin
      select @mensaje='Error: Usuario mínimo 3 caracteres'
      return
    end
  if(length(@contrasena) < 3)
    begin
      select @mensaje='Error: Contraseña mínimo 3 caracteres'
      return
    end
  if(length(@cedula) <= 9)
    begin
      select @mensaje='Error: Cedula de 10 digitos'
      return
    end
  declare @camar integer
  select @camar=(select count(*) from CAMARONERA where ID_CAMARONERA = @id_camaronera)
  if(@camar = 0)
    begin
      select @mensaje='Error Camaronera no Existente'
      return
    end
  execute DBA.Usuario_Existe_Ingresar @usuario,@cedula,@id_usuario
  if(@id_usuario is not null and @id_usuario <> 0)
    begin
      select @mensaje='Error Usuario ya Existente'
      return
    end
  begin transaction
  insert into USUARIO(ID_CAMARONERA_FK,CEDULA,NOMBRE,APELLIDO,DIRECCION,USUARIO,CONTRASENA) values(@id_camaronera,@cedula,@nombre,@apellido,@direccion,@usuario,@contrasena)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
      execute DBA.Usuario_Existe @usuario,@cedula,@id_usuario
    end
end
}
go

create procedure DBA.ssp_BuscarMatrimonio(@nombre_novia char(50),@apellido_novia char(50),@nombre_novio char(50),@apellido_novio char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select c.id_matrimonio,c.id_matrimonio_libro,c.num_libro,c.folio_libro,c.anio_libro,c.fecha_matrimonio,c.observacion,c.estado,c.id_esposo,c.id_esposa,c.id_padre_esposo,c.id_madre_esposo,c.id_padre_esposa,c.id_madre_esposa,c.id_padrino,c.id_madrina,c.id_parroquia,c.id_rc,c.id_ministro from
    Solicitante as solnovia,Solicitante as solnovio,Casar as c where
    solnovio.nombre = @nombre_novio and solnovio.apellido = @apellido_novio and solnovia.nombre = @nombre_novia and solnovia.apellido = @apellido_novia and c.id_esposo = solnovio.id_solicitante and c.id_esposa = solnovia.id_solicitante and solnovio.tipo = 'esposo' and solnovia.tipo = 'esposa'
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarMatrimonio" IS 
{create PROCEDURE DBA."ssp_BuscarMatrimonio"(@nombre_novia char(50),@apellido_novia char(50),@nombre_novio char(50),@apellido_novio char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select c.id_matrimonio,c.id_matrimonio_libro,c.num_libro,c.folio_libro,c.anio_libro,c.fecha_matrimonio,c.observacion,c.estado,c.id_esposo,c.id_esposa,c.id_padre_esposo,c.id_madre_esposo,c.id_padre_esposa,c.id_madre_esposa,c.id_padrino,c.id_madrina,c.id_parroquia,c.id_rc,c.id_ministro 
	from Solicitante solnovia,Solicitante solnovio,Casar c 
	where solnovio.nombre=@nombre_novio and solnovio.apellido=@apellido_novio and solnovia.nombre=@nombre_novia and solnovia.apellido=@apellido_novia and c.id_esposo=solnovio.id_solicitante and c.id_esposa=solnovia.id_solicitante and solnovio.tipo='esposo' and solnovia.tipo='esposa'
END
}
go

create procedure DBA.ssp_EncontrarBautizo(@id_bautizo bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Bautizar where id_bautizo_libro = @id_bautizo
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_EncontrarBautizo" IS 
{create PROCEDURE DBA."ssp_EncontrarBautizo"(@id_bautizo bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select * from Bautizar where id_bautizo_libro=@id_bautizo
END
}
go

create procedure DBA.ssp_BuscarProvincia(@id_Provincia bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Provincia where id_provincia = @id_Provincia
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarProvincia" IS 
{create PROCEDURE DBA."ssp_BuscarProvincia"(@id_Provincia bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select * from Provincia where id_provincia=@id_Provincia
END
}
go

create procedure DBA.ssp_BuscarxActa(@acta char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Registro_Civil where acta = @acta
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarxActa" IS 
{create PROCEDURE DBA."ssp_BuscarxActa"(@acta char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Registro_Civil where acta=@acta
END
}
go

create procedure DBA.ssp_IngresarPrimeraComunion(@id_comunion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_comunion char(50),@edad integer,@estadoCivilPadres char(50),@name_institucion char(50),@nivel char(50),@observacion char(100),@estado bit,@id_comulgado bigint,@id_padre bigint,@id_madre bigint,@id_padrino bigint,@id_madrina bigint,@id_ministro bigint,@id_parroquia bigint,@mensaje char(50) output)
as
begin
  declare @id_comulga char(50)
  select @id_comulga=(select id_comunion_libro from ComulgarxPrimeraVez where id_comunion_libro = @id_comunion_libro)
  if(@id_comulga = @id_comunion_libro)
    begin
      select @mensaje='El acta se encuentra registrada'
      return
    end
  begin transaction
  insert into ComulgarxPrimeraVez(id_comunion_libro,num_libro,folio_libro,anio_libro,
    fecha_comunion,edad,estadoCivilPadres,name_institucion,nivel,observacion,estado,
    id_comulgado,id_padre,id_madre,id_padrino,id_madrina,
    id_ministro,id_parroquia) values(
    @id_comunion_libro,@num_libro,@folio_libro,@anio_libro,
    @fecha_comunion,@edad,@estadoCivilPadres,@name_institucion,@nivel,@observacion,@estado,
    @id_comulgado,@id_padre,@id_madre,@id_padrino,@id_madrina,
    @id_ministro,@id_parroquia)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarPrimeraComunion" IS 
{create PROCEDURE DBA."ssp_IngresarPrimeraComunion"
	(@id_comunion_libro char(50), @num_libro char(50), @folio_libro char(50), @anio_libro char(50),
	@fecha_comunion char(50), @edad integer, @estadoCivilPadres char(50), @name_institucion char(50), @nivel char(50), @observacion char(100), @estado bit,
	@id_comulgado bigint, @id_padre bigint, @id_madre bigint, @id_padrino bigint, @id_madrina bigint,
	@id_ministro bigint, @id_parroquia bigint, @mensaje char(50) output)
AS
BEGIN
	declare @id_comulga char(50)
	select @id_comulga = (SELECT id_comunion_libro FROM ComulgarxPrimeraVez WHERE id_comunion_libro=@id_comunion_libro)
	if (@id_comulga = @id_comunion_libro)
		begin
			select @mensaje = 'El acta se encuentra registrada'
			return
		end

	begin transaction

	INSERT INTO ComulgarxPrimeraVez(id_comunion_libro, num_libro, folio_libro, anio_libro,
					fecha_comunion, edad, estadoCivilPadres, name_institucion, nivel, observacion, estado,
					id_comulgado, id_padre, id_madre, id_padrino, id_madrina,
					id_ministro, id_parroquia)
	VALUES (@id_comunion_libro, @num_libro, @folio_libro, @anio_libro,
					@fecha_comunion, @edad, @estadoCivilPadres, @name_institucion, @nivel, @observacion, @estado,
					@id_comulgado, @id_padre, @id_madre, @id_padrino, @id_madrina,
					@id_ministro, @id_parroquia)
			if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END

}
go

create procedure DBA.ssp_ModificarSolicitante(@id_solicitante bigint,@nombre char(50),@apellido char(50),@direccion char(50),@sexo char(50),@id_ciudad bigint,@id_usuario bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update Solicitante set nombre = @nombre,apellido = @apellido,direccion = @direccion,sexo = @sexo,id_ciudad = @id_ciudad,id_usuario = @id_usuario where id_solicitante = @id_solicitante
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarSolicitante" IS 
{create PROCEDURE DBA."ssp_ModificarSolicitante"(@id_solicitante bigint,@nombre char(50),@apellido char(50),@direccion char(50),@sexo char(50),@id_ciudad bigint,@id_usuario bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update Solicitante set nombre=@nombre,apellido=@apellido,direccion=@direccion,sexo=@sexo,id_ciudad=@id_ciudad,id_usuario=@id_usuario where id_solicitante=@id_solicitante
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.sp_Usuario(@usuario_ char(50),@clave_ char(50))
as
begin
  select id_usuario,clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado from Usuario where(usuario = @usuario_) and(clave = @clave_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."sp_Usuario" IS 
{create procedure DBA."sp_Usuario"(@usuario_ char(50),@clave_ char(50))
as
begin
  select id_usuario,clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado from Usuario where(usuario = @usuario_) and (clave = @clave_)
end
}
go

create procedure DBA.ssp_BuscarxId_rc(@id_rc char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Registro_Civil where id_rc = @id_rc
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarxId_rc" IS 
{create PROCEDURE DBA."ssp_BuscarxId_rc"(@id_rc char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Registro_Civil where id_rc=@id_rc
END
}
go

create procedure DBA.ssp_ConsultarBautizoT(@id_solic bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Bautizar as b where b.id_solicitante = @id_solic
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ConsultarBautizoT" IS 
{create PROCEDURE DBA."ssp_ConsultarBautizoT"(@id_solic bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Bautizar b where b.id_solicitante=@id_solic

END
}
go

create procedure DBA.buscar_BautizoxSolicitante(@nombre char(50),@apellido char(50))
as
begin
  select* from Bautizar as b,Solicitante as c where(c.nombre = @nombre) and(c.apellido = @apellido) and(b.id_bautizado = c.id_solicitante) and(c.tipo = 'bautizado')
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_BautizoxSolicitante" IS 
{create PROCEDURE DBA."buscar_BautizoxSolicitante"(@nombre char(50), @apellido char(50))
AS
BEGIN
	SELECT * FROM Bautizar b, Solicitante c WHERE (c.nombre = @nombre) AND (c.apellido =@apellido) AND (b.id_bautizado=c.id_solicitante) AND (c.tipo='bautizado')
END
}
go

create procedure DBA.ssp_BuscarXId_ciudad(@id_ciudad bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Ciudad where(id_ciudad = @id_ciudad)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarXId_ciudad" IS 
{create PROCEDURE DBA."ssp_BuscarXId_ciudad"(@id_ciudad bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Ciudad WHERE (id_ciudad=@id_ciudad)
END
}
go

create procedure DBA.buscar_provincia(@nombre_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Provincia where(nombre = @nombre_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_provincia" IS 
{create PROCEDURE DBA."buscar_provincia"(@nombre_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Provincia WHERE (nombre=@nombre_)
END
}
go

create procedure DBA.buscar_ConfirmacionxSolicitante(@nombre char(50),@apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Confirmar as b,Solicitante as c where(c.nombre = @nombre) and(c.apellido = @apellido) and(b.id_confirmado = c.id_solicitante) and(c.tipo = 'confirmado')
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_ConfirmacionxSolicitante" IS 
{create PROCEDURE DBA."buscar_ConfirmacionxSolicitante"(@nombre char(50), @apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Confirmar b, Solicitante c WHERE (c.nombre = @nombre) AND (c.apellido =@apellido) AND (b.id_confirmado=c.id_solicitante) AND (c.tipo='confirmado')
END
}
go

create procedure DBA.buscar_ciudad(@nombre_ char(50))
as
begin
  select* from Ciudad where(nombre = @nombre_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_ciudad" IS 
{create PROCEDURE DBA."buscar_ciudad"(@nombre_ char(50))
AS
BEGIN
	SELECT * FROM Ciudad WHERE (nombre=@nombre_)
END
}
go

create procedure DBA.buscar_parroquia(@nombre_ char(50))
as
begin
  select* from Parroquia where(nombre = @nombre_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_parroquia" IS 
{create PROCEDURE DBA."buscar_parroquia"(@nombre_ char(50))
AS
BEGIN
	SELECT * FROM Parroquia WHERE (nombre=@nombre_)
END
}
go

create procedure DBA.buscar_usuario(@nombre_ char(50),@apellido_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Usuario where(nombre = @nombre_) and(apellido = @apellido_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_usuario" IS 
{create PROCEDURE DBA."buscar_usuario"(@nombre_ char(50), @apellido_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Usuario WHERE (nombre=@nombre_) AND (apellido=@apellido_)	
END
}
go

create procedure DBA.buscar_solicitante(@nombre_ char(50),@apellido_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Solicitante where(nombre = @nombre_) and(apellido = @apellido_)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_solicitante" IS 
{create PROCEDURE DBA."buscar_solicitante"(@nombre_ char(50), @apellido_ char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Solicitante WHERE (nombre=@nombre_) AND (apellido=@apellido_)
END
}
go

create procedure DBA.ingresar_ciudad(@nombre char(50),@id_provincia bigint,@memsaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  insert into Ciudad(nombre,id_provincia) values(@nombre,@id_provincia)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ingresar_ciudad" IS 
{create PROCEDURE DBA."ingresar_ciudad"(@nombre char(50), @id_provincia bigint,@memsaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	INSERT INTO Ciudad(nombre, id_provincia) VALUES (@nombre, @id_provincia)
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.ingresar_ministro(@nombre char(50),@apellido char(50),@cargo char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  insert into Usuario(nombre,apellido,tipo_usuario,cargo,id_ciudad,id_parroquia) values(
    @nombre,@apellido,'ninguno',@cargo,0,0)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ingresar_ministro" IS 
{create PROCEDURE DBA."ingresar_ministro"(@nombre char(50), @apellido char(50), @cargo char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	INSERT INTO Usuario(nombre, apellido, tipo_usuario, cargo, id_ciudad, id_parroquia)
	VALUES (@nombre, @apellido, 'ninguno', @cargo, 0, 0)
END
}
go

create procedure DBA.ingresar_confirmacion(@id_confirmacion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_confirmacion char(50),@ciudad_bautizo char(50),@iglesia_bautizo char(50),@observacion char(100),@estado bit,@id_confirmado bigint,@id_padre bigint,@id_madre bigint,@id_padrino bigint,@id_madrina bigint,@id_ministro bigint,@id_parroquia bigint,@fecha_nacimiento date,@mensaje char(50) output)
as
begin
  declare @id_confirma char(50)
  select @id_confirma=(select id_confirmacion_libro from Confirmar where id_confirmacion_libro = @id_confirmacion_libro)
  if(@id_confirma = @id_confirmacion_libro)
    begin
      select @mensaje='El acta se encuentra registrada'
      return
    end
  begin transaction
  insert into Confirmar(id_confirmacion_libro,num_libro,folio_libro,anio_libro,
    fecha_confirmacion,ciudad_bautizo,iglesia_bautizo,observacion,estado,
    id_confirmado,id_padre,id_madre,id_padrino,id_madrina,
    id_ministro,id_parroquia,fecha_nacimiento) values(
    @id_confirmacion_libro,@num_libro,@folio_libro,@anio_libro,
    @fecha_confirmacion,@ciudad_bautizo,@iglesia_bautizo,@observacion,@estado,
    @id_confirmado,@id_padre,@id_madre,@id_padrino,@id_madrina,
    @id_ministro,@id_parroquia,@fecha_nacimiento)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ingresar_confirmacion" IS 
{create PROCEDURE DBA."ingresar_confirmacion"
	(@id_confirmacion_libro char(50), @num_libro char(50), @folio_libro char(50), @anio_libro char(50),
	@fecha_confirmacion char(50), @ciudad_bautizo char(50), @iglesia_bautizo char(50), @observacion char(100), @estado bit,
	@id_confirmado bigint, @id_padre bigint, @id_madre bigint, @id_padrino bigint, @id_madrina bigint,
	@id_ministro bigint, @id_parroquia bigint, @fecha_nacimiento Date, @mensaje char(50) output)
AS
BEGIN
	declare @id_confirma char(50)
	select @id_confirma = (SELECT id_confirmacion_libro FROM Confirmar WHERE id_confirmacion_libro=@id_confirmacion_libro)	
	if (@id_confirma = @id_confirmacion_libro)
		begin
			select @mensaje = 'El acta se encuentra registrada'
			return
		end

	begin transaction
	INSERT INTO Confirmar(id_confirmacion_libro, num_libro, folio_libro, anio_libro, 
					fecha_confirmacion, ciudad_bautizo, iglesia_bautizo, observacion, estado,
					id_confirmado, id_padre, id_madre, id_padrino, id_madrina, 
					id_ministro, id_parroquia, fecha_nacimiento)
	VALUES (@id_confirmacion_libro, @num_libro, @folio_libro, @anio_libro, 
					@fecha_confirmacion, @ciudad_bautizo, @iglesia_bautizo, @observacion, @estado,
					@id_confirmado, @id_padre, @id_madre, @id_padrino, @id_madrina, 
					@id_ministro, @id_parroquia, @fecha_nacimiento)
			if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.buscar_fecha_nacimiento(@fecha_nacimiento date)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Registro_Civil where(fecha_nacimiento = @fecha_nacimiento)
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."buscar_fecha_nacimiento" IS 
{create PROCEDURE DBA."buscar_fecha_nacimiento"(@fecha_nacimiento date)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM Registro_Civil WHERE (fecha_nacimiento=@fecha_nacimiento)
END
}
go

create procedure DBA.ssp_BuscarxId_solicitante(@id_solici bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Solicitante where id_solicitante = @id_solici
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarxId_solicitante" IS 
{create PROCEDURE DBA."ssp_BuscarxId_solicitante"(@id_solici bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	Select * FROM Solicitante where id_solicitante=@id_solici
END
}
go

create procedure DBA.ssp_BuscarIdSolicitante(@nombre char(50),@apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Solicitante where nombre = @nombre and apellido = @apellido
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarIdSolicitante" IS 
{create PROCEDURE DBA."ssp_BuscarIdSolicitante"(@nombre char(50), @apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select * from Solicitante where nombre=@nombre and apellido=@apellido
END
}
go

create procedure DBA.ssp_BuscarxId_Usuario(@id_user bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Usuario where id_usuario = @id_user
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarxId_Usuario" IS 
{create PROCEDURE DBA."ssp_BuscarxId_Usuario"(@id_user bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	Select * FROM Usuario where id_usuario = @id_user
END
}
go

create procedure DBA.ssp_MostrarIdParroquia(@id_pa bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Parroquia where id_parroquia = @id_pa
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_MostrarIdParroquia" IS 
{create PROCEDURE DBA."ssp_MostrarIdParroquia"(@id_pa bigint)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	Select * from Parroquia where id_parroquia=@id_pa
END
}
go

create procedure DBA.ssp_IngresarCiudad(@nombre_ciudad char(50),@nombre_provincia char(50),@mensaje char(100) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @id_provi bigint
  declare @nombre_cui char(50)
  select @nombre_cui=(select ciu.nombre from Ciudad as ciu where nombre = @nombre_ciudad)
  if(@nombre_cui = @nombre_ciudad)
    begin
      select @mensaje='La ciudad ya se encuentra ingresada'
      return
    end
  else
    begin transaction
  select @id_provi=(select provi.id_provincia from Provincia as provi where nombre = @nombre_provincia)
  insert into Ciudad(nombre,id_provincia) values(@nombre_ciudad,@id_provi)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarCiudad" IS 
{create PROCEDURE DBA."ssp_IngresarCiudad"(@nombre_ciudad char(50),@nombre_provincia char(50), @mensaje char(100) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @id_provi bigint
	declare @nombre_cui char(50)
	
	select @nombre_cui = (select ciu.nombre from Ciudad ciu where nombre=@nombre_ciudad)
	if(@nombre_cui = @nombre_ciudad)
		begin
			select @mensaje='La ciudad ya se encuentra ingresada'
			return
		end
	else
	
	begin transaction 
	select @id_provi = (select provi.id_provincia from Provincia provi where nombre=@nombre_provincia)
	insert into Ciudad(nombre,id_provincia) values(@nombre_ciudad,@id_provi) 
		if(@@error <> 0)
	    	begin
	   		  	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
END
}
go

create procedure DBA.ssp_IngresarRegistroCivil(@fecha_nacimiento date,@fecha_inscripcion date,@tomo char(50),@anio char(50),@folio char(50),@acta char(50),@lugar char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @numacta char(50)
  select @numacta=(select rc.acta from Registro_Civil as rc where acta = @acta)
  if(@numacta = @acta)
    begin
      select @mensaje='El acta ya se encuentra registrada'
      return
    end
  else
    begin transaction
  insert into Registro_Civil(fecha_nacimiento,fecha_inscripcion,tomo,anio,folio,acta,lugar) values(@fecha_nacimiento,@fecha_inscripcion,@tomo,@anio,@folio,@acta,@lugar)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarRegistroCivil" IS 
{create PROCEDURE DBA."ssp_IngresarRegistroCivil"(@fecha_nacimiento date, @fecha_inscripcion date, @tomo char(50), @anio char(50), @folio char(50), @acta char(50), @lugar char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @numacta char(50)
	select @numacta = (select rc.acta from Registro_Civil rc where acta=@acta)
	if(@numacta = @acta)
		begin
			select @mensaje='El acta ya se encuentra registrada'
			return
		end
	else
	begin transaction 
	insert into Registro_Civil(fecha_nacimiento,fecha_inscripcion,tomo,anio,folio,acta,lugar) values(@fecha_nacimiento, @fecha_inscripcion, @tomo, @anio, @folio, @acta, @lugar) 
		if(@@error <> 0)
	    	begin
	   			select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
end
}
go

create procedure DBA.ssp_IngresarBautizo(@id_bautizo_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_bautizo date,@observacion char(100),@estado bit,@id_bautizado bigint,@id_padre bigint,@id_madre bigint,@id_padrino bigint,@id_madrina bigint,@id_parroquia bigint,@id_rc bigint,@id_ministro bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @id_bautiz char(50)
  select @id_bautiz=(select Bautizar.id_bautizo_libro from Bautizar where id_bautizo_libro = @id_bautizo_libro)
  if(@id_bautiz = @id_bautizo_libro)
    begin
      select @mensaje='El bautizo ya se encuentra registrado'
      return
    end
  else
    begin transaction
  insert into Bautizar(id_bautizo_libro,num_libro,folio_libro,anio_libro,fecha_bautizo,observacion,estado,id_bautizado,id_padre,id_madre,id_padrino,id_madrina,id_parroquia,id_rc,id_ministro) values(
    @id_bautizo_libro,@num_libro,@folio_libro,@anio_libro,@fecha_bautizo,@observacion,@estado,@id_bautizado,@id_padre,@id_madre,@id_padrino,@id_madrina,@id_parroquia,@id_rc,@id_ministro)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarBautizo" IS 
{create PROCEDURE DBA."ssp_IngresarBautizo"(@id_bautizo_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_bautizo date,@observacion char(100),@estado bit,@id_bautizado bigint,@id_padre bigint,@id_madre bigint,@id_padrino bigint,@id_madrina bigint,@id_parroquia bigint,@id_rc bigint,@id_ministro bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @id_bautiz char(50)
    select	@id_bautiz = (select Bautizar.id_bautizo_libro from Bautizar where id_bautizo_libro=@id_bautizo_libro)
	if(@id_bautiz = @id_bautizo_libro)
		begin
			select @mensaje='El bautizo ya se encuentra registrado'
			return
		end
	else
	begin transaction 
	insert into Bautizar(id_bautizo_libro,num_libro,folio_libro,anio_libro,fecha_bautizo,observacion,estado,id_bautizado,id_padre,id_madre,id_padrino,id_madrina,id_parroquia,id_rc,id_ministro)
			 values(@id_bautizo_libro,@num_libro,@folio_libro,@anio_libro,@fecha_bautizo,@observacion,@estado,@id_bautizado,@id_padre,@id_madre,@id_padrino,@id_madrina,@id_parroquia,@id_rc,@id_ministro) 
		if(@@error <> 0)
	    	begin
	   		 	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    		select @mensaje='okey'
	      		commit transaction
	   	    end
end
}
go

create procedure DBA.ssp_IngresarUsuarioMinistro(@nombre_padre char(50),@apellido_padre char(50),@cargo_padre char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @fname char(50)
  declare @lname char(50)
  declare @carg char(50)
  select @fname=(select Usuario.nombre from Usuario where nombre = @nombre_padre)
  select @lname=(select Usuario.apellido from Usuario where apellido = @apellido_padre)
  select @carg=(select Usuario.cargo from Usuario where cargo = @cargo_padre)
  if((@fname = @nombre_padre) and(@lname = @apellido_padre) and(@carg = @cargo_padre))
    begin
      select @mensaje='Ya se encuentra el ministro registrado en la Base'
      return
    end
  else
    insert into Usuario(nombre,apellido,cargo) values(@nombre_padre,@apellido_padre,@cargo_padre)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarUsuarioMinistro" IS 
{create PROCEDURE DBA."ssp_IngresarUsuarioMinistro"(@nombre_padre char(50),@apellido_padre char(50),@cargo_padre char(50), @mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @fname char(50)
 	declare @lname char(50)
	declare @carg char(50)
	select @fname = (select Usuario.nombre from Usuario where nombre=@nombre_padre)
	select @lname = (select Usuario.apellido from Usuario where apellido=@apellido_padre)
	select @carg = (select Usuario.cargo from Usuario where cargo=@cargo_padre)
  
	if((@fname = @nombre_padre) and (@lname = @apellido_padre) and (@carg = @cargo_padre))
		begin
			select @mensaje='Ya se encuentra el ministro registrado en la Base'
			return
		end
	else
		insert into Usuario(nombre,apellido,cargo) values(@nombre_padre,@apellido_padre,@cargo_padre)
		if(@@error <> 0)
    	begin
      		select @mensaje='Error en Base de Datos'
      		rollback transaction
    	end
  		else
    	begin
      		select @mensaje='okey'
      		commit transaction
    	end
END
}
go

create procedure DBA.ssp_IngresarParroquia(@nombre char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @nombre_pa char(50)
  select @nombre_pa=(select Parroquia.nombre from Parroquia where nombre = @nombre)
  if(@nombre_pa = @nombre)
    begin
      select @mensaje='La parroquia ya se encuentra Registrada'
      return
    end
  else
    begin transaction
  insert into Parroquia(nombre) values(@nombre)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarParroquia" IS 
{create PROCEDURE DBA."ssp_IngresarParroquia"(@nombre char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @nombre_pa char(50)
	select @nombre_pa = (select Parroquia.nombre from Parroquia where nombre=@nombre)
	
	if(@nombre_pa = @nombre)
		begin
			select @mensaje='La parroquia ya se encuentra Registrada'
			return 
		end
	else
	begin transaction
	insert into Parroquia(nombre) values(@nombre)
		if(@@error <> 0)
	    	begin
	   		 	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	    select @mensaje='okey'
	      		commit transaction
	   	    end
END
}
go

create procedure DBA.ssp_Todas_Provincia
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from Provincia
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_Todas_Provincia" IS 
{create PROCEDURE DBA."ssp_Todas_Provincia"()
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	Select * from Provincia	
END
}
go

create procedure DBA.ssp_ObtenerIdsProvincias
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select Provincia.id_provincia from Provincia
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ObtenerIdsProvincias" IS 
{create PROCEDURE DBA."ssp_ObtenerIdsProvincias"()
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select Provincia.id_provincia from Provincia
END
}
go

create procedure DBA.ssp_ObtenerNombresProvincias
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select Provincia.nombre from Provincia
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ObtenerNombresProvincias" IS 
{create PROCEDURE DBA."ssp_ObtenerNombresProvincias"()
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select Provincia.nombre from Provincia
END
}
go

create procedure DBA.ssp_BuscarParroco
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select nombre,apellido,cargo from Usuario where tipo_usuario = 'Administrador'
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarParroco" IS 
{create PROCEDURE DBA."ssp_BuscarParroco"()
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select nombre,apellido,cargo from Usuario where tipo_usuario='Administrador'
END
}
go

create procedure DBA.ssp_BuscarComulgarxSolicitante(@nombre char(50),@apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select* from ComulgarxPrimeraVez as b,Solicitante as c where(c.nombre = @nombre) and(c.apellido = @apellido) and(b.id_comulgado = c.id_solicitante) and(c.tipo = 'comulgado')
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarComulgarxSolicitante" IS 
{create PROCEDURE DBA."ssp_BuscarComulgarxSolicitante"(@nombre char(50), @apellido char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	SELECT * FROM ComulgarxPrimeraVez b, Solicitante c WHERE (c.nombre = @nombre) AND (c.apellido =@apellido) AND (b.id_comulgado=c.id_solicitante) AND (c.tipo='comulgado')
END
}
go

create procedure DBA.anular_bautizo(@id_bautizo char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update Bautizar set estado = 0 where id_bautizo_libro = @id_bautizo
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."anular_bautizo" IS 
{create PROCEDURE DBA."anular_bautizo"(@id_bautizo char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	update Bautizar set estado=0 where id_bautizo_libro = @id_bautizo
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END


}
go

create procedure DBA.anular_comunion(@id_comunionLibro char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update ComulgarxPrimeraVez set estado = 0 where id_comunion_libro = @id_comunionLibro
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."anular_comunion" IS 
{create PROCEDURE DBA."anular_comunion"(@id_comunionLibro char(50), @mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	update ComulgarxPrimeraVez set estado=0 where id_comunion_libro = @id_comunionLibro
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END


}
go

create procedure DBA.anular_confirmacion(@id_confirmacionLibro char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update Confirmar set estado = 0 where id_confirmacion_libro = @id_confirmacionLibro
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."anular_confirmacion" IS 
{create PROCEDURE DBA."anular_confirmacion"(@id_confirmacionLibro char(50), @mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	update Confirmar set estado=0 where id_confirmacion_libro = @id_confirmacionLibro
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END


}
go

create procedure DBA.anular_matrimonio(@id_matrimonioLibro char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update Casar set estado = 0 where id_matrimonio_libro = @id_matrimonioLibro
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."anular_matrimonio" IS 
{create PROCEDURE DBA."anular_matrimonio"(@id_matrimonioLibro char(50), @mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	update Casar set estado=0 where id_matrimonio_libro = @id_matrimonioLibro
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END


}
go

create procedure DBA.Modificar_Bautizo(@id_bautizo bigint,@id_bautLibro char(50),@numl char(50),@folio char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update Bautizar set id_bautizo_libro = @id_bautLibro,num_libro = @numl where id_bautizo = @id_bautizo
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."Modificar_Bautizo" IS 
{create PROCEDURE DBA."Modificar_Bautizo"(@id_bautizo bigint,@id_bautLibro char(50),@numl char(50),@folio char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update Bautizar set id_bautizo_libro=@id_bautLibro,num_libro=@numl where id_bautizo=@id_bautizo
END
}
go

create procedure DBA.ssp_InsertarSolicitante(@nombre char(50),@apellido char(50),@direccion char(50),@sexo char(50),@tipo char(50),@id_ciudad bigint,@id_usuario bigint,@mensaje char(50) output)
as
begin
  declare @nombre_soli char(50)
  declare @apellido_soli char(50)
  declare @tipo_soli char(50)
  select @nombre_soli=(select soli.nombre from Solicitante as soli where soli.nombre = @nombre and soli.apellido = @apellido and soli.tipo = @tipo)
  select @apellido_soli=(select soli.apellido from Solicitante as soli where soli.nombre = @nombre and soli.apellido = @apellido and soli.tipo = @tipo)
  select @tipo_soli=(select soli.tipo from Solicitante as soli where soli.nombre = @nombre and soli.apellido = @apellido and soli.tipo = @tipo)
  if((@nombre_soli = @nombre) and(@apellido_soli = @apellido) and(@tipo_soli = @tipo))
    begin
      select @mensaje='El solicitante ya se encuentra registrado'
      return
    end
  begin transaction
  insert into Solicitante(nombre,apellido,direccion,sexo,tipo,id_ciudad,id_usuario) values(@nombre,@apellido,@direccion,@sexo,@tipo,@id_ciudad,@id_usuario)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_InsertarSolicitante" IS 
{create PROCEDURE DBA."ssp_InsertarSolicitante"(@nombre char(50), @apellido char(50), @direccion char(50), @sexo char(50), @tipo char(50),@id_ciudad bigint, @id_usuario bigint, @mensaje char(50) output)
AS
BEGIN
	declare @nombre_soli char(50)
	declare @apellido_soli char(50)
	declare @tipo_soli char(50)
	select 	@nombre_soli = (select soli.nombre from Solicitante soli where soli.nombre=@nombre and soli.apellido=@apellido and soli.tipo=@tipo)
	select 	@apellido_soli = (select soli.apellido from Solicitante soli where soli.nombre=@nombre and soli.apellido=@apellido and soli.tipo=@tipo)
	select 	@tipo_soli = (select soli.tipo from Solicitante soli where soli.nombre=@nombre and soli.apellido=@apellido and soli.tipo=@tipo)
	if((@nombre_soli = @nombre) and (@apellido_soli = @apellido) and (@tipo_soli = @tipo))
		begin
			select @mensaje='El solicitante ya se encuentra registrado'
			return
		end
	begin transaction 
	insert into Solicitante(nombre,apellido,direccion,sexo,tipo,id_ciudad,id_usuario)values(@nombre,@apellido,@direccion,@sexo,@tipo,@id_ciudad,@id_usuario)
		if(@@error <> 0)
	    	begin
	   		   	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
end
}
go

create procedure DBA.ssp_IngresarMatrimonio(@id_matrimonio_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_matrimonio date,@observacion char(100),@estado bit,@id_esposo bigint,@id_esposa bigint,@id_padre_esposo bigint,@id_madre_esposo bigint,@id_padre_esposa bigint,@id_madre_esposa bigint,@id_padrino bigint,@id_madrina bigint,@id_parroquia bigint,@id_rc bigint,@id_ministro bigint,@mensaje char(50) output)
as
begin
  declare @id_matrimonio char(50)
  select @id_matrimonio=(select Casar.id_matrimonio_libro from Casar where id_matrimonio_libro = @id_matrimonio_libro)
  if(@id_matrimonio = @id_matrimonio_libro)
    begin
      select @mensaje='El acta de matrimonio ya se encuentra registrado'
      return
    end
  else
    begin transaction
  insert into Casar(id_matrimonio_libro,num_libro,folio_libro,anio_libro,
    fecha_matrimonio,observacion,estado,
    id_esposo,id_esposa,id_padre_esposo,id_madre_esposo,id_padre_esposa,id_madre_esposa,
    id_padrino,id_madrina,id_parroquia,id_rc,id_ministro) values(
    @id_matrimonio_libro,@num_libro,@folio_libro,@anio_libro,
    @fecha_matrimonio,@observacion,@estado,
    @id_esposo,@id_esposa,@id_padre_esposo,@id_madre_esposo,@id_padre_esposa,@id_madre_esposa,
    @id_padrino,@id_madrina,@id_parroquia,@id_rc,@id_ministro)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarMatrimonio" IS 
{create PROCEDURE DBA."ssp_IngresarMatrimonio"(@id_matrimonio_libro char(50), @num_libro char(50), @folio_libro char(50), @anio_libro char(50),
 @fecha_matrimonio date, @observacion char(100), @estado bit,
 @id_esposo bigint, @id_esposa bigint, @id_padre_esposo bigint, @id_madre_esposo bigint, @id_padre_esposa bigint, @id_madre_esposa bigint,
 @id_padrino bigint, @id_madrina bigint, @id_parroquia bigint, @id_rc bigint, @id_ministro bigint, @mensaje char(50) output )
AS
BEGIN
	declare @id_matrimonio char(50)
    select	@id_matrimonio = (select Casar.id_matrimonio_libro from Casar where id_matrimonio_libro=@id_matrimonio_libro)
	if(@id_matrimonio = @id_matrimonio_libro)
		begin
			select @mensaje='El acta de matrimonio ya se encuentra registrado'
			return
		end
	else
	begin transaction 
	insert into Casar(id_matrimonio_libro, num_libro, folio_libro, anio_libro,
				fecha_matrimonio, observacion, estado, 
				id_esposo, id_esposa, id_padre_esposo, id_madre_esposo, id_padre_esposa, id_madre_esposa, 
				id_padrino, id_madrina, id_parroquia, id_rc, id_ministro)
			 values(@id_matrimonio_libro, @num_libro, @folio_libro, @anio_libro,
				@fecha_matrimonio, @observacion, @estado, 
				@id_esposo, @id_esposa, @id_padre_esposo, @id_madre_esposo, @id_padre_esposa, @id_madre_esposa, 
				@id_padrino, @id_madrina, @id_parroquia, @id_rc, @id_ministro)
		if(@@error <> 0)
	    	begin
	   		   	select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
	
END
}
go

create procedure DBA.ssp_ModificarRegistroCivil(@id_rc bigint,@fecha_nacimiento date,@fecha_inscripcion date,@tomo char(50),@anio char(50),@folio char(50),@acta char(50),@lugar char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update Registro_Civil set fecha_nacimiento = @fecha_nacimiento,fecha_inscripcion = @fecha_inscripcion,tomo = @tomo,anio = @anio,folio = @folio,acta = @acta,lugar = @lugar where id_rc = @id_rc
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarRegistroCivil" IS 
{create PROCEDURE DBA."ssp_ModificarRegistroCivil"(@id_rc bigint,@fecha_nacimiento date,@fecha_inscripcion date,@tomo char(50),@anio char(50),@folio char(50),@acta char(50),@lugar char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update Registro_Civil set fecha_nacimiento=@fecha_nacimiento,fecha_inscripcion=@fecha_inscripcion,tomo=@tomo,anio=@anio,folio=@folio,acta=@acta,lugar=@lugar where id_rc=@id_rc	
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.ssp_ModificarBautizo(@id_baut bigint,@id_bautizo_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_bautizo char(50),@observacion char(50),@id_ministro char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update Bautizar set id_bautizo_libro = @id_bautizo_libro,num_libro = @num_libro,folio_libro = @folio_libro,anio_libro = @anio_libro,fecha_bautizo = @fecha_bautizo,observacion = @observacion,id_ministro = @id_ministro where id_bautizo = @id_baut
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarBautizo" IS 
{create PROCEDURE DBA."ssp_ModificarBautizo"(@id_baut bigint,@id_bautizo_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_bautizo char(50),@observacion char(50),@id_ministro char(50),@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update Bautizar set id_bautizo_libro=@id_bautizo_libro,num_libro=@num_libro,folio_libro=@folio_libro,anio_libro=@anio_libro,fecha_bautizo=@fecha_bautizo,observacion=@observacion,id_ministro=@id_ministro where id_bautizo=@id_baut
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.ssp_ModificarComunion(@id_comu bigint,@id_comunion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_comunion date,@edad integer,@estadoCivil char(50),@institucion char(50),@nivel char(50),@observacion char(100),@id_ministro bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update ComulgarxPrimeraVez set
    id_comunion_libro = @id_comunion_libro,num_libro = @num_libro,folio_libro = @folio_libro,
    anio_libro = @anio_libro,fecha_comunion = @fecha_comunion,edad = @edad,estadoCivilPadres = @estadoCivil,
    name_institucion = @institucion,nivel = @nivel,observacion = @observacion,id_ministro = @id_ministro where
    id_comunion = @id_comu
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarComunion" IS 
{create PROCEDURE DBA."ssp_ModificarComunion"
(@id_comu bigint,@id_comunion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),
@fecha_comunion date,@edad integer,@estadoCivil char(50),@institucion char(50),
@nivel char(50),@observacion char(100), @id_ministro bigint, @mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update ComulgarxPrimeraVez
		set id_comunion_libro=@id_comunion_libro, num_libro=@num_libro, folio_libro=@folio_libro,
		anio_libro=@anio_libro, fecha_comunion=@fecha_comunion, edad=@edad, estadoCivilPadres=@estadoCivil,
		name_institucion=@institucion,nivel=@nivel,observacion=@observacion,id_ministro=@id_ministro	
		where id_comunion=@id_comu
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END

}
go

create procedure DBA.ssp_AnularUsuario(@id_usuario bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update Usuario set estado = 0 where id_usuario = @id_usuario
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_AnularUsuario" IS 
{create PROCEDURE DBA."ssp_AnularUsuario"(@id_usuario bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	begin transaction
	update Usuario set estado=0 where id_usuario = @id_usuario
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.ssp_ModificarUsuario(@clave char(50),@usuario char(50),@nombre char(50),@apellido char(50),@tipo_usuario char(50),@cargo char(50),@direccion char(50),@telefono1 char(50),@telefono2 char(50),@id_ciudad bigint,@id_parroquia bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  begin transaction
  update Usuario set clave = @clave,usuario = @usuario,nombre = @nombre,apellido = @apellido,tipo_usuario = @tipo_usuario,cargo = @cargo,direccion = @direccion,telefono1 = @telefono1,telefono2 = @telefono2,id_ciudad = @id_ciudad,id_parroquia = @id_parroquia where usuario = @usuario
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarUsuario" IS 
{create PROCEDURE DBA."ssp_ModificarUsuario"(@clave char(50),@usuario char(50),@nombre char(50),@apellido char(50),@tipo_usuario char(50),@cargo char(50),@direccion char(50),@telefono1 char(50),@telefono2 char(50),@id_ciudad bigint,@id_parroquia bigint,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	
	begin transaction
	update Usuario set clave=@clave,usuario=@usuario,nombre=@nombre,apellido=@apellido,tipo_usuario=@tipo_usuario,cargo=@cargo,direccion=@direccion,telefono1=@telefono1,telefono2=@telefono2,id_ciudad=@id_ciudad,id_parroquia=@id_parroquia where usuario=@usuario
	if(@@error <> 0)
	    	begin
	   			select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end	
END
}
go

create procedure DBA.ssp_IngresarUsuario(@clave char(50),@usuario char(50),@nombre char(50),@apellido char(50),@tipo_usuario char(50),@cargo char(50),@direccion char(50),@telefono1 char(50),@telefono2 char(50),@id_ciudad bigint,@id_parroquia bigint,@estado bit,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  declare @userr char(50)
  declare @unombre char(50)
  declare @uapellido char(50)
  select @userr=(select Usuario.usuario from Usuario where usuario = @usuario)
  select @unombre=(select Usuario.nombre from Usuario where nombre = @nombre and apellido = @apellido)
  select @uapellido=(select Usuario.apellido from Usuario where nombre = @nombre and apellido = @apellido)
  if(@usuario = @userr)
    begin
      select @mensaje='Ya se encuentra el usuario'
      return
    end
  if(@nombre = @unombre and @apellido = @uapellido)
    begin
      select @mensaje='Ya tiene creado un usuario'
      return
    end
  begin transaction
  insert into Usuario(clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado) values(@clave,@usuario,@nombre,@apellido,@tipo_usuario,@cargo,@direccion,@telefono1,@telefono2,@id_ciudad,@id_parroquia,@estado)
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_IngresarUsuario" IS 
{create PROCEDURE DBA."ssp_IngresarUsuario"(@clave char(50),@usuario char(50),@nombre char(50),@apellido char(50),@tipo_usuario char(50),@cargo char(50),@direccion char(50),@telefono1 char(50),@telefono2 char(50),@id_ciudad bigint,@id_parroquia bigint,@estado bit,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	declare @userr char(50) 
	declare @unombre char(50)
	declare @uapellido char(50)
	
	select @userr = (select Usuario.usuario from Usuario where usuario=@usuario)
	select @unombre = (select Usuario.nombre from Usuario where nombre=@nombre and apellido=@apellido)
	select @uapellido = (select Usuario.apellido from Usuario where nombre=@nombre and apellido=@apellido)
	
	if(@usuario = @userr)
	begin
		select @mensaje='Ya se encuentra el usuario'
		return
	end
	if(@nombre = @unombre and @apellido= @uapellido)
	begin
		select @mensaje='Ya tiene creado un usuario'
		return
	end
	begin transaction
	insert into Usuario(clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado) values(@clave,@usuario,@nombre,@apellido,@tipo_usuario,@cargo,@direccion,@telefono1,@telefono2,@id_ciudad,@id_parroquia,@estado)
	if(@@error <> 0)
	    	begin
	   			select @mensaje='Error en Base de Datos'
	      		rollback transaction
	    	end
		else
	    	begin
	    	  	select @mensaje='okey'
	      		commit transaction
	   	    end
END
}
go

create procedure DBA.ssp_BuscarUsuario(@nombre char(50),@apellido char(50),@cargo char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  select id_usuario,clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado from Usuario where nombre = @nombre and apellido = @apellido and cargo = @cargo
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_BuscarUsuario" IS 
{create PROCEDURE DBA."ssp_BuscarUsuario"(@nombre char(50),@apellido char(50),@cargo char(50))
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	select id_usuario,clave,usuario,nombre,apellido,tipo_usuario,cargo,direccion,telefono1,telefono2,id_ciudad,id_parroquia,estado from Usuario where nombre=@nombre and apellido=@apellido and cargo=@cargo
END
}
go

create procedure DBA.ssp_ModificarConfirmacion(@id_confir bigint,@id_confirmacion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_confir date,@ciud_Bautizo char(50),@iglesia char(50),@observacion char(100),@id_ministro bigint,@f_naci date,@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
as
begin
  update Confirmar set
    id_confirmacion_libro = @id_confirmacion_libro,num_libro = @num_libro,folio_libro = @folio_libro,anio_libro = @anio_libro,
    fecha_confirmacion = @fecha_confir,ciudad_bautizo = @ciud_Bautizo,iglesia_bautizo = @iglesia,observacion = @observacion,
    id_ministro = @id_ministro,fecha_nacimiento = @f_naci where
    id_confirmacion = @id_confir
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarConfirmacion" IS 
{create PROCEDURE DBA."ssp_ModificarConfirmacion"(@id_confir bigint,@id_confirmacion_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),
@fecha_confir date,@ciud_Bautizo char(50),@iglesia char(50),@observacion char(100),@id_ministro bigint,@f_naci date,
@mensaje char(50) output)
/* ( @parameter_name parameter_value [= default_value] [OUTPUT], ... ) */
AS
BEGIN
	update Confirmar 
	set id_confirmacion_libro=@id_confirmacion_libro, num_libro=@num_libro, folio_libro=@folio_libro, anio_libro=@anio_libro,
	fecha_confirmacion=@fecha_confir, ciudad_bautizo=@ciud_Bautizo, iglesia_bautizo=@iglesia, observacion=@observacion,
	id_ministro=@id_ministro, fecha_nacimiento=@f_naci 
	where id_confirmacion=@id_confir
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go

create procedure DBA.ssp_ModificarMatrimonio(@id_mat bigint,@id_matrimonio_libro char(50),@num_libro char(50),@folio_libro char(50),@anio_libro char(50),@fecha_matrimonio date,@observacion char(100),@id_ministro bigint,@mensaje char(50) output)
as
begin
  update Casar set
    id_matrimonio_libro = @id_matrimonio_libro,num_libro = @num_libro,folio_libro = @folio_libro,anio_libro = @anio_libro,
    fecha_matrimonio = @fecha_matrimonio,observacion = @observacion,id_ministro = @id_ministro where id_matrimonio = @id_mat
  if(@@error <> 0)
    begin
      select @mensaje='Error en Base de Datos'
      rollback transaction
    end
  else
    begin
      select @mensaje='okey'
      commit transaction
    end
end
go
COMMENT TO PRESERVE FORMAT ON PROCEDURE "DBA"."ssp_ModificarMatrimonio" IS 
{create PROCEDURE DBA."ssp_ModificarMatrimonio"(@id_mat bigint, @id_matrimonio_libro char(50), @num_libro char(50), @folio_libro char(50), @anio_libro char(50),
@fecha_matrimonio date, @observacion char(100), @id_ministro bigint, @mensaje char(50) output)
AS
BEGIN
	update Casar 
	set id_matrimonio_libro=@id_matrimonio_libro, num_libro=@num_libro, folio_libro=@folio_libro, anio_libro=@anio_libro,
	fecha_matrimonio=@fecha_matrimonio, observacion=@observacion, id_ministro=@id_ministro where id_matrimonio=@id_mat
	if(@@error <> 0)
		    	begin
		   		   	select @mensaje='Error en Base de Datos'
		      		rollback transaction
		    	end
			else
		    	begin
		    	  	select @mensaje='okey'
		      		commit transaction
		   	    end
END
}
go
commit work
go


-------------------------------------------------
--   Create triggers
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create SQL remote definitions
-------------------------------------------------

CREATE REMOTE TYPE "FILE" ADDRESS ''
go
CREATE REMOTE TYPE "MAPI" ADDRESS ''
go
CREATE REMOTE TYPE "VIM" ADDRESS ''
go
CREATE REMOTE TYPE "SMTP" ADDRESS ''
go
CREATE REMOTE TYPE "FTP" ADDRESS ''
go
commit work
go


-------------------------------------------------
--   Remove SQL remote definitions
-------------------------------------------------

commit work
go


-------------------------------------------------
--   RepServer Commit Offsets
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Check view definitions
-------------------------------------------------

GRANT CONNECT TO "DBA" IDENTIFIED BY ENCRYPTED '\x06\xD6\x0C\x94\x62\xCF\x20\x7C\xD3\x9A\x8C\x58\xB8\xE1\xA4\x0D\x2C\xF8\xCB\x6C\xCC\x65\xE1\xEC\x34\x47\xEF\xDC\x10\x10\x8F\x3F\x25\x6C\xA7\x50'
go
commit work
go


-------------------------------------------------
--   Create integrated logins
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create events
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Create services
-------------------------------------------------

commit work
go


-------------------------------------------------
--   Set option values
-------------------------------------------------


SET OPTION Statistics =
go
SET OPTION Date_order =
go
SET OPTION describe_java_format=
go
SET OPTION PUBLIC.Preserve_source_format=
go


--
--SQL Option Statements for user PUBLIC
--

SET OPTION "PUBLIC"."Login_procedure" = 'sp_login_environment'
go
SET OPTION "PUBLIC"."Replication_error" = ''
go
SET OPTION "PUBLIC"."Replicate_all" = 'Off'
go
SET OPTION "PUBLIC"."Recovery_time" = '2'
go
SET OPTION "PUBLIC"."Quoted_identifier" = 'On'
go
SET OPTION "PUBLIC"."Quote_all_identifiers" = 'Off'
go
SET OPTION "PUBLIC"."Quiet" = 'Off'
go
SET OPTION "PUBLIC"."Query_plan_on_open" = 'Off'
go
SET OPTION "PUBLIC"."Qualify_owners" = 'On'
go
SET OPTION "PUBLIC"."Prevent_article_pkey_update" = 'Off'
go
SET OPTION "PUBLIC"."Preserve_source_format" = 'On'
go
SET OPTION "PUBLIC"."Prefetch" = 'On'
go
SET OPTION "PUBLIC"."Precision" = '30'
go
SET OPTION "PUBLIC"."Pinned_cursor_percent_of_cache" = '10'
go
SET OPTION "PUBLIC"."Percent_as_comment" = 'On'
go
SET OPTION "PUBLIC"."Output_nulls" = ''
go
SET OPTION "PUBLIC"."Output_length" = '0'
go
SET OPTION "PUBLIC"."Output_format" = 'ASCII'
go
SET OPTION "PUBLIC"."Optimization_logging" = 'Off'
go
SET OPTION "PUBLIC"."Optimization_level" = '9'
go
SET OPTION "PUBLIC"."Optimization_goal" = 'All-rows'
go
SET OPTION "PUBLIC"."On_tsql_error" = 'Conditional'
go
SET OPTION "PUBLIC"."On_error" = 'Prompt'
go
SET OPTION "PUBLIC"."On_Charset_conversion_failure" = 'Ignore'
go
SET OPTION "PUBLIC"."NULLS" = '(NULL)'
go
SET OPTION "PUBLIC"."Non_keywords" = ''
go
SET OPTION "PUBLIC"."Nearest_century" = '50'
go
SET OPTION "PUBLIC"."Min_table_size_for_histogram" = '1000'
go
SET OPTION "PUBLIC"."Min_password_length" = '0'
go
SET OPTION "PUBLIC"."Max_work_table_hash_size" = '20'
go
SET OPTION "PUBLIC"."Max_statement_count" = '50'
go
SET OPTION "PUBLIC"."Max_plans_cached" = '20'
go
SET OPTION "PUBLIC"."Replication_error_piece" = ''
go
SET OPTION "PUBLIC"."RI_Trigger_time" = 'After'
go
SET OPTION "PUBLIC"."Verify_all_columns" = 'Off'
go
SET OPTION "PUBLIC"."User_estimates" = 'Override-magic'
go
SET OPTION "PUBLIC"."Update_statistics" = 'On'
go
SET OPTION "PUBLIC"."Tsql_variables" = 'Off'
go
SET OPTION "PUBLIC"."Tsql_hex_constant" = 'On'
go
SET OPTION "PUBLIC"."Truncation_length" = '30'
go
SET OPTION "PUBLIC"."Truncate_with_auto_commit" = 'On'
go
SET OPTION "PUBLIC"."Truncate_timestamp_values" = 'Off'
go
SET OPTION "PUBLIC"."Truncate_date_values" = 'On'
go
SET OPTION "PUBLIC"."Timestamp_format" = 'YYYY-MM-DD HH:NN:SS.SSS'
go
SET OPTION "PUBLIC"."Time_format" = 'HH:NN:SS.SSS'
go
SET OPTION "PUBLIC"."Thread_swaps" = '18'
go
SET OPTION "PUBLIC"."Thread_stack" = '16384'
go
SET OPTION "PUBLIC"."Thread_count" = '0'
go
SET OPTION "PUBLIC"."Max_hash_size" = '10'
go
SET OPTION "PUBLIC"."TDS_Empty_string_is_null" = 'Off'
go
SET OPTION "PUBLIC"."Subscribe_by_remote" = 'On'
go
SET OPTION "PUBLIC"."String_rtruncation" = 'Off'
go
SET OPTION "PUBLIC"."Statistics" = '3'
go
SET OPTION "PUBLIC"."SR_TimeStamp_Format" = 'hh:nn:ss.Ssssss yyyy/mm/dd'
go
SET OPTION "PUBLIC"."SR_Time_Format" = 'hh:nn:ss.Ssssss'
go
SET OPTION "PUBLIC"."SR_Date_Format" = 'yyyy/mm/dd'
go
SET OPTION "PUBLIC"."SQLStart" = ''
go
SET OPTION "PUBLIC"."SQLConnect" = ''
go
SET OPTION "PUBLIC"."SQL_flagger_warning_level" = 'W'
go
SET OPTION "PUBLIC"."SQL_flagger_error_level" = 'W'
go
SET OPTION "PUBLIC"."Sort_Collation" = 'Internal'
go
SET OPTION "PUBLIC"."Screen_format" = 'Text'
go
SET OPTION "PUBLIC"."Scale" = '6'
go
SET OPTION "PUBLIC"."Save_remote_passwords" = 'On'
go
SET OPTION "PUBLIC"."Row_counts" = 'Off'
go
SET OPTION "PUBLIC"."Suppress_TDS_debugging" = 'Off'
go
SET OPTION "PUBLIC"."Max_cursor_count" = '50'
go
SET OPTION "PUBLIC"."Wait_for_commit" = 'Off'
go
SET OPTION "PUBLIC"."Login_mode" = 'Standard'
go
SET OPTION "PUBLIC"."Cooperative_commits" = 'On'
go
SET OPTION "PUBLIC"."Cooperative_commit_timeout" = '250'
go
SET OPTION "PUBLIC"."Conversion_error" = 'On'
go
SET OPTION "PUBLIC"."Continue_after_raiserror" = 'On'
go
SET OPTION "PUBLIC"."Compression" = '6'
go
SET OPTION "PUBLIC"."Commit_on_exit" = 'On'
go
SET OPTION "PUBLIC"."Command_delimiter" = ';'
go
SET OPTION "PUBLIC"."Close_on_endtrans" = 'On'
go
SET OPTION "PUBLIC"."Cis_rowset_size" = '50'
go
SET OPTION "PUBLIC"."Cis_option" = '0'
go
SET OPTION "PUBLIC"."Checkpoint_time" = '60'
go
SET OPTION "PUBLIC"."Char_OEM_Translation" = 'Detect'
go
SET OPTION "PUBLIC"."Chained" = 'On'
go
SET OPTION "PUBLIC"."Blocking_timeout" = '0'
go
SET OPTION "PUBLIC"."Blocking" = 'On'
go
SET OPTION "PUBLIC"."Blob_threshold" = '256'
go
SET OPTION "PUBLIC"."Bell" = 'On'
go
SET OPTION "PUBLIC"."Background_priority" = 'Off'
go
SET OPTION "PUBLIC"."Automatic_timestamp" = 'Off'
go
SET OPTION "PUBLIC"."Auto_refetch" = 'On'
go
SET OPTION "PUBLIC"."Auto_commit" = 'Off'
go
SET OPTION "PUBLIC"."Auditing" = 'Off'
go
SET OPTION "PUBLIC"."Assume_distinct_servers" = 'Off'
go
SET OPTION "PUBLIC"."Ansinull" = 'On'
go
SET OPTION "PUBLIC"."Ansi_update_constraints" = 'Cursors'
go
SET OPTION "PUBLIC"."Ansi_permissions" = 'On'
go
SET OPTION "PUBLIC"."Ansi_integer_overflow" = 'Off'
go
SET OPTION "PUBLIC"."Ansi_close_cursors_on_rollback" = 'Off'
go
SET OPTION "PUBLIC"."Ansi_blanks" = 'Off'
go
SET OPTION "PUBLIC"."Allow_nulls_by_default" = 'On'
go
SET OPTION "PUBLIC"."Database_authentication" = ''
go
SET OPTION "PUBLIC"."Verify_threshold" = '1000'
go
SET OPTION "PUBLIC"."Date_format" = 'YYYY-MM-DD'
go
SET OPTION "PUBLIC"."Default_timestamp_increment" = '1'
go
SET OPTION "PUBLIC"."Log_max_requests" = '100'
go
SET OPTION "PUBLIC"."Log_detailed_plans" = 'On'
go
SET OPTION "PUBLIC"."Lock_rejected_rows" = 'Off'
go
SET OPTION "PUBLIC"."Java_page_buffer_size" = '50'
go
SET OPTION "PUBLIC"."Java_namespace_size" = '4000000'
go
SET OPTION "PUBLIC"."Java_input_output" = 'Off'
go
SET OPTION "PUBLIC"."Java_heap_size" = '1000000'
go
SET OPTION "PUBLIC"."ISQL_quote" = ''''
go
SET OPTION "PUBLIC"."ISQL_plan_cursor_writability" = 'On'
go
SET OPTION "PUBLIC"."ISQL_plan_cursor_sensitivity" = 'ASENSITIVE'
go
SET OPTION "PUBLIC"."ISQL_plan" = 'Graphical'
go
SET OPTION "PUBLIC"."ISQL_log" = ''
go
SET OPTION "PUBLIC"."ISQL_field_separator" = ','
go
SET OPTION "PUBLIC"."ISQL_escape_character" = '\'
go
SET OPTION "PUBLIC"."ISQL_command_timing" = 'On'
go
SET OPTION "PUBLIC"."Date_order" = 'YMD'
go
SET OPTION "PUBLIC"."Isolation_level" = '0'
go
SET OPTION "PUBLIC"."Headings" = 'On'
go
SET OPTION "PUBLIC"."Global_database_id" = '2147483647'
go
SET OPTION "PUBLIC"."Float_as_double" = 'Off'
go
SET OPTION "PUBLIC"."First_day_of_week" = '7'
go
SET OPTION "PUBLIC"."Fire_triggers" = 'On'
go
SET OPTION "PUBLIC"."External_remote_options" = 'Off'
go
SET OPTION "PUBLIC"."Extended_join_syntax" = 'On'
go
SET OPTION "PUBLIC"."Exclude_operators" = ''
go
SET OPTION "PUBLIC"."Escape_character" = 'On'
go
SET OPTION "PUBLIC"."Echo" = 'On'
go
SET OPTION "PUBLIC"."Divide_by_zero_error" = 'On'
go
SET OPTION "PUBLIC"."Describe_Java_Format" = 'Varchar'
go
SET OPTION "PUBLIC"."Delete_old_logs" = 'Off'
go
SET OPTION "PUBLIC"."Delayed_commits" = 'Off'
go
SET OPTION "PUBLIC"."Delayed_commit_timeout" = '500'
go
SET OPTION "PUBLIC"."Input_format" = 'ASCII'
go


--
--SQL Option Statements for user DBA
--

SET OPTION "DBA"."ISQL_plan" = 'Graphical'
go
SET OPTION "DBA"."ISQL_command_timing" = 'On'
go
commit work
go


-------------------------------------------------
--   Destroy userids
-------------------------------------------------

commit work
go

