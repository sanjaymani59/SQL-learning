create database newstudent;
use newstudent;


create table student(
student_id int ,
name varchar(20),
major varchar(20),
primary key(student_id));

describe student;

drop table student;

alter table student add gpa decimal(3,2);
alter table student drop gpa ;


-- https://youtu.be/HXV3zeQKqGY?si=NZ2PQCAQY_HBobBi 1;31          1