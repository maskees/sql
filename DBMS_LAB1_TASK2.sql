CREATE DATABASE if not exists University;
show databases;
use University;
create table Students(
StudentID int,
Name Varchar(50),
Age int,
Department Varchar(30),
GPA FLOAT);
SELECT * FROM Students;
alter table Students add constraint primary key(StudentID);
insert into Students (StudentID,Name,Age,Department,GPA)
values
(1001,"Sahil",21,"AI",3.5),
(1002,"Aaryan",22,"DS",3.4),
(1003,"Ritesh",20,"CMPN",3.6);
DESC Students;
alter table Students modify Student