create database student_database;
use student_database;

create table students(
student_id int primary key,
student_name varchar(50),
student_department varchar(30),
student_year int,
student_mark int );

insert into students values
(1,'ragul','cse',3,78),
(2,'naveen','ece',3,89),
(3,'kavi','cse',3,80),
(4,'raja','tt',3,90),
(5,'deva','tt',3,70),
(6,'logesh','tt',3,70),
(7,'monish','cse',3,85);

drop table students;
select *from students;