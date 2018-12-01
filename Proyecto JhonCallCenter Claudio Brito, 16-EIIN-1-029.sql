USE [master]
GO
/****** Object:  Database [JhonCallcenter]    Script Date: 28/11/2018 0:16:59 ******/
CREATE DATABASE [JhonCallcenter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JhonCallcenter', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JhonCallcenter.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JhonCallcenter_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JhonCallcenter_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JhonCallcenter] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JhonCallcenter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JhonCallcenter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JhonCallcenter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JhonCallcenter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JhonCallcenter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JhonCallcenter] SET ARITHABORT OFF 
GO
ALTER DATABASE [JhonCallcenter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JhonCallcenter] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [JhonCallcenter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JhonCallcenter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JhonCallcenter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JhonCallcenter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JhonCallcenter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JhonCallcenter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JhonCallcenter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JhonCallcenter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JhonCallcenter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JhonCallcenter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JhonCallcenter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JhonCallcenter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JhonCallcenter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JhonCallcenter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JhonCallcenter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JhonCallcenter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JhonCallcenter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JhonCallcenter] SET  MULTI_USER 
GO
ALTER DATABASE [JhonCallcenter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JhonCallcenter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JhonCallcenter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JhonCallcenter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [JhonCallcenter]
GO
/****** Object:  Table [dbo].[Agentes/representates]    Script Date: 28/11/2018 0:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agentes/representates](
	[Agentes/representantesID] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Telefono] [varchar](13) NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](250) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Agentes/representates] PRIMARY KEY CLUSTERED 
(
	[Agentes/representantesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Campaña]    Script Date: 28/11/2018 0:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campaña](
	[CampañaID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Turno] [varchar](30) NULL,
 CONSTRAINT [PK_CampañaID] PRIMARY KEY CLUSTERED 
(
	[CampañaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/11/2018 0:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](80) NULL,
	[Telefono] [varchar](13) NULL,
	[CampañaID] [int] NULL,
	[Fecha de nacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_ClienteID] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicioalCliente]    Script Date: 28/11/2018 0:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicioalCliente](
	[ServicioalClienteID] [int] NOT NULL,
	[ServiciosID] [int] NULL,
	[ClienteID] [int] NULL,
	[Agentes/representantesID] [int] NULL,
	[Sevicioalcliente1] [varchar](50) NULL,
	[Servicioalcliente2] [varchar](50) NULL,
	[Servicioalcliente3] [varchar](50) NULL,
	[ClienteSatisfecho] [varchar](2) NULL,
 CONSTRAINT [PK_ServicioalClienteID] PRIMARY KEY CLUSTERED 
(
	[ServicioalClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/11/2018 0:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicios](
	[ServiciosID] [int] NOT NULL,
	[NombreServicio] [varchar](50) NULL,
	[CampañaID] [int] NULL,
	[Agentes/representantesID] [int] NULL,
 CONSTRAINT [PK_ServiciosID] PRIMARY KEY CLUSTERED 
(
	[ServiciosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (1, N'Manuel', N'8091112222', N'M', N'Calle F, S.D., R.D.', N'manuelteacher@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (2, N'Claurys', N'80933344444', N'F', N'Calle 13, S.C., R.D.', N'claurys1515@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (3, N'Yolanda', N'8095556666', N'F', N'Calle 1era, S.D.N, R.D.', N'Yolandas@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (4, N'Johan', N'8097778888', N'M', N'Calle 2da, S.C., R.D.', N'johanshadow@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (5, N'Claudio', N'8291234567', N'M', N'Calle Principal, S.C., R.D.', N'clajr@gmail.com ')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (6, N'Dirsia', N'8291234562', N'F', N'Calle Z, S.C., R.D.', N'Dirsia10@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (7, N'Nivar', N'8092403214', N'M', N'Calle Sanchez, S.D., R.D.', N'nivarelfuerte@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (8, N'Perla', N'8492516452', N'F', N'Calle A, S.C., R.D.', N'perlathebaby@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (9, N'Indiria', N'8093214562', N'F', N'Calle Central, S.D., R.D.', N'indiqueen@gmail.com')
INSERT [dbo].[Agentes/representates] ([Agentes/representantesID], [Nombre], [Telefono], [Sexo], [Direccion], [Email]) VALUES (10, N'Oliver', N'8094201212', N'M', N'Calle X, S.C., R.D.', N'oliverking@gmail.com ')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (1, N'StreeWireless1', N'Matutino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (2, N'StreeWireless2', N'Vespertino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (3, N'StreeWireless3', N'Nocturno')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (4, N'StreetRencar1', N'Matutino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (5, N'StreetRencar2', N'Verpertino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (6, N'StreetEnsurance1', N'Matutino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (7, N'StreetEnsurance2', N'Vespertino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (8, N'StreetEnsurance3', N'Nocturno')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (9, N'StreetFood1', N'Vespertino')
INSERT [dbo].[Campaña] ([CampañaID], [Nombre], [Turno]) VALUES (10, N'StreetFood2', N'Nocturno')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (1, N'Pedro Rosario', N'8096401232', 1, CAST(0x0000797000000000 AS DateTime), N'M', N'Calle 5ta avenida, S.D., R.D.', N'pedro1@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (2, N'Altagracia Perez', N'8093211554', 2, CAST(0x000080B100000000 AS DateTime), N'F', N'Calle 6ta esquina, S.D. R.D.', N'altraciap@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (3, N'Rosalva Molina', N'8296571235', 3, CAST(0x0000861B00000000 AS DateTime), N'F', N'Calle Hermanos G, S.C., R.D.', N'Rosamo@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (4, N' Aquiles Correa', N'8098962531', 4, CAST(0x00008F3D00000000 AS DateTime), N'M', N'Calle Auxilio, S.D., R.D.', N'aquilesc@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (5, N'Monica Lopez', N'8496001532', 5, CAST(0x0000906000000000 AS DateTime), N'F', N'Calle El Sol, S.C., R.D.', N'monic@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (6, N'Enrique Ramirez', N'8498732564', 6, CAST(0x00006FEE00000000 AS DateTime), N'M', N'Calle Equis, S.D., R.D.', N'Eramirez@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (7, N'Cristal Meran', N'8090321564', 7, CAST(0x00008B4C00000000 AS DateTime), N'F', N'Calle Tuna, S.C., R.D.', N'cristalm@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (8, N'Carlos Olgado', N'8291975261', 8, CAST(0x0000940900000000 AS DateTime), N'M', N'Calle Seria, S.D., R.D.', N'Carlosol@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (9, N'Amancio Liranzo', N'8092641231', 9, CAST(0x0000835F00000000 AS DateTime), N'M', N'Calle Elvira S, S.C., R.D.', N'amancioli@gmail.com')
INSERT [dbo].[Cliente] ([ClienteID], [Nombre], [Telefono], [CampañaID], [Fecha de nacimiento], [Sexo], [Direccion], [Email]) VALUES (10, N'Maria Teresa L', N'8496251230', 10, CAST(0x00007B3900000000 AS DateTime), N'F', N'Calle Rosa, S.D., R.D.', N'mariatere@gmail.com')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (1, 1, 1, 1, N'Añadir linea nueva', N'Cable Tv', N'Internet', N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (2, 2, 2, 2, N'Cancelar linea', N'Cancelar Cable Tv', N'Cancelar Internet', N'No')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (3, 3, 3, 3, N'Reparar servicio de voz', N'Reparar internet', NULL, N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (4, 4, 4, 4, N'Renta de camioneta hilux', NULL, NULL, N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (5, 5, 5, 5, N'Renta de convertible BMW', N'Pago seguro vehiculo', NULL, N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (6, 6, 6, 6, N'Autorizacion internamiento', NULL, NULL, N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (7, 7, 7, 7, N'Autorizacion consulta emergencia', N'autorizacion medicamento', NULL, N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (8, 8, 8, 8, N'Autorizacion analisis', NULL, NULL, N'No')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (9, 9, 9, 9, N'Orden de churrasco', N'Orden de papas fritas', N'Bebiba fria', N'Si')
INSERT [dbo].[ServicioalCliente] ([ServicioalClienteID], [ServiciosID], [ClienteID], [Agentes/representantesID], [Sevicioalcliente1], [Servicioalcliente2], [Servicioalcliente3], [ClienteSatisfecho]) VALUES (10, 10, 10, 10, N'Orden parrillada mixta', N'Bebida familiar', NULL, N'Si')
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (1, N'Servicio telefonico', 1, 1)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (2, N'Servicio telefonico', 2, 2)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (3, N'Servicio telefonico', 3, 3)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (4, N'Renta de vehiculo', 4, 4)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (5, N'Renta de vehiculo', 5, 5)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (6, N'Seguro de salud', 6, 6)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (7, N'Seguro de salud', 7, 7)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (8, N'Seguro de salud', 8, 8)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (9, N'Comida a domicilio', 9, 9)
INSERT [dbo].[Servicios] ([ServiciosID], [NombreServicio], [CampañaID], [Agentes/representantesID]) VALUES (10, N'Comida a domicilio', 10, 10)
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Campaña] FOREIGN KEY([CampañaID])
REFERENCES [dbo].[Campaña] ([CampañaID])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Campaña]
GO
ALTER TABLE [dbo].[ServicioalCliente]  WITH CHECK ADD  CONSTRAINT [FK_ServicioalCliente_Agentes/representates] FOREIGN KEY([Agentes/representantesID])
REFERENCES [dbo].[Agentes/representates] ([Agentes/representantesID])
GO
ALTER TABLE [dbo].[ServicioalCliente] CHECK CONSTRAINT [FK_ServicioalCliente_Agentes/representates]
GO
ALTER TABLE [dbo].[ServicioalCliente]  WITH CHECK ADD  CONSTRAINT [FK_ServicioalCliente_Cliente] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[ServicioalCliente] CHECK CONSTRAINT [FK_ServicioalCliente_Cliente]
GO
ALTER TABLE [dbo].[ServicioalCliente]  WITH CHECK ADD  CONSTRAINT [FK_ServicioalCliente_Servicios] FOREIGN KEY([ServiciosID])
REFERENCES [dbo].[Servicios] ([ServiciosID])
GO
ALTER TABLE [dbo].[ServicioalCliente] CHECK CONSTRAINT [FK_ServicioalCliente_Servicios]
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Agentes/representates] FOREIGN KEY([Agentes/representantesID])
REFERENCES [dbo].[Agentes/representates] ([Agentes/representantesID])
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Agentes/representates]
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Campaña] FOREIGN KEY([CampañaID])
REFERENCES [dbo].[Campaña] ([CampañaID])
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Campaña]
GO
USE [master]
GO
ALTER DATABASE [JhonCallcenter] SET  READ_WRITE 
GO
