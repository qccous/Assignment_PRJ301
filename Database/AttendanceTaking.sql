CREATE database AttendanceTakingFPT

use AttendanceTakingFPT

create table Class(
	class_id int identity(1,1) primary key not null,
	class_name nvarchar(255)
)
create table [Subject](
	subject_id int identity(1,1) primary key not null,
	subject_name nvarchar(255),
	total_slot int, 
)
create table Student(
	student_id int identity(1,1) primary key not null,
	student_code nvarchar(255),
	student_name nvarchar(255),
	class_code int foreign key references Class(class_id),
	student_image nvarchar(255)
)
create table Teacher(
	teacher_id int identity(1,1) primary key not null,
	teacher_name nvarchar(255),
	teacher_code nvarchar(255)
)
create table ClassRoom(
	class_id int primary key foreign key references Class(class_id),
	student_id int foreign key references Student(student_id)
)
create table Schedule(
	Schedule_id int identity(1,1) primary key not null,
	teacher_id int foreign key references Teacher(teacher_id),
	subject_id int foreign key references [Subject](subject_id),
	class_id int foreign key references ClassRoom(class_id)
)
create table Slot(
	slot_id int identity(1,1) primary key not null,
	slot_name nvarchar(255)
)
create table Attended(
	Schedule_id  int foreign key references Schedule(Schedule_id),
	[Date_Attend] Date,
	slot_id int foreign key references Slot(slot_id),
	[status] bit,
	comment nvarchar(255)
)