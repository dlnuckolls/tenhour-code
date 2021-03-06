USE [master]
GO
/****** Object:  Database [tenhourDB]    Script Date: 12/1/2018 1:58:11 AM ******/
CREATE DATABASE [tenhourDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tenhourDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\tenhourDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'tenhourDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\tenhourDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tenhourDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tenhourDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tenhourDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tenhourDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tenhourDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tenhourDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [tenhourDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tenhourDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [tenhourDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tenhourDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tenhourDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tenhourDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tenhourDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tenhourDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tenhourDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tenhourDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tenhourDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tenhourDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tenhourDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tenhourDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tenhourDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tenhourDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tenhourDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tenhourDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tenhourDB] SET RECOVERY FULL 
GO
ALTER DATABASE [tenhourDB] SET  MULTI_USER 
GO
ALTER DATABASE [tenhourDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tenhourDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tenhourDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tenhourDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'tenhourDB', N'ON'
GO
USE [tenhourDB]
GO
/****** Object:  Table [dbo].[activity]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](50) NOT NULL,
	[loginTime] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[course]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insID] [nvarchar](50) NULL,
	[courseName] [nvarchar](60) NULL,
	[slug] [nvarchar](60) NULL,
	[description] [nvarchar](2000) NULL,
	[coverImage] [nvarchar](130) NULL,
	[video] [nvarchar](50) NULL,
	[level] [nvarchar](20) NULL,
	[price] [nvarchar](10) NULL,
	[releaseDate] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lessonTbl]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessonTbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[couID] [nvarchar](30) NOT NULL,
	[insID] [nvarchar](30) NOT NULL,
	[lessionName] [nvarchar](250) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[subject] [nvarchar](100) NOT NULL,
	[slug] [nvarchar](250) NOT NULL,
	[timeMin] [nvarchar](3) NOT NULL,
	[timeSec] [nvarchar](3) NOT NULL,
	[coverImage] [nvarchar](200) NULL,
	[video] [nvarchar](200) NULL,
	[date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[members]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[members](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](100) NULL,
	[username] [nvarchar](120) NOT NULL,
	[email] [nvarchar](120) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[status] [nvarchar](2) NOT NULL,
	[expire] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[packages]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](120) NOT NULL,
	[subTitle] [nvarchar](100) NULL,
	[condition] [nvarchar](120) NULL,
	[amount] [nvarchar](10) NOT NULL,
	[duration] [nvarchar](10) NOT NULL,
	[features] [nvarchar](400) NULL,
	[slug] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[subjectCourse]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectCourse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](80) NULL,
	[description] [nvarchar](400) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userTbl]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[loginID] [nvarchar](50) NOT NULL,
	[loginPassword] [nvarchar](50) NOT NULL,
	[imageProfile] [nvarchar](50) NULL,
	[role] [nvarchar](2) NOT NULL,
	[createDate] [nvarchar](50) NOT NULL,
	[twitter] [nvarchar](120) NULL,
	[about] [nvarchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[loginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[visit]    Script Date: 12/1/2018 1:58:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[visit] [nchar](10) NULL,
	[date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [tenhourDB] SET  READ_WRITE 
GO
