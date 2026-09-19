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
insert into sam  ( name,age,gender,city,contant) values ('kavi',34,'male','kulla','9845498');
insert into sam  ( name,age,gender,city,contant) values ('raj',99,'male','krish','4546952');
insert into sam  ( name,age,gender,city,contant) values ('samji',39,'female','sivi','123849');
insert into sam  ( name,age,gender,city,contant) values ('dd',98,'female','erode','456982');
insert into sam  ( name,age,gender,city,contant) values ('sd',32,'female','salem','55662222225');
delete from sam where id =4;

select*from sam;
describe users;
show tables;
delete from sam where id= 1;

update sam set city='houser', contant='89747859' where id= 5;

truncate table sam ;
select name,age,city from sam where city ='ooty';
select name,age,city from sam where city ='kulla' and  age>=34 ;
select name,age,city from sam where city ='kulla' or city='ooty' and age>=25 order by city;





-- https://youtu.be/cpbd7CLAqtw?si=yWZhdwfrFdUMW0O_
-- 21;49






