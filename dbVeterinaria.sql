USE [master]
GO
/****** Object:  Database [dbVeterinaria]    Script Date: 13/04/2017 0:17:09 ******/
CREATE DATABASE [dbVeterinaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbVeterinaria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\dbVeterinaria.ndf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbVeterinaria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\dbVeterinaria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbVeterinaria] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbVeterinaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbVeterinaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbVeterinaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbVeterinaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbVeterinaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbVeterinaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbVeterinaria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbVeterinaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbVeterinaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbVeterinaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbVeterinaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbVeterinaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbVeterinaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbVeterinaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbVeterinaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbVeterinaria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbVeterinaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbVeterinaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbVeterinaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbVeterinaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbVeterinaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbVeterinaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbVeterinaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbVeterinaria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbVeterinaria] SET  MULTI_USER 
GO
ALTER DATABASE [dbVeterinaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbVeterinaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbVeterinaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbVeterinaria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbVeterinaria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbVeterinaria]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cedula] [varchar](10) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Apellidos] [varchar](20) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Email] [varchar](25) NULL,
	[Telefono] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mascota_Vacunas](
	[IdMascota] [varchar](10) NOT NULL,
	[IdVacuna] [varchar](10) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Dosis] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMascota] ASC,
	[IdVacuna] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mascotas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mascotas](
	[IdMascota] [varchar](10) NOT NULL,
	[Nombre] [varchar](12) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Especie] [varchar](15) NOT NULL,
	[Raza] [varchar](15) NOT NULL,
	[IdVeterinario] [varchar](8) NOT NULL,
	[CedulaCliente] [varchar](10) NOT NULL,
	[Foto] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Usuario] [varchar](10) NOT NULL,
	[Clave] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vacunas](
	[IdVacuna] [varchar](10) NOT NULL,
	[TipoVacuna] [char](1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Veterinarios]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Veterinarios](
	[IdVeterinario] [varchar](8) NOT NULL,
	[Nombre] [varchar](15) NULL,
	[Apellidos] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVeterinario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Mascota_Vacunas]  WITH CHECK ADD  CONSTRAINT [fkMascota] FOREIGN KEY([IdMascota])
REFERENCES [dbo].[Mascotas] ([IdMascota])
GO
ALTER TABLE [dbo].[Mascota_Vacunas] CHECK CONSTRAINT [fkMascota]
GO
ALTER TABLE [dbo].[Mascota_Vacunas]  WITH CHECK ADD  CONSTRAINT [fkVacuna] FOREIGN KEY([IdVacuna])
REFERENCES [dbo].[Vacunas] ([IdVacuna])
GO
ALTER TABLE [dbo].[Mascota_Vacunas] CHECK CONSTRAINT [fkVacuna]
GO
ALTER TABLE [dbo].[Mascotas]  WITH CHECK ADD  CONSTRAINT [fkDueño] FOREIGN KEY([CedulaCliente])
REFERENCES [dbo].[Clientes] ([Cedula])
GO
ALTER TABLE [dbo].[Mascotas] CHECK CONSTRAINT [fkDueño]
GO
ALTER TABLE [dbo].[Mascotas]  WITH CHECK ADD  CONSTRAINT [fkVeterinario] FOREIGN KEY([IdVeterinario])
REFERENCES [dbo].[Veterinarios] ([IdVeterinario])
GO
ALTER TABLE [dbo].[Mascotas] CHECK CONSTRAINT [fkVeterinario]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCliente] (
	@cedula VARCHAR (10) ,@nombre VARCHAR (15),
	@apellidos VARCHAR (20),
	@direccion VARCHAR (100),
	@email VARCHAR (25),
	@telefono VARCHAR (10)
) AS
BEGIN
	UPDATE Clientes
  SET Nombre =@nombre, Apellidos=@apellidos , Direccion=@direccion, Email=@email, Telefono=@telefono
	WHERE Cedula = @cedula; 
END 
------

