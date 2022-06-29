USE [master]
GO

CREATE DATABASE [AttendanceTaking]
 

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[checkAttend](
	[checkAttendId] [int] NOT NULL,
	[timetableId] [int] NULL,
	[studentId] [nvarchar](10) NULL,
	[checkAttendStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 

(
	[checkAttendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

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
/****** Object:  Table [dbo].[Date]    Script Date: 6/29/2022 8:49:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[day] [nchar](10) NOT NULL,
	[timetableDate] [date] NOT NULL,
	[week_id] [int] NOT NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[timetableDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/29/2022 8:49:48 AM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 6/29/2022 8:49:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [nvarchar](10) NOT NULL,
	[studentName] [nvarchar](50) NOT NULL,
	[classId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/29/2022 8:49:48 AM ******/
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
/****** Object:  Table [dbo].[Timetable]    Script Date: 6/29/2022 8:49:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[timetableId] [int] IDENTITY(1,1) NOT NULL,
	[subjectId] [nvarchar](50) NULL,
	[classId] [int] NULL,
	[slotId] [int] NULL,
	[timetableDate] [date] NOT NULL,
	[timetableStatus] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[timetableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 6/29/2022 8:49:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[week_id] [int] IDENTITY(1,1) NOT NULL,
	[rangeDate] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED 
(
	[week_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (1, 3, N'100183', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (2, 3, N'100196', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (3, 3, N'100197', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (4, 3, N'100223', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (5, 3, N'100237', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (6, 3, N'100249', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (7, 3, N'100268', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (8, 3, N'100296', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (9, 3, N'100302', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (10, 3, N'100308', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (11, 4, N'100007', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (12, 4, N'100035', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (13, 4, N'100052', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (14, 4, N'100073', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (15, 4, N'100081', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (16, 4, N'100092', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (17, 4, N'100119', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (18, 4, N'100125', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (19, 4, N'100152', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (20, 4, N'100162', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (21, 6, N'100329', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (22, 6, N'100338', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (23, 6, N'100353', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (24, 6, N'100371', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (25, 6, N'100388', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (26, 6, N'100399', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (27, 6, N'100411', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (28, 6, N'100414', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (29, 6, N'100428', 0)
INSERT [dbo].[checkAttend] ([checkAttendId], [timetableId], [studentId], [checkAttendStatus]) VALUES (30, 6, N'100455', 0)
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([classId], [className]) VALUES (1, N'SE1610')
INSERT [dbo].[Class] ([classId], [className]) VALUES (2, N'SE1620')
INSERT [dbo].[Class] ([classId], [className]) VALUES (3, N'SE1630')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Mon       ', CAST(N'2022-06-20' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Tue       ', CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Wed       ', CAST(N'2022-06-22' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Thu       ', CAST(N'2022-06-23' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Fri       ', CAST(N'2022-06-24' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Sat       ', CAST(N'2022-06-25' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Sun       ', CAST(N'2022-06-26' AS Date), 1)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Mon       ', CAST(N'2022-06-27' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Tue       ', CAST(N'2022-06-28' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Wed       ', CAST(N'2022-06-29' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Thu       ', CAST(N'2022-06-30' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Fri       ', CAST(N'2022-07-01' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Sat       ', CAST(N'2022-07-02' AS Date), 2)
INSERT [dbo].[Date] ([day], [timetableDate], [week_id]) VALUES (N'Sun       ', CAST(N'2022-07-03' AS Date), 2)
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
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100007', N'Trương Duy Anh', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100035', N'Hồ Thanh Bình', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100052', N'Ngô Mạnh Cường', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100073', N'Nguyễn Thị Kỳ Duyên', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100081', N'Đỗ Thuỳ Dương', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100092', N'	Nguyễn Quốc Đạt', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100119', N'Nguyễn Thu Hà', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100125', N'Khưu Quốc Anh Hào', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100152', N'Nguyễn Thị Kim Hoàng', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100162', N'Phan Quốc Huy', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100183', N'Nguyễn Quốc Khang', 1)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100196', N'Đậu Đức Khuyên', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100197', N'Vũ Hoàng Kiên', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100223', N'Nguyễn Thị Phương Linh', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100237', N'Nguyễn Tấn Lộc', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100249', N'Phan Quang Minh', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100268', N'Đặng Hoàng Nam', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100296', N'Bùi Thị Ngọc', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100302', N'Nguyễn Thị Thảo Nguyên', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100308', N'Trần Thị Bích Nhi', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100329', N'Nguyễn Huỳnh Như', 2)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100338', N'Ngô Thị Thiên Như', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100353', N'Nguyễn Hoàng Phi', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100371', N'Huỳnh Ngọc Vũ Phương', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100388', N'Phùng Thái Sang', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100399', N'Đặng Anh Tài', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100411', N'Nguyễn Quốc Thái', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100414', N'Bùi Văn Thái', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100428', N'Nguyễn Thị Thu Thảo', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100455', N'Lê Anh Thư', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100469', N'Vương Minh Thư', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100476', N'Bùi Thị Mộng Thường', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100482', N'Phạm Hữu Toàn', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100485', N'Nguyễn Vũ Huyền Trang', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100507', N'Huỳnh Ngọc Mai Trinh', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100528', N'Nguyễn Văn Thành Trung', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100532', N'Nguyễn Lê Minh Tú', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100545', N'Nguyễn Thị Ngọc Vàng', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100570', N'Nguyễn Trương Tường Vy', 3)
INSERT [dbo].[Student] ([studentId], [studentName], [classId]) VALUES (N'100572', N'Lê Thạch Yến Vy', 3)
GO
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'MAE', N'MAE')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'MAS', N'MAS')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'PRN211', N'Basic Cross-Platform Application Programming With .NET')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'SWR302', N'Software Requirement')
INSERT [dbo].[Subject] ([subjectId], [subjectName]) VALUES (N'SWT301', N'Software Testing')
GO
SET IDENTITY_INSERT [dbo].[Timetable] ON 

INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (3, N'PRJ301', 2, 3, CAST(N'2022-06-21' AS Date), 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (4, N'PRN211', 1, 1, CAST(N'2022-06-20' AS Date), 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (6, N'SWR302', 3, 2, CAST(N'2022-06-22' AS Date), 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (8, N'MAE', 2, 4, CAST(N'2022-06-23' AS Date), 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (9, N'MAS', 2, 5, CAST(N'2022-06-23' AS Date), 0)
INSERT [dbo].[Timetable] ([timetableId], [subjectId], [classId], [slotId], [timetableDate], [timetableStatus]) VALUES (10, N'PRN211', 2, 6, CAST(N'2022-06-23' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Timetable] OFF
GO
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([week_id], [rangeDate]) VALUES (1, N'20-06-2022  to 26-06-2022')
SET IDENTITY_INSERT [dbo].[Week] OFF
GO
ALTER TABLE [dbo].[Date] ADD  CONSTRAINT [DF_Date_week_id]  DEFAULT ((1)) FOR [week_id]
GO
ALTER TABLE [dbo].[checkAttend]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[checkAttend]  WITH CHECK ADD FOREIGN KEY([timetableId])
REFERENCES [dbo].[Timetable] ([timetableId])
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[Class] ([classId])
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD FOREIGN KEY([slotId])
REFERENCES [dbo].[Slot] ([slotId])
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD FOREIGN KEY([subjectId])
REFERENCES [dbo].[Subject] ([subjectId])
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Date] FOREIGN KEY([timetableDate])
REFERENCES [dbo].[Date] ([timetableDate])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Date]
GO
USE [master]
GO
ALTER DATABASE [AttendanceTaking] SET  READ_WRITE 
GO
