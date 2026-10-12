create database newstudent;
use newstudent;


create table student(
student_id int  auto_increment ,
name varchar(20)  not null ,
major varchar(20) default 'undecieded' ,
primary key(student_id));
select*from student; 
describe student;

drop table student;

alter table student add gpa decimal(3,2);
alter table student drop gpa ;


insert into student values(1,'jack','Biology');
insert into student values(2,'kate','Scoiology');
insert into student values(4,'jack','Biology');
insert into student values(5,'Mike','Computer Science');

insert into student(student_id,name,major) values('jakkey','Chemistry');


-- https://youtu.be/HXV3zeQKqGY?si=NZ2PQCAQY_HBobBi 1;49"          1