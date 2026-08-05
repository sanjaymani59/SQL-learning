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

update students set student_name ='ramana' where student_id=4;

alter table students add student_email varchar(30);

update students set student_email='ragul@mail.com' where student_id=1;
update students set student_email='naveen@gmail.com' where student_id=2;
update students set student_email='kavi@gmail.com' where student_id=3;
update students set student_email='raja@gmail.com' where student_id=4;
update students set student_email='deva@gmail.com' where student_id=5;
update students set student_email='logesh@gmail.com' where student_id=6;
update students set student_email='monish@gmail.com' where student_id=7;

select*from students where student_name like'r%';
select *from students where student_name like '%a';

select max(student_mark) as high_marks from students;

select avg(student_mark) as high_mark from students;





drop table students;
select *from students;