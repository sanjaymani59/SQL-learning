create database student_database;
use student_database;

create table students(
student_id int primary key,
student_name varchar(50),
student_department varchar(30),
student_year int,
student_mark int,
Da_te date,
dAt datetime,
neram time);

insert into students values
(1,'ragul','cse',3,78,current_date(),now(),current_date()),
(2,'naveen','ece',3,89,current_date(),now(),current_date()),
(3,'kavi','cse',3,80,current_date(),now(),current_date()),
(4,'raja','tt',3,90,current_date(),now(),current_date()),
(5,'deva','tt',3,70,current_date(),now(),current_date()),
(6,'logesh','tt',3,70,current_date(),now(),current_date()),
(7,'monish','cse',3,85,current_date(),now(),current_date());

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

select count(*) as total_student from students;

select*from students order by student_name asc;
select *from students order by student_name desc;

select *from students where student_mark between 50 and 70;

select*from students where student_year=3;

select*from students where student_email='logesh@gmail.com';


select length(student_name) as lengthh  ,upper(student_name) from students;
select length(student_name) as lengthh  ,lower(student_name) from students;




drop table students;
select *from students;