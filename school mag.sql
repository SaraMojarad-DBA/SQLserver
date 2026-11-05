create database SchoolSysDB

Use SchoolSysDB

create  Table class(
 ClassId int primary key identity (1,1) not null,
 ClassName varchar (50)not null
 )
 create Table Subject(
 SubjectID int primary key identity (1,1) not null,
  ClassId int foreign key references class (classID) null,
  SubjectName Varchar(50)null
  )
  
  Create Table Student(
  StudentID int primary key identity (1,1) not null,
  Name varchar(50)null,
  DOB DATE null,
  Gender varchar(50) null,
  Mobile bigint null,
  RollNo varchar(50)null,
  Address varchar (max)null,
  ClassID int foreign key references Class (ClassID)null
  )

  Create  table Teacher(
  TeacherID int primary key identity(1,1)not null,
  Name varchar(50)null,
  DOB DATE null,
  Gender varchar(50) null,
  Mobile bigint null,
  Email varchar(50)null,
  Address varchar (max)null,
  password varchar (20)null
  )

  Create Table TeacherSubject(
  ID int primary key identity (1,1)not null,
  ClassID int foreign key references Class (ClassID) null,
  SubjectId int foreign key references Subject (SubjectID) null,
  TeacherId int foreign key references Teacher (TeacherId) null
  )
  Create Table TeacherAttendance(
  ID int primary key identity(1,1) not null,
  TeacherID int foreign key references Teacher (TeacherID) null,
  Status  bit null,
  Date date null
  )
  Create Table StudentAttendance(
  ID int primary key identity(1,1) not null,
  ClassID int foreign key references Class (ClassID) null,
  SubjectID int foreign key references Subject (SubjectID) null,
  RollNo varchar(20)null,
  Status  bit null,
  Date date null
  )

  Create Table Fees(
  FeesID int primary key identity(1,1)not null,
  ClassID int foreign key references Class (ClassID) null,
  FeesAmount int null
  )
  Create Table Exam(
  ExamID int primary key identity(1,1)not null,
  ClassID int foreign key references Class (ClassID) null,
  SubjectID int foreign key references Subject (SubjectID) null,
  RollNo varchar(20)null,
  TotalMarks int null,
  OutOfMarks int null
  )

  Create Table Expense(
  ExpenseID int primary key identity(1,1)not null,
  ClassID int foreign key references Class (ClassID) null,
  SubjectID int foreign key references Subject (SubjectID) null,
  ChargeAmount int null
  )