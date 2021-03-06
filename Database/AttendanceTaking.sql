USE [master]
GO
/****** Object:  Database [AttendanceTaking]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[checkAttend]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Class]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Date]    Script Date: 7/7/2022 12:25:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[week_id] [int] NOT NULL,
	[dateTime] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Timetable]    Script Date: 7/7/2022 12:25:07 AM ******/
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
/****** Object:  Table [dbo].[Week]    Script Date: 7/7/2022 12:25:07 AM ******/
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
SET IDENTITY_INSERT [dbo].[checkAttend] ON 

INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (1, 13, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (2, 14, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (3, 15, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (4, 40, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (5, 41, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (6, 42, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (7, 67, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (8, 68, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (9, 69, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (10, 94, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (11, 95, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (12, 96, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (13, 121, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (14, 122, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (15, 123, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (16, 148, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (17, 149, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (18, 150, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (19, 16, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (20, 17, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (21, 18, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (22, 43, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (23, 44, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (24, 45, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (25, 70, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (26, 71, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (27, 72, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (28, 97, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (29, 98, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (30, 99, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (31, 124, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (32, 125, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (33, 126, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (34, 151, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (35, 152, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (36, 153, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (37, 19, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (38, 20, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (39, 21, N'100223', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (40, 46, N'100223', 1)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (41, 47, N'100223', 1)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (42, 48, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (43, 73, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (44, 74, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (45, 75, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (46, 100, N'100223', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (47, 101, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (48, 102, N'100223', 1)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (49, 127, N'100223', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (50, 128, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (51, 129, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (52, 154, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (53, 155, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (54, 156, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (55, 1, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (56, 2, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (57, 3, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (58, 28, N'100223', 1)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (59, 29, N'100223', 1)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (60, 30, N'100223', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (61, 55, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (62, 56, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (63, 57, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (64, 82, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (65, 83, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (66, 84, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (67, 109, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (68, 110, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (69, 111, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (70, 136, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (71, 137, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (72, 138, N'100223', 2)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (73, 1, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (74, 2, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (75, 3, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (76, 28, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (77, 29, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (78, 30, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (79, 55, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (80, 56, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (81, 57, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (82, 82, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (83, 83, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (84, 84, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (85, 109, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (86, 110, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (87, 111, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (88, 136, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (89, 137, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (90, 138, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (91, 1, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (92, 2, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (93, 3, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (94, 28, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (95, 29, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (96, 30, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (97, 55, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (98, 56, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (99, 57, N'100035', 0)
GO
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (100, 82, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (101, 83, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (102, 84, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (103, 109, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (104, 110, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (105, 111, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (106, 136, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (107, 137, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (108, 138, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (109, 1, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (110, 2, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (111, 3, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (112, 28, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (113, 29, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (114, 30, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (115, 55, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (116, 56, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (117, 57, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (118, 82, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (119, 83, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (120, 84, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (121, 109, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (122, 110, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (123, 111, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (124, 136, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (125, 137, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (126, 138, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (127, 1, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (128, 2, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (129, 3, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (130, 28, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (131, 29, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (132, 30, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (133, 55, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (134, 56, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (135, 57, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (136, 82, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (137, 83, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (138, 84, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (139, 109, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (140, 110, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (141, 111, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (142, 136, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (143, 137, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (144, 138, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (145, 1, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (146, 2, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (147, 3, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (148, 28, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (149, 29, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (150, 30, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (151, 55, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (152, 56, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (153, 57, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (154, 82, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (155, 83, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (156, 84, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (157, 109, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (158, 110, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (159, 111, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (160, 136, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (161, 137, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (162, 138, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (163, 1, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (164, 2, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (165, 3, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (166, 28, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (167, 29, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (168, 30, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (169, 55, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (170, 56, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (171, 57, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (172, 82, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (173, 83, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (174, 84, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (175, 109, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (176, 110, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (177, 111, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (178, 136, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (179, 137, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (180, 138, N'100092', 0)
SET IDENTITY_INSERT [dbo].[checkAttend] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([classId], [className]) VALUES (1, N'SE1610')
INSERT [dbo].[Class] ([classId], [className]) VALUES (2, N'SE1620')
INSERT [dbo].[Class] ([classId], [className]) VALUES (3, N'SE1630')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-06-26')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-06-27')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-06-28')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-06-29')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-06-30')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-07-01')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (27, N'2022-07-02')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-03')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-04')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-05')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-06')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-07')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-08')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (28, N'2022-07-09')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-10')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-11')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-12')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-13')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-14')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-15')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (29, N'2022-07-16')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-17')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-18')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-19')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-20')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-21')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-22')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (30, N'2022-07-23')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-24')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-25')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-26')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-27')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-28')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-29')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (31, N'2022-07-30')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-07-31')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-01')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-02')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-03')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-04')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-05')
INSERT [dbo].[Date] ([week_id], [dateTime]) VALUES (32, N'2022-08-06')
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (1, N'7:30 - 9:00')
INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (2, N'9:10 - 10:40')
INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (3, N'10:50 - 12:20')
INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (4, N'12:50 - 14:20')
INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (5, N'14:30 - 16:00')
INSERT [dbo].[Slot] ([slotId], [fromTime]) VALUES (6, N'16:10-17:40')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100007', N'Trương Duy Anh', 1, N'chanmei', N'123456')
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100035', N'Hồ Thanh Bình', 1, N'huuquyet1', N'123456')
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100052', N'Ngô Mạnh Cường', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100073', N'Nguyễn Thị Kỳ Duyên', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100081', N'Đỗ Thuỳ Dương', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100092', N'	Nguyễn Quốc Đạt', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100119', N'Nguyễn Thu Hà', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100125', N'Khưu Quốc Anh Hào', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100152', N'Nguyễn Thị Kim Hoàng', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100162', N'Phan Quốc Huy', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100183', N'Nguyễn Quốc Khang', 1, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100196', N'Đậu Đức Khuyên', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100197', N'Vũ Hoàng Kiên', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100223', N'Nguyễn Hữu Quyết', 2, N'huuquyet', N'123456')
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100237', N'Nguyễn Tấn Lộc', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100249', N'Phan Quang Minh', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100268', N'Đặng Hoàng Nam', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100296', N'Bùi Thị Ngọc', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100302', N'Nguyễn Thị Thảo Nguyên', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100308', N'Trần Thị Bích Nhi', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100329', N'Nguyễn Huỳnh Như', 2, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100338', N'Ngô Thị Thiên Như', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100353', N'Nguyễn Hoàng Phi', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100371', N'Huỳnh Ngọc Vũ Phương', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100388', N'Phùng Thái Sang', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100399', N'Đặng Anh Tài', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100411', N'Nguyễn Quốc Thái', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100414', N'Bùi Văn Thái', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100428', N'Nguyễn Thị Thu Thảo', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100455', N'Lê Anh Thư', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100469', N'Vương Minh Thư', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100476', N'Bùi Thị Mộng Thường', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100482', N'Phạm Hữu Toàn', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100485', N'Nguyễn Vũ Huyền Trang', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100507', N'Huỳnh Ngọc Mai Trinh', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100528', N'Nguyễn Văn Thành Trung', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100532', N'Nguyễn Lê Minh Tú', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100545', N'Nguyễn Thị Ngọc Vàng', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100570', N'Nguyễn Trương Tường Vy', 3, NULL, NULL)
INSERT [dbo].[Student] ([studentId], [studentName], [classId], [username], [password]) VALUES (N'100572', N'Lê Thạch Yến Vy', 3, NULL, NULL)
GO
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'MAE', N'MAE')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'MAS', N'MAS')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'PRN211', N'Basic Cross-Platform Application Programming With .NET')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'SWP391', N'Software Working Project')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'SWR302', N'Software Requirement')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'SWT301', N'Software Testing')
GO
SET IDENTITY_INSERT [dbo].[Timetable] ON 

INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (1, N'PRJ301', 2, 3, CAST(N'2022-06-27' AS Date), N'Monday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (2, N'PRJ301', 2, 3, CAST(N'2022-06-29' AS Date), N'Wednesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (3, N'PRJ301', 2, 3, CAST(N'2022-07-01' AS Date), N'Friday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (4, N'PRJ301', 3, 3, CAST(N'2022-06-27' AS Date), N'Monday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (5, N'PRJ301', 3, 3, CAST(N'2022-06-29' AS Date), N'Wednesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (6, N'PRJ301', 3, 3, CAST(N'2022-07-01' AS Date), N'Friday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (7, N'MAE', 2, 3, CAST(N'2022-06-27' AS Date), N'Monday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (8, N'MAE', 2, 3, CAST(N'2022-06-29' AS Date), N'Wednesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (9, N'MAE', 2, 3, CAST(N'2022-07-01' AS Date), N'Friday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (10, N'MAS', 2, 3, CAST(N'2022-06-27' AS Date), N'Monday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (11, N'MAS', 2, 3, CAST(N'2022-06-29' AS Date), N'Wednesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (12, N'MAS', 2, 3, CAST(N'2022-07-01' AS Date), N'Friday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (13, N'SWP391', 2, 1, CAST(N'2022-06-27' AS Date), N'Monday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (14, N'SWP391', 2, 1, CAST(N'2022-06-29' AS Date), N'Wednesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (15, N'SWP391', 2, 1, CAST(N'2022-07-01' AS Date), N'Friday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (16, N'PRN211', 2, 1, CAST(N'2022-06-28' AS Date), N'Tuesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (17, N'PRN211', 2, 2, CAST(N'2022-06-28' AS Date), N'Tuesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (18, N'PRN211', 2, 3, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (19, N'SWR302', 2, 3, CAST(N'2022-06-28' AS Date), N'Tuesday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (20, N'SWR302', 2, 1, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (21, N'SWR302', 2, 2, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (22, N'SWR302', 1, 3, CAST(N'2022-06-28' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (23, N'SWR302', 1, 1, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (24, N'SWR302', 1, 2, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (25, N'SWT301', 3, 3, CAST(N'2022-06-28' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (26, N'SWT301', 3, 1, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (27, N'SWT301', 3, 2, CAST(N'2022-06-30' AS Date), N'Thursday', 27, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (28, N'PRJ301', 2, 3, CAST(N'2022-07-04' AS Date), N'Monday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (29, N'PRJ301', 2, 3, CAST(N'2022-07-06' AS Date), N'Wednesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (30, N'PRJ301', 2, 3, CAST(N'2022-07-08' AS Date), N'Friday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (31, N'PRJ301', 3, 3, CAST(N'2022-07-04' AS Date), N'Monday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (32, N'PRJ301', 3, 3, CAST(N'2022-07-06' AS Date), N'Wednesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (33, N'PRJ301', 3, 3, CAST(N'2022-07-08' AS Date), N'Friday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (34, N'MAE', 2, 3, CAST(N'2022-07-04' AS Date), N'Monday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (35, N'MAE', 2, 3, CAST(N'2022-07-06' AS Date), N'Wednesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (36, N'MAE', 2, 3, CAST(N'2022-07-08' AS Date), N'Friday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (37, N'MAS', 2, 3, CAST(N'2022-07-04' AS Date), N'Monday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (38, N'MAS', 2, 3, CAST(N'2022-07-06' AS Date), N'Wednesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (39, N'MAS', 2, 3, CAST(N'2022-07-08' AS Date), N'Friday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (40, N'SWP391', 2, 1, CAST(N'2022-07-04' AS Date), N'Monday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (41, N'SWP391', 2, 1, CAST(N'2022-07-06' AS Date), N'Wednesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (42, N'SWP391', 2, 1, CAST(N'2022-07-08' AS Date), N'Friday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (43, N'PRN211', 2, 1, CAST(N'2022-07-05' AS Date), N'Tuesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (44, N'PRN211', 2, 2, CAST(N'2022-07-05' AS Date), N'Tuesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (45, N'PRN211', 2, 3, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (46, N'SWR302', 2, 3, CAST(N'2022-07-05' AS Date), N'Tuesday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (47, N'SWR302', 2, 1, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (48, N'SWR302', 2, 2, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (49, N'SWR302', 1, 3, CAST(N'2022-07-05' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (50, N'SWR302', 1, 1, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (51, N'SWR302', 1, 2, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (52, N'SWT301', 3, 3, CAST(N'2022-07-05' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (53, N'SWT301', 3, 1, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (54, N'SWT301', 3, 2, CAST(N'2022-07-07' AS Date), N'Thursday', 28, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (55, N'PRJ301', 2, 3, CAST(N'2022-07-11' AS Date), N'Monday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (56, N'PRJ301', 2, 3, CAST(N'2022-07-13' AS Date), N'Wednesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (57, N'PRJ301', 2, 3, CAST(N'2022-07-15' AS Date), N'Friday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (58, N'PRJ301', 3, 3, CAST(N'2022-07-11' AS Date), N'Monday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (59, N'PRJ301', 3, 3, CAST(N'2022-07-13' AS Date), N'Wednesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (60, N'PRJ301', 3, 3, CAST(N'2022-07-15' AS Date), N'Friday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (61, N'MAE', 2, 3, CAST(N'2022-07-11' AS Date), N'Monday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (62, N'MAE', 2, 3, CAST(N'2022-07-13' AS Date), N'Wednesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (63, N'MAE', 2, 3, CAST(N'2022-07-15' AS Date), N'Friday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (64, N'MAS', 2, 3, CAST(N'2022-07-11' AS Date), N'Monday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (65, N'MAS', 2, 3, CAST(N'2022-07-13' AS Date), N'Wednesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (66, N'MAS', 2, 3, CAST(N'2022-07-15' AS Date), N'Friday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (67, N'SWP391', 2, 1, CAST(N'2022-07-11' AS Date), N'Monday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (68, N'SWP391', 2, 1, CAST(N'2022-07-13' AS Date), N'Wednesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (69, N'SWP391', 2, 1, CAST(N'2022-07-15' AS Date), N'Friday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (70, N'PRN211', 2, 1, CAST(N'2022-07-12' AS Date), N'Tuesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (71, N'PRN211', 2, 2, CAST(N'2022-07-12' AS Date), N'Tuesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (72, N'PRN211', 2, 3, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (73, N'SWR302', 2, 3, CAST(N'2022-07-12' AS Date), N'Tuesday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (74, N'SWR302', 2, 1, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (75, N'SWR302', 2, 2, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (76, N'SWR302', 1, 3, CAST(N'2022-07-12' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (77, N'SWR302', 1, 1, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (78, N'SWR302', 1, 2, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (79, N'SWT301', 3, 3, CAST(N'2022-07-12' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (80, N'SWT301', 3, 1, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (81, N'SWT301', 3, 2, CAST(N'2022-07-14' AS Date), N'Thursday', 29, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (82, N'PRJ301', 2, 3, CAST(N'2022-07-18' AS Date), N'Monday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (83, N'PRJ301', 2, 3, CAST(N'2022-07-20' AS Date), N'Wednesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (84, N'PRJ301', 2, 3, CAST(N'2022-07-22' AS Date), N'Friday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (85, N'PRJ301', 3, 3, CAST(N'2022-07-18' AS Date), N'Monday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (86, N'PRJ301', 3, 3, CAST(N'2022-07-20' AS Date), N'Wednesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (87, N'PRJ301', 3, 3, CAST(N'2022-07-22' AS Date), N'Friday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (88, N'MAE', 2, 3, CAST(N'2022-07-18' AS Date), N'Monday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (89, N'MAE', 2, 3, CAST(N'2022-07-20' AS Date), N'Wednesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (90, N'MAE', 2, 3, CAST(N'2022-07-22' AS Date), N'Friday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (91, N'MAS', 2, 3, CAST(N'2022-07-18' AS Date), N'Monday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (92, N'MAS', 2, 3, CAST(N'2022-07-20' AS Date), N'Wednesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (93, N'MAS', 2, 3, CAST(N'2022-07-22' AS Date), N'Friday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (94, N'SWP391', 2, 1, CAST(N'2022-07-18' AS Date), N'Monday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (95, N'SWP391', 2, 1, CAST(N'2022-07-20' AS Date), N'Wednesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (96, N'SWP391', 2, 1, CAST(N'2022-07-22' AS Date), N'Friday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (97, N'PRN211', 2, 1, CAST(N'2022-07-19' AS Date), N'Tuesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (98, N'PRN211', 2, 2, CAST(N'2022-07-19' AS Date), N'Tuesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (99, N'PRN211', 2, 3, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
GO
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (100, N'SWR302', 2, 3, CAST(N'2022-07-19' AS Date), N'Tuesday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (101, N'SWR302', 2, 1, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (102, N'SWR302', 2, 2, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (103, N'SWR302', 1, 3, CAST(N'2022-07-19' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (104, N'SWR302', 1, 1, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (105, N'SWR302', 1, 2, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (106, N'SWT301', 3, 3, CAST(N'2022-07-19' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (107, N'SWT301', 3, 1, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (108, N'SWT301', 3, 2, CAST(N'2022-07-21' AS Date), N'Thursday', 30, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (109, N'PRJ301', 2, 3, CAST(N'2022-07-25' AS Date), N'Monday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (110, N'PRJ301', 2, 3, CAST(N'2022-07-27' AS Date), N'Wednesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (111, N'PRJ301', 2, 3, CAST(N'2022-07-29' AS Date), N'Friday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (112, N'PRJ301', 3, 3, CAST(N'2022-07-25' AS Date), N'Monday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (113, N'PRJ301', 3, 3, CAST(N'2022-07-27' AS Date), N'Wednesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (114, N'PRJ301', 3, 3, CAST(N'2022-07-29' AS Date), N'Friday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (115, N'MAE', 2, 3, CAST(N'2022-07-25' AS Date), N'Monday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (116, N'MAE', 2, 3, CAST(N'2022-07-27' AS Date), N'Wednesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (117, N'MAE', 2, 3, CAST(N'2022-07-29' AS Date), N'Friday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (118, N'MAS', 2, 3, CAST(N'2022-07-25' AS Date), N'Monday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (119, N'MAS', 2, 3, CAST(N'2022-07-27' AS Date), N'Wednesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (120, N'MAS', 2, 3, CAST(N'2022-07-29' AS Date), N'Friday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (121, N'SWP391', 2, 1, CAST(N'2022-07-25' AS Date), N'Monday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (122, N'SWP391', 2, 1, CAST(N'2022-07-27' AS Date), N'Wednesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (123, N'SWP391', 2, 1, CAST(N'2022-07-29' AS Date), N'Friday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (124, N'PRN211', 2, 1, CAST(N'2022-07-26' AS Date), N'Tuesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (125, N'PRN211', 2, 2, CAST(N'2022-07-26' AS Date), N'Tuesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (126, N'PRN211', 2, 3, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (127, N'SWR302', 2, 3, CAST(N'2022-07-26' AS Date), N'Tuesday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (128, N'SWR302', 2, 1, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (129, N'SWR302', 2, 2, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (130, N'SWR302', 1, 3, CAST(N'2022-07-26' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (131, N'SWR302', 1, 1, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (132, N'SWR302', 1, 2, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (133, N'SWT301', 3, 3, CAST(N'2022-07-26' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (134, N'SWT301', 3, 1, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (135, N'SWT301', 3, 2, CAST(N'2022-07-28' AS Date), N'Thursday', 31, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (136, N'PRJ301', 2, 3, CAST(N'2022-08-01' AS Date), N'Monday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (137, N'PRJ301', 2, 3, CAST(N'2022-08-03' AS Date), N'Wednesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (138, N'PRJ301', 2, 3, CAST(N'2022-08-05' AS Date), N'Friday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (139, N'PRJ301', 3, 3, CAST(N'2022-08-01' AS Date), N'Monday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (140, N'PRJ301', 3, 3, CAST(N'2022-08-03' AS Date), N'Wednesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (141, N'PRJ301', 3, 3, CAST(N'2022-08-05' AS Date), N'Friday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (142, N'MAE', 2, 3, CAST(N'2022-08-01' AS Date), N'Monday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (143, N'MAE', 2, 3, CAST(N'2022-08-03' AS Date), N'Wednesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (144, N'MAE', 2, 3, CAST(N'2022-08-05' AS Date), N'Friday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (145, N'MAS', 2, 3, CAST(N'2022-08-01' AS Date), N'Monday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (146, N'MAS', 2, 3, CAST(N'2022-08-03' AS Date), N'Wednesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (147, N'MAS', 2, 3, CAST(N'2022-08-05' AS Date), N'Friday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (148, N'SWP391', 2, 1, CAST(N'2022-08-01' AS Date), N'Monday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (149, N'SWP391', 2, 1, CAST(N'2022-08-03' AS Date), N'Wednesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (150, N'SWP391', 2, 1, CAST(N'2022-08-05' AS Date), N'Friday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (151, N'PRN211', 2, 1, CAST(N'2022-08-02' AS Date), N'Tuesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (152, N'PRN211', 2, 2, CAST(N'2022-08-02' AS Date), N'Tuesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (153, N'PRN211', 2, 3, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (154, N'SWR302', 2, 3, CAST(N'2022-08-02' AS Date), N'Tuesday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (155, N'SWR302', 2, 1, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (156, N'SWR302', 2, 2, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (157, N'SWR302', 1, 3, CAST(N'2022-08-02' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (158, N'SWR302', 1, 1, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (159, N'SWR302', 1, 2, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (160, N'SWT301', 3, 3, CAST(N'2022-08-02' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (161, N'SWT301', 3, 1, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [day], [week_id], [timetableStatus]) VALUES (162, N'SWT301', 3, 2, CAST(N'2022-08-04' AS Date), N'Thursday', 32, 0)
SET IDENTITY_INSERT [dbo].[Timetable] OFF
GO
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (27, N'27/06 to 04/07')
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (28, N'04/07 to 11/07')
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (29, N'11/07 to 18/07')
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (30, N'18/07 to 25/07')
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (31, N'25/07 to 01/08')
INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (32, N'01/08 to 08/08')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_checkAttend]    Script Date: 7/7/2022 12:25:08 AM ******/
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
