/***************************************************************************************/
/***************************************TABLAS******************************************/
/***************************************************************************************/

USE [DAHOR]
GO
/****** Object:  Table [dbo].[SOLICITANTES]    Script Date: 01/27/2010 18:15:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOLICITANTES](
	[Codigo] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Poblacion] [varchar](50) NULL,
	[CP] [varchar](5) NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Horario] [varchar](50) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF


USE [DAHOR]
GO
/****** Object:  Table [dbo].[TIPOS_CENTRO]    Script Date: 01/19/2010 16:21:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOS_CENTRO](
	[Codigo] [smallint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TIPOS_CENTROS] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF


USE [DAHOR]
GO
/****** Object:  Table [dbo].[TIPOS_SERVICIO]    Script Date: 01/19/2010 16:21:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOS_SERVICIO](
	[Codigo] [smallint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TIPOS_SERVICIOS] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF


USE [DAHOR]
GO
/****** Object:  Table [dbo].[PRESUPUESTOS]    Script Date: 01/27/2010 18:15:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRESUPUESTOS](
	[Cod_Presupuesto] [bigint] IDENTITY(1,1) NOT NULL,
	[Cod_Solicitante] [bigint] NOT NULL,
	[Empresa] [varchar] (50) NULL,
	[Tipos_Centro] [varchar](500) NULL,
	[Tipos_Servicio] [varchar](500) NULL,
	[Consulta] [varchar](3500) NULL,
 CONSTRAINT [PK_PRESUPUESTOS] PRIMARY KEY CLUSTERED 
(
	[Cod_Presupuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[PRESUPUESTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRESUPUESTOS_SOLICITANTES] FOREIGN KEY([Cod_Solicitante])
REFERENCES [dbo].[SOLICITANTES] ([Codigo])
GO
ALTER TABLE [dbo].[PRESUPUESTOS] CHECK CONSTRAINT [FK_PRESUPUESTOS_SOLICITANTES]


USE [DAHOR]
GO
/****** Object:  Table [dbo].[TIPOS_EMPLEO]    Script Date: 01/26/2010 16:52:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOS_EMPLEO](
	[Codigo] [smallint] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TIPOS_EMPLEO] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
USE [DAHOR]
GO

/****** Object:  Table [dbo].[CANDIDATURAS]    Script Date: 02/14/2010 15:19:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CANDIDATURAS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NULL,
	[Fecha_Nacimiento] [datetime] NOT NULL,
	[Nacionalidad] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[EMail] [varchar](50) NOT NULL,
	[Puestos] [varchar](200) NULL,
	[Experiencia] [varchar](3500) NULL,
	[Observaciones] [varchar](3500) NULL,
 CONSTRAINT [PK_CANDIDATURA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/***************************************************************************************/
/**************************************inserciones**************************************/
/***************************************************************************************/

INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Comunidad de Vecinos')
INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Empresa / Oficina')
INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Edificio')
INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Local / Comercio')
INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Domicilio Particular')
INSERT INTO [DAHOR].[dbo].[TIPOS_CENTRO] (Nombre) VALUES ('Evento / Exposición')


INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Seguridad')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Conserjería')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Controlador')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Servicios 24 Horas')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Servicio Integral a Comunidades')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Limpieza')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Piscinas')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Piscinas Climatizadas')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Jardinería')
INSERT INTO [DAHOR].[dbo].[TIPOS_SERVICIO] (Nombre) VALUES ('Evento / Exposición')


INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Conserje')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Auxiliar')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Vigilantes')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Limpiezas')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Socorrista')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Jardineros')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Mtos. / Reformas')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Mtos. Piscinas')
INSERT INTO [DAHOR].[dbo].[TIPOS_EMPLEO](Tipo) VALUES ('Otros')