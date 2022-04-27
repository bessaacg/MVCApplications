USE [master]
GO

/****** Object:  Database [EmpDatabase]    Script Date: 2022/04/27 14:52:04 ******/
CREATE DATABASE [EmpDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpDatabase', FILENAME = N'C:\Users\Bessaac Gambe\EmpDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpDatabase_log', FILENAME = N'C:\Users\Bessaac Gambe\EmpDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [EmpDatabase] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [EmpDatabase] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [EmpDatabase] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [EmpDatabase] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [EmpDatabase] SET ARITHABORT OFF 
GO

ALTER DATABASE [EmpDatabase] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [EmpDatabase] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [EmpDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [EmpDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [EmpDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [EmpDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [EmpDatabase] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [EmpDatabase] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [EmpDatabase] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [EmpDatabase] SET  ENABLE_BROKER 
GO

ALTER DATABASE [EmpDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [EmpDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [EmpDatabase] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [EmpDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [EmpDatabase] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [EmpDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [EmpDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [EmpDatabase] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [EmpDatabase] SET  MULTI_USER 
GO

ALTER DATABASE [EmpDatabase] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [EmpDatabase] SET DB_CHAINING OFF 
GO

ALTER DATABASE [EmpDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [EmpDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [EmpDatabase] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [EmpDatabase] SET QUERY_STORE = OFF
GO

USE [EmpDatabase]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [EmpDatabase] SET  READ_WRITE 
GO

