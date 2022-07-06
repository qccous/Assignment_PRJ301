USE [master]
GO
/****** Object:  Database [AttendanceTaking]    Script Date: 7/7/2022 12:18:58 AM ******/
CREATE DATABASE [AttendanceTaking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AttendanceTaking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AttendanceTaking.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AttendanceTaking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AttendanceTaking_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AttendanceTaking] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AttendanceTaking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AttendanceTaking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AttendanceTaking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AttendanceTaking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AttendanceTaking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AttendanceTaking] SET ARITHABORT OFF 
GO
ALTER DATABASE [AttendanceTaking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AttendanceTaking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AttendanceTaking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AttendanceTaking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AttendanceTaking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AttendanceTaking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AttendanceTaking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AttendanceTaking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AttendanceTaking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AttendanceTaking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AttendanceTaking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AttendanceTaking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AttendanceTaking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AttendanceTaking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AttendanceTaking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AttendanceTaking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AttendanceTaking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AttendanceTaking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AttendanceTaking] SET  MULTI_USER 
GO
ALTER DATABASE [AttendanceTaking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AttendanceTaking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AttendanceTaking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AttendanceTaking] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AttendanceTaking] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AttendanceTaking] SET QUERY_STORE = OFF
GO
USE [AttendanceTaking]
GO
/****** Object:  Table [dbo].[checkAttend]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkAttend](
	[checkAttendId] [int] IDENTITY(1,1) NOT NULL,
	[timetableId] [int] NOT NULL,
	[studentId] [nvarchar](10) NOT NULL,
	[checkAttendStatus] [int] NOT NULL,
 CONSTRAINT [PK__checkAtt__FEC1C2E2F06DC946] PRIMARY KEY CLUSTERED 
(
	[checkAttendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[classId] [int] IDENTITY(1,1) NOT NULL,
	[className] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[classId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[week_id] [int] NOT NULL,
	[dateTime] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[slotId] [int] IDENTITY(1,1) NOT NULL,
	[fromTime] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [nvarchar](10) NOT NULL,
	[studentName] [nvarchar](50) NOT NULL,
	[classId] [int] NOT NULL,
	[username] [varchar](16) NULL,
	[password] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subjectId] [nvarchar](50) NOT NULL,
	[subjectName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[subjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[timetableId] [int] IDENTITY(1,1) NOT NULL,
	[subjectId] [nvarchar](50) NOT NULL,
	[classId] [int] NOT NULL,
	[slotId] [int] NOT NULL,
	[timetableDate] [date] NOT NULL,
	[day] [nvarchar](12) NOT NULL,
	[week_id] [int] NOT NULL,
	[timetableStatus] [bit] NOT NULL,
 CONSTRAINT [PK__Timetabl__8AA775B4AD77A374] PRIMARY KEY CLUSTERED 
(
	[timetableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 7/7/2022 12:18:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[week_id] [int] NOT NULL,
	[rangeDate] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED 
(
	[week_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_checkAttend]    Script Date: 7/7/2022 12:18:58 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_checkAttend] ON [dbo].[checkAttend]
(
	[studentId] ASC,
	[timetableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[checkAttend] ADD  CONSTRAINT [DF_checkAttend_checkAttendStatus]  DEFAULT ((2)) FOR [checkAttendStatus]
GO
ALTER TABLE [dbo].[checkAttend]  WITH CHECK ADD  CONSTRAINT [FK__checkAtte__stude__4222D4EF] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[checkAttend] CHECK CONSTRAINT [FK__checkAtte__stude__4222D4EF]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK__Timetable__class__440B1D61] FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([classId])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK__Timetable__class__440B1D61]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK__Timetable__slotI__44FF419A] FOREIGN KEY([slotId])
REFERENCES [dbo].[Slot] ([slotId])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK__Timetable__slotI__44FF419A]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK__Timetable__subje__45F365D3] FOREIGN KEY([subjectId])
REFERENCES [dbo].[Subject] ([subjectId])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK__Timetable__subje__45F365D3]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Week] FOREIGN KEY([week_id])
REFERENCES [dbo].[Week] ([week_id])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Week]
GO
USE [master]
GO
ALTER DATABASE [AttendanceTaking] SET  READ_WRITE 
GO
