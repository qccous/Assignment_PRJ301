CREATE DATABASE AttendanceTaking;

USE AttendanceTaking;

CREATE TABLE Class
(
    class_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    class_name NVARCHAR(255)
);
CREATE TABLE [Subject]
(
    subject_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    subject_name NVARCHAR(255),
    total_slot INT,
);
CREATE TABLE Student
(
    student_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    student_code NVARCHAR(255),
    student_name NVARCHAR(255),
    class_code INT
        FOREIGN KEY REFERENCES Class (class_id),
    student_address NVARCHAR(255),
    student_username NVARCHAR(255),
    student_password NVARCHAR(255)
);
CREATE TABLE Teacher
(
    teacher_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    teacher_name NVARCHAR(255),
    teacher_code NVARCHAR(255),
    teacher_username NVARCHAR(255),
    teacher_password NVARCHAR(255)
);
CREATE TABLE ClassRoom
(
    class_id INT PRIMARY KEY
        FOREIGN KEY REFERENCES Class (class_id),
    student_id INT
        FOREIGN KEY REFERENCES Student (student_id)
);
CREATE TABLE Timetable
(
    Timetable_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    teacher_id INT
        FOREIGN KEY REFERENCES Teacher (teacher_id),
    subject_id INT
        FOREIGN KEY REFERENCES [Subject] (subject_id),
    class_id INT
        FOREIGN KEY REFERENCES ClassRoom (class_id)
);
CREATE TABLE Slot
(
    slot_id INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    slot_name NVARCHAR(255)
);
CREATE TABLE Attended
(
    Timetable_id INT
        FOREIGN KEY REFERENCES Timetable (Timetable_id),
    [Date_Attend] DATE,
    slot_id INT
        FOREIGN KEY REFERENCES Slot (slot_id),
    [status] BIT,
    comment NVARCHAR(255)
);