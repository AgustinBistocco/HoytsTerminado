USE [master]
GO
/****** Object:  Database [CINE_HOYTS]    Script Date: 10/11/2022 10:37:51 ******/
CREATE DATABASE [CINE_HOYTS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CINE_HOYTS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CINE_HOYTS.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CINE_HOYTS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\CINE_HOYTS_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CINE_HOYTS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CINE_HOYTS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CINE_HOYTS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET ARITHABORT OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CINE_HOYTS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CINE_HOYTS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CINE_HOYTS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CINE_HOYTS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CINE_HOYTS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CINE_HOYTS] SET  MULTI_USER 
GO
ALTER DATABASE [CINE_HOYTS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CINE_HOYTS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CINE_HOYTS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CINE_HOYTS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CINE_HOYTS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CINE_HOYTS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CINE_HOYTS] SET QUERY_STORE = OFF
GO
USE [CINE_HOYTS]
GO
/****** Object:  Table [dbo].[BARRIOS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BARRIOS](
	[id_barrio] [int] NOT NULL,
	[barrio] [varchar](100) NULL,
	[id_localidad] [int] NULL,
 CONSTRAINT [pk_barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BUTACA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUTACA](
	[ID_BUTACA] [int] NOT NULL,
	[FILA] [varchar](2) NULL,
	[NRO] [int] NULL,
 CONSTRAINT [PK_ID_BUTACA] PRIMARY KEY CLUSTERED 
(
	[ID_BUTACA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BUTACA_SALA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUTACA_SALA](
	[ID_BUTACA_SALA] [int] IDENTITY(1,1) NOT NULL,
	[ID_BUTACA] [int] NULL,
	[ID_SALA] [int] NULL,
 CONSTRAINT [PK_ID_BUTACA_SALA] PRIMARY KEY CLUSTERED 
(
	[ID_BUTACA_SALA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIA_PELICULA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA_PELICULA](
	[id_categoria_pelicula] [int] NOT NULL,
	[categoria_pelicula] [varchar](60) NOT NULL,
	[id_pelicula] [int] NULL,
 CONSTRAINT [pk_id_categoria_pelicula] PRIMARY KEY CLUSTERED 
(
	[id_categoria_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[baja_logica] [bit] NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPROBANTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTE](
	[id_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[cantidad] [int] NULL,
	[id_factura] [int] NULL,
	[monto] [money] NULL,
	[id_promocion] [int] NULL,
	[baja_logica] [bit] NULL,
	[fecha] [datetime] NULL,
 CONSTRAINT [pk_comprobante] PRIMARY KEY CLUSTERED 
(
	[id_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONTACTOS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTACTOS](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[contacto] [varchar](50) NULL,
	[id_tipo_contacto] [int] NULL,
	[id_persona] [int] NULL,
 CONSTRAINT [pk_contacto] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIA](
	[id_dia] [int] NOT NULL,
	[dia] [varchar](10) NULL,
 CONSTRAINT [pk_id_dia] PRIMARY KEY CLUSTERED 
(
	[id_dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURA](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[id_vendedor] [int] NULL,
	[id_cliente] [int] NULL,
	[fecha_pago] [datetime] NULL,
	[id_tipo_compra] [int] NULL,
	[id_forma_pago] [int] NULL,
	[baja_logica] [int] NULL,
 CONSTRAINT [pk_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORMA_PAGO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORMA_PAGO](
	[id_forma_pago] [int] NOT NULL,
	[forma_pago] [varchar](25) NULL,
 CONSTRAINT [pk_forma_pago] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCION]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCION](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_idioma] [int] NULL,
	[id_pelicula] [int] NULL,
	[id_sala] [int] NULL,
	[id_horario] [int] NULL,
	[monto] [money] NULL,
	[baja_logica] [bit] NULL,
 CONSTRAINT [pk_id_funcion] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC,
	[fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIO](
	[id_horario] [int] NOT NULL,
	[id_dia] [int] NULL,
	[hora] [varchar](2) NULL,
 CONSTRAINT [pk_id_horario] PRIMARY KEY CLUSTERED 
(
	[id_horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDIOMAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDIOMAS](
	[id_idioma] [int] NOT NULL,
	[idioma] [varchar](60) NULL,
 CONSTRAINT [pk_id_idioma] PRIMARY KEY CLUSTERED 
(
	[id_idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCALIDADES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCALIDADES](
	[id_localidad] [int] NOT NULL,
	[localidad] [varchar](100) NULL,
	[id_provincia] [int] NULL,
 CONSTRAINT [pk_localidad] PRIMARY KEY CLUSTERED 
(
	[id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_vend]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_vend](
	[usuario] [varchar](100) NOT NULL,
	[contraseña] [varchar](100) NULL,
	[id_vendedor] [int] NULL,
	[adminn] [int] NULL,
	[baja_logica] [int] NULL,
 CONSTRAINT [pk_cont] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULA](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[duracion] [int] NOT NULL,
	[id_restriccion] [int] NULL,
	[id_productor] [int] NULL,
	[titulo] [varchar](150) NULL,
	[descripcion] [varchar](150) NULL,
	[imagen] [image] NULL,
	[baja_logica] [bit] NULL,
 CONSTRAINT [pk_id_pelicula] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PELICULA_IDIOMA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PELICULA_IDIOMA](
	[id_idioma] [int] NOT NULL,
	[id_pelicula] [int] NOT NULL,
 CONSTRAINT [pk_pelicula_idioma] PRIMARY KEY CLUSTERED 
(
	[id_idioma] ASC,
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAS](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[nro_direccion] [int] NULL,
	[id_barrio] [int] NULL,
	[id_tipo_doc] [int] NULL,
	[nro_doc] [bigint] NULL,
	[fecha_nacimiento] [datetime] NULL,
	[Sexo] [int] NULL,
 CONSTRAINT [pk_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOR]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOR](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [pk_id_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROMOCION]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOCION](
	[id_promocion] [int] NOT NULL,
	[promocion] [int] NULL,
	[id_tipo_promocion] [int] NULL,
 CONSTRAINT [pk_promocion] PRIMARY KEY CLUSTERED 
(
	[id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVINCIAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVINCIAS](
	[id_provincia] [int] NOT NULL,
	[provincia] [varchar](100) NULL,
 CONSTRAINT [pk_provincia] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[FECHA_RESERVA] [datetime] NULL,
	[BAJA_LOGICA] [bit] NULL,
 CONSTRAINT [PK_ID_RESERVA] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESTRICION_DE_EDAD]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESTRICION_DE_EDAD](
	[id_restriccion] [int] NOT NULL,
	[edad] [int] NOT NULL,
	[detalle] [varchar](100) NOT NULL,
 CONSTRAINT [pk_id_restriccion] PRIMARY KEY CLUSTERED 
(
	[id_restriccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALA](
	[id_sala] [int] NOT NULL,
	[id_tipo_sala] [int] NULL,
 CONSTRAINT [pk_id_sala] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[id_comprobante] [int] NULL,
	[id_butaca_sala] [int] NULL,
	[Baja_logica] [int] NULL,
 CONSTRAINT [pk_id_ticket] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_COMPRA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_COMPRA](
	[id_tipo_compra] [int] IDENTITY(1,1) NOT NULL,
	[tipo_compra] [varchar](50) NULL,
 CONSTRAINT [pk_tipo_compra] PRIMARY KEY CLUSTERED 
(
	[id_tipo_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_DE_SALA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_DE_SALA](
	[id_tipo_sala] [int] NOT NULL,
	[tipo_sala] [varchar](100) NULL,
 CONSTRAINT [pk_id_tipo_sala] PRIMARY KEY CLUSTERED 
(
	[id_tipo_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_PROMOCION]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_PROMOCION](
	[id_tipo_promocion] [int] IDENTITY(1,1) NOT NULL,
	[tipo_promocion] [varchar](50) NULL,
 CONSTRAINT [pk_tipo_promocion] PRIMARY KEY CLUSTERED 
(
	[id_tipo_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_PUBLICO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_PUBLICO](
	[id_tipo_publico] [int] NOT NULL,
	[tipo_publico] [varchar](60) NULL,
 CONSTRAINT [pk_id_tipo_de_publico] PRIMARY KEY CLUSTERED 
(
	[id_tipo_publico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DE_CONTACTOS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DE_CONTACTOS](
	[id_tipo_contacto] [int] NOT NULL,
	[tipo_contacto] [varchar](25) NULL,
 CONSTRAINT [pk_tipo_contacto] PRIMARY KEY CLUSTERED 
(
	[id_tipo_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DE_DOCUMENTOS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DE_DOCUMENTOS](
	[id_tipo_doc] [int] NOT NULL,
	[tipo_documento] [varchar](50) NULL,
 CONSTRAINT [pk_tipo_doc] PRIMARY KEY CLUSTERED 
(
	[id_tipo_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDORES](
	[id_vendedor] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[baja_logica] [bit] NULL,
 CONSTRAINT [pk_vendedor] PRIMARY KEY CLUSTERED 
(
	[id_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BARRIOS]  WITH CHECK ADD  CONSTRAINT [fk_localidad] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[LOCALIDADES] ([id_localidad])
GO
ALTER TABLE [dbo].[BARRIOS] CHECK CONSTRAINT [fk_localidad]
GO
ALTER TABLE [dbo].[BUTACA_SALA]  WITH CHECK ADD  CONSTRAINT [FK_ID_BUTACA] FOREIGN KEY([ID_BUTACA])
REFERENCES [dbo].[BUTACA] ([ID_BUTACA])
GO
ALTER TABLE [dbo].[BUTACA_SALA] CHECK CONSTRAINT [FK_ID_BUTACA]
GO
ALTER TABLE [dbo].[BUTACA_SALA]  WITH CHECK ADD  CONSTRAINT [FK_ID_SALA1] FOREIGN KEY([ID_SALA])
REFERENCES [dbo].[SALA] ([id_sala])
GO
ALTER TABLE [dbo].[BUTACA_SALA] CHECK CONSTRAINT [FK_ID_SALA1]
GO
ALTER TABLE [dbo].[CATEGORIA_PELICULA]  WITH CHECK ADD  CONSTRAINT [fk_id_pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULA] ([id_pelicula])
GO
ALTER TABLE [dbo].[CATEGORIA_PELICULA] CHECK CONSTRAINT [fk_id_pelicula]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [fk_persona_c] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [fk_persona_c]
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD  CONSTRAINT [fk_id_factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[FACTURA] ([id_factura])
GO
ALTER TABLE [dbo].[COMPROBANTE] CHECK CONSTRAINT [fk_id_factura]
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD  CONSTRAINT [fk_id_funcion] FOREIGN KEY([id_funcion], [fecha])
REFERENCES [dbo].[FUNCION] ([id_funcion], [fecha])
GO
ALTER TABLE [dbo].[COMPROBANTE] CHECK CONSTRAINT [fk_id_funcion]
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD  CONSTRAINT [fk_id_promocion] FOREIGN KEY([id_promocion])
REFERENCES [dbo].[PROMOCION] ([id_promocion])
GO
ALTER TABLE [dbo].[COMPROBANTE] CHECK CONSTRAINT [fk_id_promocion]
GO
ALTER TABLE [dbo].[CONTACTOS]  WITH CHECK ADD  CONSTRAINT [fk_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[CONTACTOS] CHECK CONSTRAINT [fk_persona]
GO
ALTER TABLE [dbo].[CONTACTOS]  WITH CHECK ADD  CONSTRAINT [fk_tipo_contactos] FOREIGN KEY([id_tipo_contacto])
REFERENCES [dbo].[TIPOS_DE_CONTACTOS] ([id_tipo_contacto])
GO
ALTER TABLE [dbo].[CONTACTOS] CHECK CONSTRAINT [fk_tipo_contactos]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [fk_cliente]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_forma_pago] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[FORMA_PAGO] ([id_forma_pago])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [fk_forma_pago]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_tipo_compra] FOREIGN KEY([id_tipo_compra])
REFERENCES [dbo].[TIPO_COMPRA] ([id_tipo_compra])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [fk_tipo_compra]
GO
ALTER TABLE [dbo].[FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_vendedor] FOREIGN KEY([id_vendedor])
REFERENCES [dbo].[VENDEDORES] ([id_vendedor])
GO
ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [fk_vendedor]
GO
ALTER TABLE [dbo].[FUNCION]  WITH CHECK ADD  CONSTRAINT [fk_id_horario] FOREIGN KEY([id_horario])
REFERENCES [dbo].[HORARIO] ([id_horario])
GO
ALTER TABLE [dbo].[FUNCION] CHECK CONSTRAINT [fk_id_horario]
GO
ALTER TABLE [dbo].[FUNCION]  WITH CHECK ADD  CONSTRAINT [fk_id_idioma] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[IDIOMAS] ([id_idioma])
GO
ALTER TABLE [dbo].[FUNCION] CHECK CONSTRAINT [fk_id_idioma]
GO
ALTER TABLE [dbo].[FUNCION]  WITH CHECK ADD  CONSTRAINT [fk_id_peliculas] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[PELICULA] ([id_pelicula])
GO
ALTER TABLE [dbo].[FUNCION] CHECK CONSTRAINT [fk_id_peliculas]
GO
ALTER TABLE [dbo].[FUNCION]  WITH CHECK ADD  CONSTRAINT [fk_sala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[SALA] ([id_sala])
GO
ALTER TABLE [dbo].[FUNCION] CHECK CONSTRAINT [fk_sala]
GO
ALTER TABLE [dbo].[HORARIO]  WITH CHECK ADD  CONSTRAINT [fk_id_dia] FOREIGN KEY([id_dia])
REFERENCES [dbo].[DIA] ([id_dia])
GO
ALTER TABLE [dbo].[HORARIO] CHECK CONSTRAINT [fk_id_dia]
GO
ALTER TABLE [dbo].[LOCALIDADES]  WITH CHECK ADD  CONSTRAINT [fk_provincia] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[PROVINCIAS] ([id_provincia])
GO
ALTER TABLE [dbo].[LOCALIDADES] CHECK CONSTRAINT [fk_provincia]
GO
ALTER TABLE [dbo].[login_vend]  WITH CHECK ADD  CONSTRAINT [fk_v] FOREIGN KEY([id_vendedor])
REFERENCES [dbo].[VENDEDORES] ([id_vendedor])
GO
ALTER TABLE [dbo].[login_vend] CHECK CONSTRAINT [fk_v]
GO
ALTER TABLE [dbo].[PELICULA]  WITH CHECK ADD  CONSTRAINT [fk_id_productor] FOREIGN KEY([id_productor])
REFERENCES [dbo].[PRODUCTOR] ([id_producto])
GO
ALTER TABLE [dbo].[PELICULA] CHECK CONSTRAINT [fk_id_productor]
GO
ALTER TABLE [dbo].[PELICULA]  WITH CHECK ADD  CONSTRAINT [fk_id_restriccion] FOREIGN KEY([id_restriccion])
REFERENCES [dbo].[RESTRICION_DE_EDAD] ([id_restriccion])
GO
ALTER TABLE [dbo].[PELICULA] CHECK CONSTRAINT [fk_id_restriccion]
GO
ALTER TABLE [dbo].[PERSONAS]  WITH CHECK ADD  CONSTRAINT [fk_barrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[PERSONAS] CHECK CONSTRAINT [fk_barrio]
GO
ALTER TABLE [dbo].[PERSONAS]  WITH CHECK ADD  CONSTRAINT [fk_tipo_doc] FOREIGN KEY([id_tipo_doc])
REFERENCES [dbo].[TIPOS_DE_DOCUMENTOS] ([id_tipo_doc])
GO
ALTER TABLE [dbo].[PERSONAS] CHECK CONSTRAINT [fk_tipo_doc]
GO
ALTER TABLE [dbo].[PROMOCION]  WITH CHECK ADD  CONSTRAINT [fk_tipo_promocion] FOREIGN KEY([id_tipo_promocion])
REFERENCES [dbo].[TIPO_PROMOCION] ([id_tipo_promocion])
GO
ALTER TABLE [dbo].[PROMOCION] CHECK CONSTRAINT [fk_tipo_promocion]
GO
ALTER TABLE [dbo].[RESERVA]  WITH CHECK ADD  CONSTRAINT [fk_id_factura1] FOREIGN KEY([id_factura])
REFERENCES [dbo].[FACTURA] ([id_factura])
GO
ALTER TABLE [dbo].[RESERVA] CHECK CONSTRAINT [fk_id_factura1]
GO
ALTER TABLE [dbo].[SALA]  WITH CHECK ADD  CONSTRAINT [fk_id_tipo_sala] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[TIPO_DE_SALA] ([id_tipo_sala])
GO
ALTER TABLE [dbo].[SALA] CHECK CONSTRAINT [fk_id_tipo_sala]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [fk_id_but_sa] FOREIGN KEY([id_butaca_sala])
REFERENCES [dbo].[BUTACA_SALA] ([ID_BUTACA_SALA])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [fk_id_but_sa]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [fk_id_comprobante] FOREIGN KEY([id_comprobante])
REFERENCES [dbo].[COMPROBANTE] ([id_comprobante])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [fk_id_comprobante]
GO
ALTER TABLE [dbo].[VENDEDORES]  WITH CHECK ADD  CONSTRAINT [fk_persona_v] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[VENDEDORES] CHECK CONSTRAINT [fk_persona_v]
GO
/****** Object:  StoredProcedure [dbo].[Bajar_Fun]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create   procedure [dbo].[Bajar_Fun](
	@id_fun int
)as
	update FUNCION
	set baja_logica = 1
	where id_funcion = @id_fun

select * from FUNCION
GO
/****** Object:  StoredProcedure [dbo].[BAJAR_PELICULA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[BAJAR_PELICULA](
	@id_pel int
)as
	update PELICULA
	set baja_logica = 1
	where id_pelicula = @id_pel
GO
/****** Object:  StoredProcedure [dbo].[buscar_Fun]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[buscar_Fun](
	@id_fun int
)
as
	select *
	from FUNCION
	where @id_fun = id_funcion
GO
/****** Object:  StoredProcedure [dbo].[Buscar_Peli]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Buscar_Peli](
	@id_pel int
)as
	select id_pelicula
	from PELICULA
	where id_pelicula = @id_pel
GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_TICKET]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[INSERTAR_TICKET](
	 @id_comprobante int,
	 @id_butaca_sala int
)
as	
	insert into TICKET (id_comprobante,id_butaca_sala,Baja_logica) values(@id_comprobante,@id_butaca_sala,1)

GO
/****** Object:  StoredProcedure [dbo].[InsertPeli]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[InsertPeli](
	@titulo varchar(100),
	@descripcion varchar(500),
	@id_restriccion int,
	@id_productor int,
	@duracion int,
	@imagen Image
)as

	insert into PELICULA values(@duracion,@id_restriccion,@id_productor,@titulo,@descripcion,@imagen,0)
GO
/****** Object:  StoredProcedure [dbo].[OBTENER_FUNCIONES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[OBTENER_FUNCIONES]
AS
	SELECT id_funcion,fecha,i.id_idioma, i.idioma,p.id_pelicula,p.titulo,s.id_sala,ts.tipo_sala,h.id_horario,concat(h.hora,':00'),monto,s.id_tipo_sala
	FROM FUNCION f
	join IDIOMAS i on i.id_idioma = f.id_idioma
	join PELICULA p on p.id_pelicula = f.id_pelicula
	join HORARIO h on h.id_horario = f.id_horario
	join sala s on s.id_sala = f.id_sala
	join TIPO_DE_SALA ts on ts.id_tipo_sala = s.id_tipo_sala
	WHERE f.baja_logica = 0
	order by fecha

GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_PAGO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_ACTUALIZAR_PAGO](
	@id_factura int,
	@id_tipo_compra int,
	@id_forma_pago int
)as

	update FACTURA
	set 
		id_tipo_compra = @id_tipo_compra,
		id_forma_pago = @id_forma_pago,
		fecha_pago = GETDATE()
		Where id_factura = @id_factura

GO
/****** Object:  StoredProcedure [dbo].[SP_ALTA_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_ALTA_CLIENTE](
	@nombre varchar (100),
	@apellido varchar (100),
	@direccion varchar (100),
	@nro_direccion int, 
	@id_barrio int,
	@id_tipo_doc int,
	@nro_doc bigint,
	@fecha_nacimiento datetime,
	@Sexo int
)AS
	insert into PERSONAS values(@nombre,@apellido,@direccion,@nro_direccion,@id_barrio,@id_tipo_doc,@nro_doc,@fecha_nacimiento,@Sexo)

	declare @next int
	select @next = (MAX(id_persona))
	from PERSONAS

	insert into CLIENTES values(@next,0)

GO
/****** Object:  StoredProcedure [dbo].[SP_ALTA_Vendedor]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_ALTA_Vendedor](
	@nombre varchar (100),
	@apellido varchar (100),
	@direccion varchar (100),
	@nro_direccion int, 
	@id_barrio int,
	@id_tipo_doc int,
	@nro_doc bigint,
	@fecha_nacimiento datetime,
	@Sexo int,
	@usuario varchar(200),
	@contraseña varchar(200),
	@admin int
)AS
	insert into PERSONAS values(@nombre,@apellido,@direccion,@nro_direccion,@id_barrio,@id_tipo_doc,@nro_doc,@fecha_nacimiento,@Sexo)

	declare @next int
	select @next = (MAX(id_persona))
	from PERSONAS
	insert into VENDEDORES values(@next,0)

	declare @next_ven int
	select @next_ven = (MAX(id_vendedor))
	from VENDEDORES

	insert into login_vend values(@usuario, @contraseña,@next_ven,@admin,0)

GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BAJA_CLIENTE](
	@id_cliente int
)as
update CLIENTES
set baja_logica = 1
where id_cliente = @id_cliente


GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_FACTURA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[SP_BAJA_FACTURA]
as
	UPDATE FACTURA
	set baja_logica =1 
	where id_factura in (select f.id_factura
						from FACTURA f
						join COMPROBANTE c on f.id_factura = c.id_factura
						join FUNCION fu on fu.id_funcion = c.id_funcion
						JOIN HORARIO h on h.id_horario = fu.id_horario
						where (Convert(int, h.hora)- Convert(int,LEFT(convert(char(8), getdate(), 108),2))) <= 2 and fecha_pago is null and DAY(fu.fecha) = day(GETDATE()) and month(fu.fecha) = month(GETDATE()) and year(fu.fecha) = year(GETDATE()))
	update COMPROBANTE
	set baja_logica =1
	where id_factura in (select f.id_factura
						from FACTURA f
						join COMPROBANTE c on f.id_factura = c.id_factura
						join FUNCION fu on fu.id_funcion = c.id_funcion
						JOIN HORARIO h on h.id_horario = fu.id_horario
						where (Convert(int, h.hora) - Convert(int,LEFT(convert(char(8), getdate(), 108),2))) <= 2 and fecha_pago is null and DAY(fu.fecha) = day(GETDATE()) and month(fu.fecha) = month(GETDATE()) and year(fu.fecha) = year(GETDATE()))
	
	update TICKET
	set Baja_logica = 0
	where id_comprobante in (select id_comprobante
							 from COMPROBANTE
							 where baja_logica = 1)

GO
/****** Object:  StoredProcedure [dbo].[SP_BAJA_Vendedor]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_BAJA_Vendedor](
	@id_vendedor int
)as
update VENDEDORES
set baja_logica = 1
where id_vendedor = @id_vendedor

update login_vend
set baja_logica = 1
where id_vendedor = @id_vendedor
GO
/****** Object:  StoredProcedure [dbo].[SP_BAJAR_FACTURA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BAJAR_FACTURA]
(@id_factura int)
as
	UPDATE FACTURA
	set baja_logica =1 
	where id_factura = @id_factura
	

	update COMPROBANTE
	set baja_logica =1
	where id_factura = @id_factura


	update TICKET
	set Baja_logica = 0
	where id_comprobante in (select id_comprobante
							 from COMPROBANTE
							 where id_factura = @id_factura)
GO
/****** Object:  StoredProcedure [dbo].[SP_BAJAR_FUNCIONES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_BAJAR_FUNCIONES](
	@fecha datetime
)as

	UPDATE FUNCION
	SET baja_logica = 1
	WHERE id_funcion in (select id_funcion from FUNCION f
						join HORARIO h on h.id_horario = f.id_horario
						where fecha <= @fecha-1 or (fecha <= @fecha and Convert(int,(h.hora)) <=  Convert(int,LEFT(CONVERT(varchar(19),GETDATE(),108),2))))

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BUSCAR_CLIENTE](
	@id_cliente int
)as
	select * from CLIENTES
	where id_cliente = @id_cliente

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_PELICULAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BUSCAR_PELICULAS]
as
	Select distinct f.id_pelicula, p.titulo
	from FUNCION f
	join PELICULA p on f.id_pelicula= p.id_pelicula
	where f.baja_logica = 0

GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_PERSONA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_BUSCAR_PERSONA](
	@id_cliente int
)as
	select p.id_persona, nombre, apellido,direccion,nro_direccion,id_barrio,tp.id_tipo_doc,nro_doc,fecha_nacimiento,Sexo,tp.tipo_documento
	from CLIENTES c 
	join PERSONAS p on c.id_persona = p.id_persona
	join TIPOS_DE_DOCUMENTOS tp on tp.id_tipo_doc = p.id_tipo_doc
	where id_cliente = @id_cliente
	
GO
/****** Object:  StoredProcedure [dbo].[SP_BUSCAR_Vendedor]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_BUSCAR_Vendedor](
	@id_Vendedor int
)as
	select * from VENDEDORES
	where id_vendedor = @id_Vendedor
GO
/****** Object:  StoredProcedure [dbo].[SP_CANTIDAD_ENTRADAS_MIN]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[SP_CANTIDAD_ENTRADAS_MIN]
@MINIMO INT
AS
select p.id_pelicula, p.titulo, p.duracion, SUM(c.cantidad) 'cantidad_entradas'
from PELICULA p
join FUNCION fun on fun.id_pelicula = p.id_pelicula
join comprobante c on c.id_funcion = fun.id_funcion
join FACTURA f on f.id_factura = c.id_factura
group by p.id_pelicula, titulo, duracion
having SUM(c.cantidad) >= @MINIMO
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_CBO_CLIENT]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_CARGA_CBO_CLIENT]
as
select id_cliente, p.nombre + SPACE(1) + p.apellido 'cliente'
from CLIENTES c
join PERSONAS p on c.id_persona = p.id_persona
where baja_logica = 0


GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_CBO_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_CARGA_CBO_CLIENTE]
as
select id_cliente, p.nombre + p.apellido + STR(p.nro_doc)'cliente'
from CLIENTES c
join PERSONAS p on c.id_persona = p.id_persona
where baja_logica = 0

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_CBO_VENDEDOR]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_CARGA_CBO_VENDEDOR]
as
select id_vendedor, p.nombre + SPACE(1) + p.apellido 'vendedor'
from VENDEDORES c
join PERSONAS p on c.id_persona = p.id_persona
where baja_logica = 0
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_FORMA_PAGO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CARGA_FORMA_PAGO]
as
select  * from FORMA_PAGO

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_PROD]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CARGA_PROD] AS
	SELECT id_producto, nombre
	FROM PRODUCTOR
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_RESTRICCION]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CARGA_RESTRICCION] AS
	SELECT id_restriccion, edad
	FROM RESTRICION_DE_EDAD

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGA_TIPO_COMPRA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CARGA_TIPO_COMPRA]
as
select  * from TIPO_COMPRA

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_BUTACAS_LIBRES]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[SP_CARGAR_BUTACAS_LIBRES](
	@id_sala int,
	@id_funcion int
)as

	select ID_BUTACA_SALA , b.FILA + str(b.NRO)'Butaca' 
	from BUTACA_SALA bs
	join BUTACA b on bs.ID_BUTACA = b.ID_BUTACA
	where ID_SALA = @id_sala and id_butaca_sala not in(select t.id_butaca_sala
								from TICKET t
								join COMPROBANTE c on c.id_comprobante = t.id_comprobante
								join FUNCION f on c.id_funcion = f.id_funcion
								join BUTACA_SALA bs on bs.ID_BUTACA_SALA = t.id_butaca_sala 
								where f.id_funcion = @id_funcion and t.Baja_logica = 1)

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_BUTACAS_Ocupada]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create   procedure [dbo].[SP_CARGAR_BUTACAS_Ocupada](
	@id_sala int,
	@id_funcion int,
	@id_comprobante int
)as

	select bs.ID_BUTACA_SALA , b.FILA, b.NRO, t.Baja_logica
	from BUTACA_SALA bs
	left join BUTACA b on bs.ID_BUTACA = b.ID_BUTACA
	left join TICKET t on bs.ID_BUTACA_SALA = t.id_butaca_sala
	left join COMPROBANTE c on t.id_comprobante = c.id_comprobante
	where c.id_funcion = @id_funcion and bs.ID_SALA =@id_sala and t.id_comprobante = @id_comprobante


GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_BUTACAS_Prueba]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create   procedure [dbo].[SP_CARGAR_BUTACAS_Prueba](
	@id_sala int,
	@id_funcion int
)as

	select bs.ID_BUTACA_SALA , b.FILA, b.NRO, t.Baja_logica
	from BUTACA_SALA bs
	left join BUTACA b on bs.ID_BUTACA = b.ID_BUTACA
	left join TICKET t on bs.ID_BUTACA_SALA = t.id_butaca_sala
	left join COMPROBANTE c on t.id_comprobante = c.id_comprobante
	where c.id_funcion = @id_funcion and bs.ID_SALA =@id_sala and t.Baja_logica = 1

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_Comprobante]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CARGAR_Comprobante](
	@id_factura int
)as
	select id_comprobante,f.id_funcion, i.id_idioma,i.idioma,p.id_promocion,p.promocion,ts.id_tipo_promocion,ts.tipo_promocion,
	pe.id_pelicula,pe.titulo, f.id_sala, s.id_tipo_sala, tp.tipo_sala,h.id_horario,h.hora,c.monto,f.fecha,c.cantidad
	from COMPROBANTE c
	join FUNCION f on f.id_funcion = c.id_funcion
	join PROMOCION p on p.id_promocion = c.id_promocion
	join TIPO_PROMOCION ts on ts.id_tipo_promocion = p.id_tipo_promocion
	join IDIOMAS i on f.id_idioma = i.id_idioma
	join PELICULA pe on pe.id_pelicula = f.id_pelicula
	join SALA s on s.id_sala = f.id_sala
	join TIPO_DE_SALA tp on tp.id_tipo_sala = s.id_tipo_sala
	join HORARIO h on f.id_horario = h.id_horario
	where id_factura = @id_factura

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_FECHAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_CARGAR_FECHAS](
	@id_pelicula int
)
as
	Select distinct CONVERT(varchar,fecha,3)'fecha'
	from FUNCION f
	where id_pelicula = @id_pelicula AND baja_logica = 0
	order by fecha asc


GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_GRILLA_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_CARGAR_GRILLA_CLIENTE]
    as
    select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
    left join FACTURA f on c.id_cliente = f.id_cliente
    left join COMPROBANTE co on co.id_factura = f.id_factura
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
	Order by c.id_cliente

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_GRILLA_CLIENTE_nombre]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_CARGAR_GRILLA_CLIENTE_nombre]
(@nombre varchar(100))
    as
    select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
    left join FACTURA f on c.id_cliente = f.id_cliente
    left join COMPROBANTE co on co.id_factura = f.id_factura
	where nombre+ SPace(1)+ apellido like CONCAT(@nombre, '%') 
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
	Order by c.id_cliente

GO
/****** Object:  StoredProcedure [dbo].[SP_cARGAR_HORARIO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_cARGAR_HORARIO]
AS

	select id_horario, concat(hora, ':00')
	from HORARIO
	order by hora
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_HORARIOS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CARGAR_HORARIOS](
	@id_pelicula int,
	@fecha datetime
)
as
	Select distinct f.id_horario, h.hora + ':00'HORA
	from FUNCION f
	join HORARIO h on f.id_horario = h.id_horario
	where id_pelicula = @id_pelicula  and f.fecha = @fecha and f.baja_logica = 0
	order by 2

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_ID_FUNCION]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_CARGAR_ID_FUNCION](
	@id_pelicula int,
	@fecha datetime,
	@id_horario int,
	@id_idioma int,
	@id_sala int
)
as
	Select id_funcion, monto
	from FUNCION f
	where id_pelicula = @id_pelicula and f.fecha = @fecha and id_horario = @id_horario and id_idioma = @id_idioma and id_sala = @id_sala
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_IDIOMAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CARGAR_IDIOMAS]
AS
	SELECT id_idioma, idioma
	from IDIOMAS
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_IDIOMAS_FUN]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[SP_CARGAR_IDIOMAS_FUN](
	@id_pelicula int,
	@fecha datetime,
	@id_horario int
)
as
	Select distinct f.id_idioma, idioma
	from FUNCION f
	join IDIOMAS h on f.id_idioma = h.id_idioma
	where id_pelicula = @id_pelicula and f.fecha = @fecha and id_horario = @id_horario

GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_PELICULA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_CARGAR_PELICULA]
AS
SELECT P.id_pelicula, P.TITULO, P.duracion, PR.nombre,RE.EDAD, SUM(cantidad)'ESPECTADORES'
FROM PELICULA P
JOIN PRODUCTOR PR  ON P.id_productor = PR.id_producto
JOIN RESTRICION_DE_EDAD RE ON RE.id_restriccion = P.id_restriccion
JOIN FUNCION F ON F.id_pelicula = P.id_pelicula
left JOIN COMPROBANTE C ON C.id_funcion = F.id_funcion
GROUP BY P.id_pelicula, P.TITULO, P.duracion, PR.nombre,RE.EDAD
order by p.id_pelicula
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_PELICULA_crud]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_CARGAR_PELICULA_crud]
AS
SELECT P.id_pelicula, P.TITULO, P.duracion, PR.nombre,RE.EDAD, p.id_restriccion, p.id_productor,p.descripcion,p.imagen
FROM PELICULA P
JOIN PRODUCTOR PR  ON P.id_productor = PR.id_producto
JOIN RESTRICION_DE_EDAD RE ON RE.id_restriccion = P.id_restriccion
where baja_logica = 0
order by p.id_pelicula
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_PELICULA_Nombre]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_CARGAR_PELICULA_Nombre]
(@nombre varchar(50))
AS
SELECT P.id_pelicula, P.TITULO, P.duracion, PR.nombre,RE.EDAD, SUM(cantidad)'ESPECTADORES'
FROM PELICULA P
JOIN PRODUCTOR PR  ON P.id_productor = PR.id_producto
JOIN RESTRICION_DE_EDAD RE ON RE.id_restriccion = P.id_restriccion
JOIN FUNCION F ON F.id_pelicula = P.id_pelicula
left JOIN COMPROBANTE C ON C.id_funcion = F.id_funcion
where p.titulo like CONCAT(@nombre, '%')
GROUP BY P.id_pelicula, P.TITULO, P.duracion, PR.nombre,RE.EDAD
order by p.id_pelicula
GO
/****** Object:  StoredProcedure [dbo].[SP_CARGAR_TIPO_SALA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CARGAR_TIPO_SALA](
	@id_pelicula int,
	@fecha datetime,
	@id_horario int,
	@id_idioma int
)
as
	Select distinct f.id_sala, str(f.id_sala) + '-'+ t.tipo_sala'Sala'
	from FUNCION f
	join SALA h on f.id_sala = h.id_sala
	join TIPO_DE_SALA t on h.id_sala = t.id_tipo_sala 
	where id_pelicula = @id_pelicula and f.fecha = @fecha and id_horario = @id_horario

GO
/****** Object:  StoredProcedure [dbo].[SP_CBO_BARRIO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CBO_BARRIO](
	@id_localidad int
)as
select *
from BARRIOS 
where id_localidad = @id_localidad


----------------------------------------------------------------------------------------------------------------------------------------------------

GO
/****** Object:  StoredProcedure [dbo].[SP_CBO_LOCALIDAD]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CBO_LOCALIDAD](
	@id_provincia int)
as
select *
from LOCALIDADES
where id_provincia = @id_provincia

GO
/****** Object:  StoredProcedure [dbo].[SP_CBO_PROVINCIA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------CBO BARRIOS-------------------------------


--PROCEDIMIENTOS
create procedure [dbo].[SP_CBO_PROVINCIA]
as
	select *
	from PROVINCIAS

GO
/****** Object:  StoredProcedure [dbo].[SP_CBO_TIPO_DOC]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CBO_TIPO_DOC]
as
	select *
	from TIPOS_DE_DOCUMENTOS

GO
/****** Object:  StoredProcedure [dbo].[SP_FACTURAS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_FACTURAS]
as
select f.id_factura, v.id_vendedor, p1.nombre,p1.apellido,
c.id_cliente, p.nombre,p.apellido, fecha_pago, r.FECHA_RESERVA, tp.id_tipo_compra,tp.tipo_compra,fp.id_forma_pago,fp.forma_pago,f.baja_logica
from FACTURA f
join VENDEDORES v on f.id_vendedor = v.id_vendedor
join CLIENTES c on f.id_cliente = c.id_cliente
left join TIPO_COMPRA tp on f.id_tipo_compra = tp.id_tipo_compra
join PERSONAS p on c.id_persona = p.id_persona
join PERSONAS p1 on v.id_persona = p1.id_persona
left join FORMA_PAGO fp on f.id_forma_pago = fp.id_forma_pago
left join RESERVA r on f.id_factura = r.id_factura
where DATEDIFF(MONTH,FECHA_RESERVA,GETDATE()) < 3
order by id_factura desc

GO
/****** Object:  StoredProcedure [dbo].[SP_FACTURAS_cocretadas]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_FACTURAS_cocretadas]
as
select f.id_factura, v.id_vendedor, p1.nombre,p1.apellido,
c.id_cliente, p.nombre,p.apellido, fecha_pago, r.FECHA_RESERVA, tp.id_tipo_compra,tp.tipo_compra,fp.id_forma_pago,fp.forma_pago,f.baja_logica
from FACTURA f
join VENDEDORES v on f.id_vendedor = v.id_vendedor
join CLIENTES c on f.id_cliente = c.id_cliente
join TIPO_COMPRA tp on f.id_tipo_compra = tp.id_tipo_compra
join PERSONAS p on c.id_persona = p.id_persona
join PERSONAS p1 on v.id_persona = p1.id_persona 
join FORMA_PAGO fp on f.id_forma_pago = fp.id_forma_pago 
join RESERVA r on f.id_factura = r.id_factura
order by id_factura desc
GO
/****** Object:  StoredProcedure [dbo].[SP_FACTURAS_cocretadas_filtered]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_FACTURAS_cocretadas_filtered]
( @nombre varchar(200))
as
select f.id_factura, v.id_vendedor, p1.nombre,p1.apellido,
c.id_cliente, p.nombre,p.apellido, fecha_pago, r.FECHA_RESERVA, tp.id_tipo_compra,tp.tipo_compra,fp.id_forma_pago,fp.forma_pago,f.baja_logica
from FACTURA f
join VENDEDORES v on f.id_vendedor = v.id_vendedor
join CLIENTES c on f.id_cliente = c.id_cliente
join TIPO_COMPRA tp on f.id_tipo_compra = tp.id_tipo_compra
join PERSONAS p on c.id_persona = p.id_persona
join PERSONAS p1 on v.id_persona = p1.id_persona 
join FORMA_PAGO fp on f.id_forma_pago = fp.id_forma_pago 
join RESERVA r on f.id_factura = r.id_factura
where p.nombre + space(1)+ p.apellido like CONCAT(@nombre, '%')
order by id_factura desc
GO
/****** Object:  StoredProcedure [dbo].[sp_filtro_cliente_fec]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure  [dbo].[sp_filtro_cliente_fec](
@fecha1 datetime,
@fecha2 datetime,
@nombre varchar(100) = null)
as
if(@nombre is not null)
begin
select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
     join FACTURA f on c.id_cliente = f.id_cliente
     join COMPROBANTE co on co.id_factura = f.id_factura
	 join RESERVA r on f.id_factura=r.id_factura
	where r.FECHA_RESERVA between @fecha1 and @fecha2 and nombre + space(1) + apellido like CONCAT(@nombre, '%')
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
end
else 
begin
select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
     join FACTURA f on c.id_cliente = f.id_cliente
     join COMPROBANTE co on co.id_factura = f.id_factura
	 join RESERVA r on f.id_factura=r.id_factura
	where r.FECHA_RESERVA between @fecha1 and @fecha2
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_filtro_cliente_fec_filter]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure  [dbo].[sp_filtro_cliente_fec_filter](
@fecha1 datetime,
@fecha2 datetime,
@nombre varchar(100))
as
select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
     join FACTURA f on c.id_cliente = f.id_cliente
     join COMPROBANTE co on co.id_factura = f.id_factura
	 join RESERVA r on f.id_factura=r.id_factura
	where r.FECHA_RESERVA between @fecha1 and @fecha2 and nombre+ SPace(1)+ apellido like CONCAT(@nombre, '%')
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
GO
/****** Object:  StoredProcedure [dbo].[sp_filtro_cliente_fec_nombre]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure  [dbo].[sp_filtro_cliente_fec_nombre](
@fecha1 datetime,
@fecha2 datetime,
@nombre varchar(100))
as
select c.id_cliente,nombre,apellido,nro_doc,fecha_nacimiento,sexo,id_tipo_doc,sum(cantidad*monto)'Monto'
    from clientes c join personas p on p.id_persona = c.id_persona
     join FACTURA f on c.id_cliente = f.id_cliente
     join COMPROBANTE co on co.id_factura = f.id_factura
	 join RESERVA r on f.id_factura=r.id_factura
	where r.FECHA_RESERVA between @fecha1 and @fecha2 and nombre + space(1) + apellido like CONCAT(@nombre, '%')
    group by c.id_cliente,nombre,apellido ,nro_doc,fecha_nacimiento,sexo,id_tipo_doc
GO
/****** Object:  StoredProcedure [dbo].[SP_GananciasXPelicula]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SP_GananciasXPelicula]
as
select p.titulo,duracion,descripcion, sum(c.monto*c.cantidad) 'ImporteGenerado', sum(cantidad) 'Espectadores'
from FACTURA f 
join comprobante c on f.id_factura = c.id_factura
join FUNCION pf on pf.id_funcion = c.id_funcion
join PELICULA p on p.id_pelicula= pf.id_pelicula
join RESTRICION_DE_EDAD re on p.id_restriccion=re.id_restriccion
where year(fecha_pago)=YEAR(getdate())
group by p.id_pelicula, P.titulo,duracion,descripcion

GO
/****** Object:  StoredProcedure [dbo].[SP_GastoClientes]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[SP_GastoClientes]
as
select p.nombre+SPACE(1)+p.apellido 'nombre',
b.barrio, trim(direccion)+SPACE(1)+trim(str(nro_direccion))'direccion', SUM(c.monto*c.cantidad)'importe'
from FACTURA f
join COMPROBANTE c on f.id_factura = c.id_factura
join CLIENTES  cl on f.id_cliente = cl.id_cliente
join PERSONAS p on cl.id_persona = p.id_persona
join BARRIOS b on b.id_barrio = p.id_barrio
where DATEDIFF(YEAR,f.fecha_pago, GETDATE()) =0  
group by p.nombre, p.apellido, b.barrio, direccion ,nro_direccion
having  SUM(c.monto*cantidad)> 
(select SUM(c.monto*cantidad)/COUNT(f.id_factura)
from factura  f
join COMPROBANTE c on c.id_factura = f.id_factura)
order by 1 asc
GO
/****** Object:  StoredProcedure [dbo].[SP_GastoTotalDeClientes]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[SP_GastoTotalDeClientes]
@fecha1 datetime,
@fecha2 datetime,
@apellido varchar(50)
as
select c.id_cliente 'Codigo',p.nombre +' '+p.apellido 'Cliente', sum(co.cantidad * co.monto) 'CantidadGastado',sum(cantidad)'Entradascompradas'
from personas p 
join clientes c on p.id_persona = c.id_persona
join factura f on c.id_cliente = f.id_cliente
join comprobante co on co.id_factura = f.id_factura
where (fecha_pago between @fecha1 and @fecha2 ) and apellido like CONCAT('[A-',@apellido, ']%')
group by c.id_cliente ,p.nombre ,p.apellido
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAvg]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Proc [dbo].[SP_GetAvg]
as
select SUM(c.monto*cantidad)/COUNT(f.id_factura) 'GastoPromedio'
from FACTURA f
join COMPROBANTE c on f.id_factura = c.id_factura
GO
/****** Object:  StoredProcedure [dbo].[SP_INSER_FUN]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_INSER_FUN](
	@FECHA DATETIME,
	@ID_IDIOMA INT,
	@ID_PELICULA INT,
	@ID_SALA INT,
	@ID_HORARIO INT,
	@MONTO MONEY
)
AS

	INSERT INTO FUNCION(fecha,id_idioma,id_pelicula,id_sala,id_horario,monto,baja_logica) VALUES (@FECHA,@ID_IDIOMA,@ID_PELICULA,@ID_SALA,@ID_HORARIO,@MONTO,0)

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_COMPROBANTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_INSERTAR_COMPROBANTE](
	@id_funcion int,
	@cantidad int,
	@id_factura int,
	@monto money,
	@id_promocion int,
	@fecha_fun datetime,
	@id int output

)as
	insert into COMPROBANTE values(@id_funcion,@cantidad,@id_factura,@monto,@id_promocion,0,@fecha_fun)
	SET @id = SCOPE_IDENTITY();

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_FACTURA_PAGADA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_INSERTAR_FACTURA_PAGADA](
	@fecha_reserva datetime,
	@id_vendedor int,
	@id_cliente int,
	@fecha_pago datetime,
	@id_tipo_compra int,
	@id_forma_pago int,
	@id int output
)as	
	insert into FACTURA values(@id_vendedor,@id_cliente,@fecha_pago,@id_tipo_compra,@id_forma_pago,0)
	insert into RESERVA values(@fecha_reserva,0)
	SET @id = SCOPE_IDENTITY();

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_FACTURA_POSPUESTA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_INSERTAR_FACTURA_POSPUESTA](
	@fecha_reserva datetime,
	@id_vendedor int,
	@id_cliente int,
	@id int output
)as
	insert into FACTURA values(@id_vendedor,@id_cliente,null,null,null,0)
	insert into RESERVA values(@fecha_reserva,0)
	SET @id = SCOPE_IDENTITY();

GO
/****** Object:  StoredProcedure [dbo].[SP_MAYOR_MENOR_GASTO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_MAYOR_MENOR_GASTO]
AS
	select top 1 p.nombre+ ' '+ p.apellido'name', b.barrio, trim(direccion)+SPACE(1)+trim(str(nro_direccion))'direc', 
	sum(monto*cantidad)'totalgastado','Mayor Gasto' 'Top_Gasto'
	from FACTURA f
	join COMPROBANTE c on f.id_factura = c.id_factura
	join CLIENTES cl on cl.id_cliente = f.id_cliente
	join PERSONAS p on p.id_persona = cl.id_persona
	join BARRIOS b on b.id_barrio = p.id_barrio
	where DATEDIFF(YEAR,f.fecha_pago, GETDATE())= 0
	group by p.nombre, p.apellido, b.barrio, 
	direccion,str(nro_direccion)
	 having SUM(monto*cantidad)>=all (select SUM(monto * cantidad)
									 from FACTURA f1
									 join COMPROBANTE c1 on f1.id_factura = c1.id_factura
									 where f1.id_factura = c1.id_factura and 
									 DATEDIFF(YEAR,f1.fecha_pago, GETDATE()) = 0
									 group by f1.id_cliente)

	 union

	select top 1  p.nombre+ ' '+ p.apellido, b.barrio, trim(direccion)+SPACE(1)+trim(str(nro_direccion)), 
	sum(monto*cantidad)'total_gastado',
	'Menor Gasto' 'Top_Gasto'
	from FACTURA f
	join COMPROBANTE c on f.id_factura = c.id_factura
	join CLIENTES cl on cl.id_cliente = f.id_cliente
	join PERSONAS p on p.id_persona = cl.id_persona
	join BARRIOS b on b.id_barrio = p.id_barrio
	where DATEDIFF(YEAR,f.fecha_pago, GETDATE())= 0
	group by cl.id_cliente, p.nombre, p.apellido, b.barrio, 
	direccion, str(nro_direccion)
	 having SUM(monto*cantidad)<=all (select SUM(monto * cantidad)
	 from FACTURA f1
	 join COMPROBANTE c1 on f1.id_factura = c1.id_factura
	 where f1.id_factura = c1.id_factura and 
	 DATEDIFF(YEAR,f1.fecha_pago, GETDATE()) = 0
	 group by f1.id_cliente)
	 order by 4
GO
/****** Object:  StoredProcedure [dbo].[SP_MEJOR_PELICULA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MEJOR_PELICULA]
AS
	select imagen
	from PELICULA
	where id_pelicula in (select id_pelicula
			from COMPROBANTE c
			join FUNCION f on c.id_funcion = f.id_funcion
			group by f.id_pelicula
			having SUM(cantidad) >= all (select SUM(cantidad)
										  from COMPROBANTE c
										  join FUNCION f on c.id_funcion = f.id_funcion
										  group by f.id_pelicula))

						  
GO
/****** Object:  StoredProcedure [dbo].[SP_MODIFY_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_MODIFY_CLIENTE](
	@id_persona int,
	@direccion varchar (100),
	@nro_direccion int, 
	@id_barrio int,
	@id_tipo_doc int,
	@nro_doc bigint
)as
	update PERSONAS
	set 
		direccion = @direccion,
		nro_direccion = @nro_direccion,
		id_barrio = @id_barrio,
		id_tipo_doc = @id_tipo_doc,
		nro_doc = @nro_doc
	where id_persona = @id_persona

GO
/****** Object:  StoredProcedure [dbo].[SP_MODIFY_vendedor]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_MODIFY_vendedor](
	@id_persona int,
	@direccion varchar (100),
	@nro_direccion int, 
	@id_barrio int,
	@id_tipo_doc int,
	@nro_doc bigint,
	@usuario varchar(200),
	@contraseña varchar(200),
	@admin int,
	@id_vendedor int
)as
	update PERSONAS
	set 
		direccion = @direccion,
		nro_direccion = @nro_direccion,
		id_barrio = @id_barrio,
		id_tipo_doc = @id_tipo_doc,
		nro_doc = @nro_doc
	where id_persona = @id_persona

	update login_vend
	set usuario = @usuario,
		contraseña = @contraseña,
		adminn = @admin
	where id_vendedor = @id_vendedor
GO
/****** Object:  StoredProcedure [dbo].[SP_MONTO_DIARIO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_MONTO_DIARIO] 
AS
	select SUM(cantidad * monto)
	From  COMPROBANTE c 
	JOIN FACTURA F ON  F.id_factura = c.id_factura
	where DAY(F.fecha_pago) = day(GETDATE()) and month(F.fecha_pago) = month(GETDATE()) and year(F.fecha_pago) = year(GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_barrio]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_obtener_barrio](@id_localidad int)
as
begin
select id_barrio, barrio from BARRIOS where @id_localidad = id_localidad
end
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_CLIENTE]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_OBTENER_CLIENTE]
as
	select id_cliente,p.id_persona, nombre,apellido,direccion,nro_direccion,b.id_barrio,nro_doc,tp.id_tipo_doc,fecha_nacimiento,Sexo,tp.tipo_documento,prov.id_provincia,l.id_localidad
	from CLIENTES c
	join PERSONAS p on c.id_persona = p.id_persona
	join TIPOS_DE_DOCUMENTOS tp on tp.id_tipo_doc = p.id_tipo_doc
	join BARRIOS b on p.id_barrio = b.id_barrio
	join LOCALIDADES l on l.id_localidad = b.id_localidad
	join PROVINCIAS prov on prov.id_provincia = l.id_provincia
	where baja_logica = 0

GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_localidad]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[sp_obtener_localidad](@id_provincia int)
as
begin 
select id_localidad, localidad from LOCALIDADES where @id_provincia = id_provincia
end
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_PELISCBO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_OBTENER_PELISCBO]
as
	select id_pelicula, titulo
	from pelicula
	where baja_logica = 0
GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_provincia]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_obtener_provincia]
as
begin 
select id_provincia, provincia from PROVINCIAS
end

GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_VENDEDOR]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_OBTENER_VENDEDOR](
	@usuario varchar(50)
)as
	select v.id_vendedor,p.id_persona, nombre,apellido,direccion,nro_direccion,id_barrio,nro_doc,id_tipo_doc,fecha_nacimiento,Sexo,adminn
	from login_vend l
	join VENDEDORES v on v.id_vendedor=l.id_vendedor
	join PERSONAS p on v.id_persona = p.id_persona
	where usuario = @usuario
GO
/****** Object:  StoredProcedure [dbo].[SP_OBTENER_VendedorCrud]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   procedure [dbo].[SP_OBTENER_VendedorCrud]
as
	select c.id_vendedor,p.id_persona, nombre,apellido,direccion,nro_direccion,b.id_barrio,nro_doc,tp.id_tipo_doc,fecha_nacimiento,Sexo,tp.tipo_documento,prov.id_provincia,l.id_localidad, lv.adminn, lv.usuario,lv.contraseña
	from VENDEDORES c
	join PERSONAS p on c.id_persona = p.id_persona
	join TIPOS_DE_DOCUMENTOS tp on tp.id_tipo_doc = p.id_tipo_doc
	join BARRIOS b on p.id_barrio = b.id_barrio
	join LOCALIDADES l on l.id_localidad = b.id_localidad
	join PROVINCIAS prov on prov.id_provincia = l.id_provincia
	join login_vend lv on lv.id_vendedor = c.id_vendedor
	where c.baja_logica = 0

GO
/****** Object:  StoredProcedure [dbo].[SP_RecaudacionPorFechas]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SP_RecaudacionPorFechas]
as
SELECT pr.id_producto, pr.nombre, SUM(c.cantidad * c.monto)'Total', 'Año Actual'TIPO
FROM comprobante c
join funcion pf on c.id_funcion = pf.id_funcion
join PELICULA p on p.id_pelicula = pf.id_pelicula
join PRODUCTOR pr on pr.id_producto = p.id_productor
join PROMOCION pro on pro.id_promocion = c.id_promocion
join FACTURA f on f.id_factura = c.id_factura
join RESERVA r on r.id_factura = f.id_factura
where DATEDIFF (YEAR, r.FECHA_RESERVA, GETDATE()) = 0
group by pr.id_producto, pr.nombre


union

SELECT distinct  pr.id_producto, pr.nombre, SUM(c.cantidad * c.monto) 'Recaudacion', 'Desde el principio'TIPO
FROM comprobante c
join funcion pf on c.id_funcion = pf.id_funcion
join PELICULA p on p.id_pelicula = pf.id_pelicula
join PRODUCTOR pr on pr.id_producto = p.id_productor
join PROMOCION pro on pro.id_promocion = c.id_promocion
join FACTURA f on f.id_factura = c.id_factura
join RESERVA r on r.id_factura = f.id_factura
group by pr.id_producto, pr.nombre
order by 4 
	
GO
/****** Object:  StoredProcedure [dbo].[SP_RECAUDACIONxPROMO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[SP_RECAUDACIONxPROMO]
@montomin money
as
select tp.id_tipo_promocion,tp.tipo_promocion,
	sum(c.cantidad * c.monto) 'Importe_Generado', YEAR(f.fecha_pago)
	from factura f 
	join comprobante c on f.id_factura = c.id_factura
	join PROMOCION pr on pr.id_promocion=c.id_promocion
	join TIPO_PROMOCION tp on tp.id_tipo_promocion = pr.id_tipo_promocion
	join FUNCION pf on pf.id_funcion= c.id_funcion
	join PELICULA p on p.id_pelicula = pf.id_pelicula
	join RESTRICION_DE_EDAD re on re.id_restriccion = p.id_restriccion
	where YEAR(f.fecha_pago) = YEAR(GETDATE())
	group by tp.id_tipo_promocion, YEAR(f.fecha_pago),tp.tipo_promocion
	having sum(c.cantidad * c.monto)>=@montomin
GO
/****** Object:  StoredProcedure [dbo].[SP_TICKETS_DIARIO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_TICKETS_DIARIO]
as
	select count(id_ticket)
	from TICKET t
	join COMPROBANTE c on t.id_comprobante = c.id_comprobante
	JOIN FACTURA F ON  F.id_factura = c.id_factura
	where DAY(F.fecha_pago) = day(GETDATE()) and month(F.fecha_pago) = month(GETDATE()) and year(F.fecha_pago) = year(GETDATE())
	group by DAY(F.fecha_pago), month(F.fecha_pago), year(F.fecha_pago)

GO
/****** Object:  StoredProcedure [dbo].[SP_TICKETSxVENDEDOR]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[SP_TICKETSxVENDEDOR]
AS
select  v.id_vendedor, p.nombre+SPACE (1)+ p.apellido 'Nombreyapellido' ,
p.nro_doc'numerodedocumento',COUNT(cantidad)'Cantidad'
from VENDEDORES V
join FACTURA f on f.id_vendedor = v.id_vendedor
join PERSONAS p on v.id_persona = p.id_persona
join comprobante c on c.id_factura = f.id_factura
group by v.id_vendedor,p.nombre,p.apellido,p.nro_doc
order by 2
GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_PROMO]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_TIPO_PROMO]
AS
SELECT * FROM TIPOS_DE_DOCUMENTOS

GO
/****** Object:  StoredProcedure [dbo].[SP_TIPO_SALA]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[SP_TIPO_SALA]
as
	select id_tipo_sala, tipo_sala
	from TIPO_DE_SALA
	order by tipo_sala
GO
/****** Object:  StoredProcedure [dbo].[SP_update_FUN]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_update_FUN](
	@id_funcion int,
	@FECHA DATETIME,
	@ID_IDIOMA INT,
	@ID_PELICULA INT,
	@ID_SALA INT,
	@ID_HORARIO INT,
	@MONTO MONEY
)
AS

	update FUNCION
	set 
		id_pelicula = @ID_PELICULA,
		fecha = @FECHA,
		id_idioma = @ID_IDIOMA,
		id_sala = @ID_SALA,
		id_horario = @ID_HORARIO,
		monto = @MONTO
	where id_funcion = @id_funcion

GO
/****** Object:  StoredProcedure [dbo].[SP_USUARIO_PASS]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_USUARIO_PASS](
	@usuario varchar(50),
	@contraseña varchar(50)
)
as
	select usuario,contraseña
	from login_vend
	where usuario = @usuario and contraseña = @contraseña and baja_logica = 0
GO
/****** Object:  StoredProcedure [dbo].[Update_Peli]    Script Date: 10/11/2022 10:37:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Update_Peli](
	@id_pel int,
	@titulo varchar(100),
	@descripcion varchar(500),
	@id_restriccion int,
	@id_productor int,
	@duracion int,
	@imagen Image
)as

	update PELICULA
	set
		titulo = @titulo,
		descripcion = @descripcion,
		id_restriccion = @id_restriccion,
		id_productor = @id_productor,
		duracion = @duracion,
		imagen = @imagen
	where id_pelicula = @id_pel
GO
USE [master]
GO
ALTER DATABASE [CINE_HOYTS] SET  READ_WRITE 
GO