GO
/****** Object:  StoredProcedure [dbo].[ActualizarMascota]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarMascota] (
	@idMascota VARCHAR (10) ,@nombre VARCHAR (12),
	@fechaNacimiento DATETIME,
	@especie VARCHAR (15),
	@raza VARCHAR (15),
	@idVeterinario VARCHAR (8),
	@cedulaCliente VARCHAR (10),
	@foto VARCHAR (30)
) AS
BEGIN
	UPDATE Mascotas
	SET Nombre=@nombre, FechaNacimiento=@fechaNacimiento,
			Especie=@especie, Raza=@raza, IdVeterinario=@idVeterinario,
      CedulaCliente=@cedulaCliente,Foto=@foto
		WHERE IdMascota=@idMascota
	
END

GO
/****** Object:  StoredProcedure [dbo].[ActualizarMascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarMascota_Vacunas] (
	@idMascota VARCHAR (10) ,@idVacuna VARCHAR (10),
	@fecha DATETIME,
	@dosis VARCHAR (8)
) AS
BEGIN
	UPDATE Mascota_Vacunas
	SET Dosis =@dosis
	WHERE IdMascota=@idMascota AND IdVacuna=@idVacuna AND	Fecha=@fecha
END

GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------Usuarios--------------------------------------------------
CREATE PROCEDURE [dbo].[ActualizarUsuario] (
	@usuario VARCHAR (10) ,@clave VARCHAR (10)
) AS
BEGIN
	UPDATE Usuarios SET Clave = @clave WHERE Usuario = @usuario;
END 
GO
/****** Object:  StoredProcedure [dbo].[ActualizarVacuna]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarVacuna] (
	@idVacuna VARCHAR (10) ,@tipoVacuna CHAR (1),
	@descripcion VARCHAR (50)
) AS
BEGIN
	UPDATE Vacunas
SET TipoVacuna=@tipoVacuna, Descripcion=@descripcion
	WHERE	IdVacuna=@idVacuna
END 

GO
/****** Object:  StoredProcedure [dbo].[ActualizarVeterinario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarVeterinario] (
	@idVeterinario VARCHAR (10) ,@nombre VARCHAR (15),
	@apellidos VARCHAR (20),
	@direccion VARCHAR (100),
	@telefono VARCHAR (10)
) AS
BEGIN
	UPDATE Veterinarios
	SET Nombre=@nombre, Apellidos=@apellidos, Direccion=@direccion, Telefono=@telefono
	WHERE IdVeterinario=@idVeterinario
	
END 
------

GO
/****** Object:  StoredProcedure [dbo].[BuscarCliente]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarCliente] (@cedula VARCHAR(10)) AS
BEGIN
	SELECT *
FROM
	Clientes
WHERE
	Cedula = @cedula ;
END 

GO
/****** Object:  StoredProcedure [dbo].[BuscarMascota]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarMascota] (@idMascota VARCHAR(10)) AS
BEGIN
	SELECT *
FROM
	Mascotas
WHERE
	IdMascota =@idMascota
END 

GO
/****** Object:  StoredProcedure [dbo].[BuscarMascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarMascota_Vacunas] (
	@idMascota VARCHAR (10) ,@idVacuna VARCHAR (10),
	@fecha DATETIME
) AS
BEGIN
	SELECT *
FROM
	Mascota_Vacunas
WHERE
	IdMascota =@idMascota
AND IdVacuna =@idVacuna
AND Fecha =@fecha
END

GO
/****** Object:  StoredProcedure [dbo].[BuscarUsuario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarUsuario] (
	@usuario VARCHAR (10),@clave VARCHAR(10)
) AS
BEGIN
		SELECT *
FROM
	Usuarios
WHERE
	Usuario=@usuario AND Clave =@clave
END 

GO
/****** Object:  StoredProcedure [dbo].[BuscarVacuna]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarVacuna] (@idVacuna VARCHAR(10)) AS
BEGIN
	SELECT *
FROM
	Vacunas
WHERE
	IdVacuna = @idVacuna ;
END 

GO
/****** Object:  StoredProcedure [dbo].[BuscarVeterinario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarVeterinario] (@idVeterinario VARCHAR(10)) AS
BEGIN
	SELECT *
FROM
	Veterinarios
WHERE
	IdVeterinario = @idVeterinario ;
END 

GO
/****** Object:  StoredProcedure [dbo].[EliminarCliente]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarCliente] (@cedula VARCHAR(10)) AS
BEGIN
	DELETE
FROM
	Clientes
WHERE
	Cedula = @cedula ;
END 

GO
/****** Object:  StoredProcedure [dbo].[EliminarMascota]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarMascota] (@idMascota VARCHAR(10)) AS
BEGIN
	DELETE
FROM
	Mascotas
WHERE
	IdMascota =@idMascota
END 

GO
/****** Object:  StoredProcedure [dbo].[EliminarMascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarMascota_Vacunas] (
	@idMascota VARCHAR (10) ,@idVacuna VARCHAR (10),
	@fecha DATETIME
) AS
BEGIN
	DELETE
FROM
	Mascota_Vacunas
WHERE
	IdMascota =@idMascota
AND IdVacuna =@idVacuna
AND Fecha =@fecha
END

GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarUsuario] (
	@usuario VARCHAR (10)
) AS
BEGIN
		DELETE
FROM
	Usuarios
WHERE
	Usuario=@usuario
END 

GO
/****** Object:  StoredProcedure [dbo].[EliminarVacuna]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarVacuna] (@idVacuna VARCHAR(10)) AS
BEGIN
	DELETE
FROM
	Vacunas
WHERE
	IdVacuna = @idVacuna ;
END 

GO
/****** Object:  StoredProcedure [dbo].[EliminarVeterinario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarVeterinario] (@idVeterinario VARCHAR(10)) AS
BEGIN
	DELETE
FROM
	Veterinarios
WHERE
	IdVeterinario = @idVeterinario ;
END 

GO
/****** Object:  StoredProcedure [dbo].[InsertarCliente]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarCliente](
@cedula VARCHAR(10),@nombre VARCHAR(15),
@apellidos VARCHAR(20), @direccion VARCHAR(100), 
@email VARCHAR(25), @telefono VARCHAR(10)
)
AS
BEGIN
 INSERT INTO Clientes VALUES (@cedula,@nombre,@apellidos,@direccion,@email,@telefono)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarMascota]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarMascota](
@idMascota VARCHAR(10),@nombre VARCHAR(12),
@fechaNacimiento DATETIME, @especie VARCHAR(15), 
@raza VARCHAR(15), @idVeterinario VARCHAR(8),
@cedulaCliente VARCHAR(10), @foto VARCHAR(30)
)
AS
BEGIN
 INSERT INTO Mascotas VALUES (@idMascota,@nombre,@fechaNacimiento, @especie, 
															@raza, @idVeterinario,@cedulaCliente, @foto)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarMascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarMascota_Vacunas] (
	@idMascota VARCHAR (10) ,@idVacuna VARCHAR (10),
	@fecha DATETIME,
	@dosis VARCHAR (8)
) AS
BEGIN
	INSERT INTO Mascota_Vacunas
VALUES
	(
		@idMascota,
		@idVacuna,
		@fecha,
		@dosis
	)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarUsuario](@usuario VARCHAR(10),@clave VARCHAR(10))
AS
BEGIN
INSERT INTO Usuarios VALUES (@usuario,@clave); 
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarVacuna]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarVacuna](
@idVacuna VARCHAR(10),@tipoVacuna CHAR(1),
@descripcion VARCHAR(50)
)
AS
BEGIN
 INSERT INTO Vacunas VALUES (@idVacuna,@tipoVacuna,@descripcion)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertarVeterinario]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarVeterinario](
@idVeterinario VARCHAR(10),@nombre VARCHAR(15),
@apellidos VARCHAR(20), @direccion VARCHAR(100), 
@telefono VARCHAR(10)
)
AS
BEGIN
 INSERT INTO Veterinarios VALUES (@idVeterinario,@nombre,@apellidos,@direccion,@telefono)
END

GO
/****** Object:  StoredProcedure [dbo].[ListarClientes]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarClientes] AS
BEGIN
	SELECT *
FROM
	Clientes
END 

GO
/****** Object:  StoredProcedure [dbo].[ListarMascota_Vacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarMascota_Vacunas] AS
BEGIN
	SELECT *
FROM
	Mascota_Vacunas
END

GO
/****** Object:  StoredProcedure [dbo].[ListarMascotas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarMascotas]  AS
BEGIN
	SELECT *
FROM
	Mascotas
END 

GO
/****** Object:  StoredProcedure [dbo].[ListarUsuarios]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarUsuarios]
AS
BEGIN
		SELECT *
FROM
	Usuarios
END 

GO
/****** Object:  StoredProcedure [dbo].[ListarVacunas]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarVacunas]  AS
BEGIN
	SELECT *
FROM
	Vacunas
END 

GO
/****** Object:  StoredProcedure [dbo].[ListarVeterinarios]    Script Date: 13/04/2017 0:17:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarVeterinarios] AS
BEGIN
	SELECT *
FROM
	Veterinarios

END 

GO
USE [master]
GO
ALTER DATABASE [dbVeterinaria] SET  READ_WRITE 
GO
