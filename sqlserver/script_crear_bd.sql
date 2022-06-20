CREATE DATABASE SanRafael;
GO
USE [SanRafael]
GO
/****** Object:  Database [SanRafael]    Script Date: 22/06/2021 12:56:59 p. m. ******/
ALTER DATABASE [SanRafael] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SanRafael].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SanRafael] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SanRafael] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SanRafael] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SanRafael] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SanRafael] SET ARITHABORT OFF 
GO
ALTER DATABASE [SanRafael] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SanRafael] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SanRafael] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SanRafael] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SanRafael] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SanRafael] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SanRafael] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SanRafael] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SanRafael] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SanRafael] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SanRafael] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SanRafael] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SanRafael] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SanRafael] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SanRafael] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SanRafael] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SanRafael] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SanRafael] SET RECOVERY FULL 
GO
ALTER DATABASE [SanRafael] SET  MULTI_USER 
GO
ALTER DATABASE [SanRafael] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SanRafael] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SanRafael] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SanRafael] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SanRafael] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SanRafael', N'ON'
GO
ALTER DATABASE [SanRafael] SET QUERY_STORE = OFF
GO
USE [SanRafael]
GO
/****** Object:  Table [dbo].[AreaProduccion]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaProduccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Responsable] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AreaProduccion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Costo]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Deshabilitado] [bit] NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[Monto] [decimal](18, 2) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
	[Periodicidad] [nvarchar](max) NOT NULL,
	[Tipo] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Costo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insumo]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insumo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [decimal](18, 2) NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[Deshabilitado] [bit] NOT NULL,
	[FechaDeRegistro] [datetime2](7) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
	[Precio] [real] NOT NULL,
	[RutaImagen] [nvarchar](max) NULL,
	[StockMinimo] [decimal](18, 2) NOT NULL,
	[Tienda] [nvarchar](64) NOT NULL,
	[UnidadId] [int] NOT NULL,
 CONSTRAINT [PK_Insumo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsumoPrecioHistorial]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumoPrecioHistorial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
	[InsumoId] [int] NOT NULL,
	[Precio] [real] NOT NULL,
 CONSTRAINT [PK_InsumoPrecioHistorial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsumosMarcas]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumosMarcas](
	[InsumoId] [int] NOT NULL,
	[MarcaId] [int] NOT NULL,
 CONSTRAINT [PK_InsumosMarcas] PRIMARY KEY CLUSTERED 
(
	[InsumoId] ASC,
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsumosRecetas]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsumosRecetas](
	[IdInsumo] [int] NOT NULL,
	[IdReceta] [int] NOT NULL,
	[IdUnidad] [int] NOT NULL,
	[PesoNeto] [decimal](18, 2) NOT NULL,
	[UnidadId] [int] NULL,
 CONSTRAINT [PK_InsumosRecetas] PRIMARY KEY CLUSTERED 
(
	[IdInsumo] ASC,
	[IdReceta] ASC,
	[IdUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[MarcaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Presentacion]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presentacion](
	[idPresentacion] [int] IDENTITY(1,1) NOT NULL,
	[InsumoId] [int] NOT NULL,
	[cantidadUnidades] [float] NOT NULL,
	[fechaCaducidad] [bit] NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[precioPresentacion] [float] NOT NULL,
	[precioUnitario] [float] NOT NULL,
 CONSTRAINT [PK_Presentacion] PRIMARY KEY CLUSTERED 
(
	[idPresentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Activo] [bit] NOT NULL,
	[AreaProduccionId] [int] NULL,
	[Clasificacion] [nvarchar](64) NOT NULL,
	[CostoOperacion] [decimal](18, 2) NOT NULL,
	[CostoOtrosConUtilidad] [decimal](18, 2) NOT NULL,
	[CostoUnitario] [decimal](18, 2) NOT NULL,
	[IngresoProducto] [decimal](18, 2) NOT NULL,
	[MetodoPreparacion] [nvarchar](max) NULL,
	[Nombre] [nvarchar](64) NOT NULL,
	[Porciones] [decimal](18, 2) NOT NULL,
	[PrecioDefinidoPorUsuario] [decimal](18, 2) NOT NULL,
	[PrecioSugerido] [decimal](18, 2) NOT NULL,
	[PrecioVentaConIva] [decimal](18, 2) NOT NULL,
	[RecetasVendidas] [int] NOT NULL,
	[TipoReceta] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecetaAReceta]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecetaAReceta](
	[IdRecetaHijo] [int] NOT NULL,
	[IdRecetaPadre] [int] NOT NULL,
	[Porciones] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_RecetaAReceta] PRIMARY KEY CLUSTERED 
(
	[IdRecetaHijo] ASC,
	[IdRecetaPadre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidad]    Script Date: 22/06/2021 12:56:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Grupo] [int] NOT NULL,
	[Nombre] [int] NOT NULL,
	[Simbolo] [nvarchar](max) NULL,
	[UnidadBase] [int] NOT NULL,
 CONSTRAINT [PK_Unidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Insumo_CategoriaId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Insumo_CategoriaId] ON [dbo].[Insumo]
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Insumo_UnidadId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Insumo_UnidadId] ON [dbo].[Insumo]
(
	[UnidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsumoPrecioHistorial_InsumoId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InsumoPrecioHistorial_InsumoId] ON [dbo].[InsumoPrecioHistorial]
(
	[InsumoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsumosMarcas_MarcaId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InsumosMarcas_MarcaId] ON [dbo].[InsumosMarcas]
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsumosRecetas_IdReceta]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InsumosRecetas_IdReceta] ON [dbo].[InsumosRecetas]
(
	[IdReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsumosRecetas_UnidadId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_InsumosRecetas_UnidadId] ON [dbo].[InsumosRecetas]
(
	[UnidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Presentacion_InsumoId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Presentacion_InsumoId] ON [dbo].[Presentacion]
(
	[InsumoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Receta_AreaProduccionId]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Receta_AreaProduccionId] ON [dbo].[Receta]
(
	[AreaProduccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecetaAReceta_IdRecetaPadre]    Script Date: 22/06/2021 12:56:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_RecetaAReceta_IdRecetaPadre] ON [dbo].[RecetaAReceta]
(
	[IdRecetaPadre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Insumo]  WITH CHECK ADD  CONSTRAINT [FK_Insumo_Categoria_CategoriaId] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categoria] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Insumo] CHECK CONSTRAINT [FK_Insumo_Categoria_CategoriaId]
GO
ALTER TABLE [dbo].[Insumo]  WITH CHECK ADD  CONSTRAINT [FK_Insumo_Unidad_UnidadId] FOREIGN KEY([UnidadId])
REFERENCES [dbo].[Unidad] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Insumo] CHECK CONSTRAINT [FK_Insumo_Unidad_UnidadId]
GO
ALTER TABLE [dbo].[InsumoPrecioHistorial]  WITH CHECK ADD  CONSTRAINT [FK_InsumoPrecioHistorial_Insumo_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InsumoPrecioHistorial] CHECK CONSTRAINT [FK_InsumoPrecioHistorial_Insumo_InsumoId]
GO
ALTER TABLE [dbo].[InsumosMarcas]  WITH CHECK ADD  CONSTRAINT [FK_InsumosMarcas_Insumo_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InsumosMarcas] CHECK CONSTRAINT [FK_InsumosMarcas_Insumo_InsumoId]
GO
ALTER TABLE [dbo].[InsumosMarcas]  WITH CHECK ADD  CONSTRAINT [FK_InsumosMarcas_Marca_MarcaId] FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marca] ([MarcaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InsumosMarcas] CHECK CONSTRAINT [FK_InsumosMarcas_Marca_MarcaId]
GO
ALTER TABLE [dbo].[InsumosRecetas]  WITH CHECK ADD  CONSTRAINT [FK_InsumosRecetas_Insumo_IdInsumo] FOREIGN KEY([IdInsumo])
REFERENCES [dbo].[Insumo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InsumosRecetas] CHECK CONSTRAINT [FK_InsumosRecetas_Insumo_IdInsumo]
GO
ALTER TABLE [dbo].[InsumosRecetas]  WITH CHECK ADD  CONSTRAINT [FK_InsumosRecetas_Receta_IdReceta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InsumosRecetas] CHECK CONSTRAINT [FK_InsumosRecetas_Receta_IdReceta]
GO
ALTER TABLE [dbo].[InsumosRecetas]  WITH CHECK ADD  CONSTRAINT [FK_InsumosRecetas_Unidad_UnidadId] FOREIGN KEY([UnidadId])
REFERENCES [dbo].[Unidad] ([Id])
GO
ALTER TABLE [dbo].[InsumosRecetas] CHECK CONSTRAINT [FK_InsumosRecetas_Unidad_UnidadId]
GO
ALTER TABLE [dbo].[Presentacion]  WITH CHECK ADD  CONSTRAINT [FK_Presentacion_Insumo_InsumoId] FOREIGN KEY([InsumoId])
REFERENCES [dbo].[Insumo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Presentacion] CHECK CONSTRAINT [FK_Presentacion_Insumo_InsumoId]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_AreaProduccion_AreaProduccionId] FOREIGN KEY([AreaProduccionId])
REFERENCES [dbo].[AreaProduccion] ([Id])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_AreaProduccion_AreaProduccionId]
GO
ALTER TABLE [dbo].[RecetaAReceta]  WITH CHECK ADD  CONSTRAINT [FK_RecetaAReceta_Receta_IdRecetaHijo] FOREIGN KEY([IdRecetaHijo])
REFERENCES [dbo].[Receta] ([Id])
GO
ALTER TABLE [dbo].[RecetaAReceta] CHECK CONSTRAINT [FK_RecetaAReceta_Receta_IdRecetaHijo]
GO
ALTER TABLE [dbo].[RecetaAReceta]  WITH CHECK ADD  CONSTRAINT [FK_RecetaAReceta_Receta_IdRecetaPadre] FOREIGN KEY([IdRecetaPadre])
REFERENCES [dbo].[Receta] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecetaAReceta] CHECK CONSTRAINT [FK_RecetaAReceta_Receta_IdRecetaPadre]
GO
USE [master]
GO
ALTER DATABASE [SanRafael] SET  READ_WRITE 
GO