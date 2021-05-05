
create database SmartInsurance
use SmartInsurance


create table Presupuesto
(
	Id int identity(1,1) not null,
	Tacticas varchar(50),
	Cantidad int,
	Costo int
);



DECLARE @Cantiad int;
DECLARE @Costo int;

DECLARE @Tacticas VARCHAR(50);         
SELECT @Tacticas = 'Volantes'; 

--insert into Presupuesto (Tacticas,Cantidad,Costo) values ('Volantes',1000,2875)
--insert into Presupuesto (Tacticas,Cantidad,Costo) values ('Gorras',4,2500)
--insert into Presupuesto (Tacticas,Cantidad,Costo) values ('Franelas',4,2800)
--insert into Presupuesto (Tacticas,Cantidad,Costo) values ('Folletos',500,5000)
--insert into Presupuesto (Tacticas,Cantidad,Costo) values ('Carteleras',1,10000)
select sum(Costo) as Total from Presupuesto

select * from Presupuesto


USE [master]
GO
/****** Object:  Database [SmartInsurance]    Script Date: 5/3/2021 1:19:48 AM ******/
CREATE DATABASE [SmartInsurance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartInsurance', FILENAME = N'C:\Users\Israel\SmartInsurance.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartInsurance_log', FILENAME = N'C:\Users\Israel\SmartInsurance_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SmartInsurance] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartInsurance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartInsurance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartInsurance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartInsurance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartInsurance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartInsurance] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartInsurance] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SmartInsurance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartInsurance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartInsurance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartInsurance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartInsurance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartInsurance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartInsurance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartInsurance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartInsurance] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SmartInsurance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartInsurance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartInsurance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartInsurance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartInsurance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartInsurance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartInsurance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartInsurance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartInsurance] SET  MULTI_USER 
GO
ALTER DATABASE [SmartInsurance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartInsurance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartInsurance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartInsurance] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartInsurance] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SmartInsurance] SET QUERY_STORE = OFF
GO
USE [SmartInsurance]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SmartInsurance]
GO
/****** Object:  Table [dbo].[Presupuesto]    Script Date: 5/3/2021 1:19:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuesto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tacticas] [varchar](50) NULL,
	[Cantidad] [int] NULL,
	[Costo] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Presupuesto] ON 

INSERT [dbo].[Presupuesto] ([Id], [Tacticas], [Cantidad], [Costo]) VALUES (1, N'Volantes', 1000, 2875)
INSERT [dbo].[Presupuesto] ([Id], [Tacticas], [Cantidad], [Costo]) VALUES (2, N'Gorras', 4, 2500)
INSERT [dbo].[Presupuesto] ([Id], [Tacticas], [Cantidad], [Costo]) VALUES (3, N'Franelas', 4, 2800)
INSERT [dbo].[Presupuesto] ([Id], [Tacticas], [Cantidad], [Costo]) VALUES (4, N'Folletos', 500, 5000)
INSERT [dbo].[Presupuesto] ([Id], [Tacticas], [Cantidad], [Costo]) VALUES (5, N'Carteleras', 1, 10000)
SET IDENTITY_INSERT [dbo].[Presupuesto] OFF
GO
USE [master]
GO
ALTER DATABASE [SmartInsurance] SET  READ_WRITE 
GO





