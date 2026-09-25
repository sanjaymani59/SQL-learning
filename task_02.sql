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
drop table sam;
create table sam(
	ID int not null auto_increment,
    NAME varchar(50) not null ,
    age int not   null,
    primary key(ID),
    marks int(40) not null,
    persentage int(40) not null,
    city varchar(34) not null,
	rating varchar(40)not null,
    contant varchar(50)
);
alter table users add Gender varchar(59) not null after age;
alter table users add city varchar(34) not null, add contant varchar(50);
alter table users modify city varchar(50) not null ;
alter table users rename to sam ;

-- alter quere 
insert into  sam values(null,'am',34,'male','chennai','4567');

insert into sam  ( name,age,gender,city,contant) values ('jayam',45,'female','ooty','4567');
insert into sam  ( name,age,gender,city,contant) values ('kavi',34,'male','kulla','9845498');
insert into sam  ( name,age,gender,city,contant) values ('raj',99,'male','krish','4546952');
insert into sam  ( name,age,gender,city,contant) values ('samji',39,'female','sivi','123849');
insert into sam  ( name,age,gender,city,contant) values ('dd',98,'female','erode','456982');
insert into sam  ( name,age,gender,city,contant) values ('sd',32,'female','salem','55662222225');
delete from sam where id =4;


insert into sam  ( name,age,gender,city,contant) values ('samji',39,'female','sivi','123849');

insert into sam values(null,"das",45,65,56,"salem","nice","54678934");
insert into sam values(null,"mass",32,89,69,"salem","ok","4948508");
insert into sam values(null,"kasi",23,90,39,"salem","great","9438593");
insert into sam values(null,"tappan",56,65,56,"salem","grougous","25782");
insert into sam values(null,"sam",22,33,09,"salem","marvles","289742");
insert into sam values(null,"vadi",58,68,88,"salem","amazaing ","2879542");
insert into sam values(null,"hello",29,45,87,"salem","massive","328759289");
insert into sam values(null,"bye",77,44,94,"salem","beautyful","20984857478");


select*from sam;
describe users;
show tables;
delete from sam where id= 1;


-- update quere 
update sam set city='houser', contant='89747859' where id= 5;

 --  truncate (delete all) 
truncate table sam ;
select name,age,city from sam where city ='ooty';
select name,age,city from sam where city ='kulla' and  age>=34 ;
select name,age,city from sam where city ='kulla' or city='ooty' and age>=25 order by city;
select name ,age from sam;

select name ,age ,city from sam where city ='ooty' or city='chennai' order by 'city';

select count(city) from sam;

select count(distinct city) from sam;

select* from sam limit 0,10;
select* from sam order by id asc limit 11,20;

select* from sam order by id desc limit 11,20;
select* from sam limit 21,30;


select *from sam;

select city from sam;
select distinct city from sam;

select count(*) city from sam;

select max(age) from sam;
select min(age) from sam ;
select avg(age) from sam;

select sum(age) from sam;

select gender ,count(id ) as total from sam group by gender;

select city ,count(id) as citycount from sam  group by city;

select count(*) from sam;

update sam set contant=8465565656 where id=2;
update sam set contant=59268753495 where id=3;
update sam set contant=9756543218 where id=4;
update sam set contant=55487844 where id=5;

select *from sam order by gender asc;
select * from sam;

alter table sam add marks int(40) not null;
alter table sam add persentage int(40) not null;
alter table sam add rating varchar(40)not null;

insert into sam (marks,persentage,rating ) values (8,7,"i");

select*from sam order by age desc limit 5;


select city ,count(*) from sam group by city ;

select *from sam;

select city="chennai" ,city as total from sam group by city ;

select name from  sam   limit 5 ;  

select gender,count(*) from sam group by gender;
select contant ,count(*) from sam group by contant;
select avg(marks) from sam;

-- Level 5 — Aggregate Functions



 










-- https://youtu.be/cpbd7CLAqtw?si=yWZhdwfrFdUMW0O_
-- 21;49
-- 37;39



select *from sam;
select name from sam;
select name,age from sam;
select* from sam where city="salem";

select * from sam where age>40;
select*from sam where age<30;

select *from sam where age>34 and marks >60;
select *from sam where marks>40 or marks>80;
select*from sam where age between 20 and 50;

select *from sam where name="mass";

select*from sam order by age asc;

select*from sam order by marks desc;

select*from sam order by marks desc limit 3;






