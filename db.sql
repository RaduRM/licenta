USE [master]
GO
/****** Object:  Database [GestiuneFunerara]    Script Date: 5/28/2025 1:29:19 PM ******/
CREATE DATABASE [GestiuneFunerara]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestiuneFunerara', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestiuneFunerara.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestiuneFunerara_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestiuneFunerara_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GestiuneFunerara] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestiuneFunerara].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestiuneFunerara] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestiuneFunerara] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestiuneFunerara] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GestiuneFunerara] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestiuneFunerara] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GestiuneFunerara] SET  MULTI_USER 
GO
ALTER DATABASE [GestiuneFunerara] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestiuneFunerara] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestiuneFunerara] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestiuneFunerara] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestiuneFunerara] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestiuneFunerara] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GestiuneFunerara] SET QUERY_STORE = ON
GO
ALTER DATABASE [GestiuneFunerara] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GestiuneFunerara]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComenziProduse]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComenziProduse](
	[id_comanda_produs] [int] IDENTITY(1,1) NOT NULL,
	[id_precomenzi] [int] NOT NULL,
	[id_produs] [int] NOT NULL,
	[tip_livrare] [nvarchar](50) NOT NULL,
	[status_livrare] [nvarchar](50) NOT NULL,
	[data_necesara] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_comanda_produs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacheteFunerare]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacheteFunerare](
	[id_pachetefunerare] [int] IDENTITY(1,1) NOT NULL,
	[Denumire] [nvarchar](100) NOT NULL,
	[Descriere] [nvarchar](max) NOT NULL,
	[Pret] [decimal](10, 2) NOT NULL,
	[ImagineURL] [nvarchar](255) NULL,
 CONSTRAINT [PK_PacheteFunerare] PRIMARY KEY CLUSTERED 
(
	[id_pachetefunerare] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precomenzi]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precomenzi](
	[id_precomenzi] [int] IDENTITY(1,1) NOT NULL,
	[id_utilizator] [int] NOT NULL,
	[id_pachetefunerare] [int] NOT NULL,
	[NumeDefunct] [nvarchar](100) NOT NULL,
	[DataDeces] [date] NULL,
	[LocatieRidicare] [nvarchar](200) NOT NULL,
	[Observatii] [nvarchar](max) NULL,
	[Stare] [nvarchar](50) NOT NULL,
	[DataCreare] [datetime] NOT NULL,
	[CodConfirmare] [nvarchar](10) NULL,
	[id_produs] [int] NULL,
 CONSTRAINT [PK_Precomenzi] PRIMARY KEY CLUSTERED 
(
	[id_precomenzi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produse]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produse](
	[id_produs] [int] IDENTITY(1,1) NOT NULL,
	[nume] [nvarchar](100) NOT NULL,
	[descriere] [nvarchar](max) NULL,
	[pret_achizitie] [decimal](10, 2) NOT NULL,
	[pret_vanzare] [decimal](10, 2) NOT NULL,
	[stoc_curent] [int] NOT NULL,
	[este_personalizat] [bit] NOT NULL,
	[imagine_url] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_produs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizatori]    Script Date: 5/28/2025 1:29:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizatori](
	[id_utilizator] [int] IDENTITY(1,1) NOT NULL,
	[NumeComplet] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Telefon] [nvarchar](20) NOT NULL,
	[Parola_hashuita] [nvarchar](255) NOT NULL,
	[Rol] [nchar](50) NULL,
	[DataInregistrare] [datetime] NOT NULL,
	[Fotografie] [nvarchar](max) NULL,
	[CodResetare] [nvarchar](10) NULL,
	[CodExpiraLa] [datetime] NULL,
	[CodActivare] [nvarchar](10) NULL,
	[EsteActiv] [bit] NULL,
 CONSTRAINT [PK_Utilizatori] PRIMARY KEY CLUSTERED 
(
	[id_utilizator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ComenziProduse] ADD  DEFAULT ('in_asteptare') FOR [status_livrare]
GO
ALTER TABLE [dbo].[Precomenzi] ADD  CONSTRAINT [DF__Precomenz__Stare__412EB0B6]  DEFAULT ('neconfirmata') FOR [Stare]
GO
ALTER TABLE [dbo].[Precomenzi] ADD  CONSTRAINT [DF__Precomenz__DataC__4222D4EF]  DEFAULT (getdate()) FOR [DataCreare]
GO
ALTER TABLE [dbo].[Produse] ADD  DEFAULT ((0)) FOR [stoc_curent]
GO
ALTER TABLE [dbo].[Produse] ADD  DEFAULT ((0)) FOR [este_personalizat]
GO
ALTER TABLE [dbo].[Utilizatori] ADD  DEFAULT ((0)) FOR [EsteActiv]
GO
ALTER TABLE [dbo].[ComenziProduse]  WITH CHECK ADD  CONSTRAINT [FK_ComandaProdus_Precomanda] FOREIGN KEY([id_precomenzi])
REFERENCES [dbo].[Precomenzi] ([id_precomenzi])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ComenziProduse] CHECK CONSTRAINT [FK_ComandaProdus_Precomanda]
GO
ALTER TABLE [dbo].[ComenziProduse]  WITH CHECK ADD  CONSTRAINT [FK_ComandaProdus_Produs] FOREIGN KEY([id_produs])
REFERENCES [dbo].[Produse] ([id_produs])
GO
ALTER TABLE [dbo].[ComenziProduse] CHECK CONSTRAINT [FK_ComandaProdus_Produs]
GO
ALTER TABLE [dbo].[Precomenzi]  WITH CHECK ADD  CONSTRAINT [FK_Precomenzi_Pachet] FOREIGN KEY([id_pachetefunerare])
REFERENCES [dbo].[PacheteFunerare] ([id_pachetefunerare])
GO
ALTER TABLE [dbo].[Precomenzi] CHECK CONSTRAINT [FK_Precomenzi_Pachet]
GO
ALTER TABLE [dbo].[Precomenzi]  WITH CHECK ADD  CONSTRAINT [FK_Precomenzi_Produse] FOREIGN KEY([id_produs])
REFERENCES [dbo].[Produse] ([id_produs])
GO
ALTER TABLE [dbo].[Precomenzi] CHECK CONSTRAINT [FK_Precomenzi_Produse]
GO
ALTER TABLE [dbo].[Precomenzi]  WITH CHECK ADD  CONSTRAINT [FK_Precomenzi_Utilizator] FOREIGN KEY([id_utilizator])
REFERENCES [dbo].[Utilizatori] ([id_utilizator])
GO
ALTER TABLE [dbo].[Precomenzi] CHECK CONSTRAINT [FK_Precomenzi_Utilizator]
GO
ALTER TABLE [dbo].[ComenziProduse]  WITH CHECK ADD  CONSTRAINT [CHK_StatusLivrare] CHECK  (([status_livrare]='livrat' OR [status_livrare]='in_curs' OR [status_livrare]='in_asteptare'))
GO
ALTER TABLE [dbo].[ComenziProduse] CHECK CONSTRAINT [CHK_StatusLivrare]
GO
ALTER TABLE [dbo].[ComenziProduse]  WITH CHECK ADD  CONSTRAINT [CHK_TipLivrare] CHECK  (([tip_livrare]='comandat' OR [tip_livrare]='din_stoc'))
GO
ALTER TABLE [dbo].[ComenziProduse] CHECK CONSTRAINT [CHK_TipLivrare]
GO
USE [master]
GO
ALTER DATABASE [GestiuneFunerara] SET  READ_WRITE 
GO
