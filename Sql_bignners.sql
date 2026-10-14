use logicfirst;
create database logicfirst;

create table student(
	id int primary key ,
    name varchar(30),
    gpa decimal(3,2)
    );
describe student;
select*from student;

alter table student add dept varchar(10);
alter table student drop column dept;

insert into student values(1,"Aarthi" ,7.4);
insert into student values(2,"anitha" ,3.4);
insert into student values(3,"ani" ,5.4);

select id,name from student;

insert into student values
(4,"arul" ,4.5),
(5,"anand",8.0),
(6,"balaji",4.0);

-- https://youtu.be/r5IyLq2k2Ps?si=u4pak9hpWTKuNTms 38;56


