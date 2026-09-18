Use college_db;

select*from stuffs;
select*from student;

select name, student.departament, marks  from 
student inner join  stuffs on student.student_id =stuffs.stuffs_id;

select name, student.departament, marks  from 
student left join  stuffs on student.student_id =stuffs.stuffs_id;

select name, student.departament, marks  from 
student right join  stuffs on student.student_id =stuffs.stuffs_id;

drop table users;
create table users(
	ID int not null auto_increment,
    NAME varchar(50) not null ,
    age int not   null,
    primary key(ID)
);
alter table users add Gender varchar(59) not null after age;
alter table users add city varchar(34) not null, add contant varchar(50);
alter table users modify city varchar(50) not null ;
alter table users rename to sam ;
insert into  sam values(null,'am',34,'male','chennai','4567');

insert into sam  ( name,age,gender,city,contant) values ('jayam',45,'female','ooty','4567');

select*from sam;
describe users;
show tables;
delete from sam where id= 1;

update sam set 




-- https://youtu.be/cpbd7CLAqtw?si=yWZhdwfrFdUMW0O_
-- 21;49






