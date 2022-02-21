create database quanLySinhVien;
use quanlysinhvien;
create table class(
classid Int not null auto_increment primary key,
classname varchar (20) not null,
startdate datetime not null,
status bit );

create table student (
studentid int not null auto_increment primary key,
studentname varchar(30) not null,
address varchar (50),
phone varchar(20),
Starus bit,
classid int not null,
foreign key (classid) references class (classid)); 

create table Subject(
subid int not null auto_increment primary key,
subname varchar (30) not null,
credit tinyint not null default 1 check ( credit>=1),
status bit default 1 );

    
    CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);