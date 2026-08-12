USE college_db;
CREATE TABLE Stu_d_ent(
student_id int primary key,
name varchar(50),
age int,
department varchar(40),
city varchar(40));

drop table stu_d_ent;
select*from stu_d_ent;

create table course(
course_id int primary key ,
course_name varchar(50),
credits int);
select*from course;

create table Marks(
mark_id int primary key ,
student_id int,
course_id int,
marks int );
-- foreign key (student_id) references stu_d_ent(student_id),--
-- foreign key (course_id) references course(course_id));--
drop table Marks;
select* from marks;

-- inserting data to all table-- 

insert into stu_d_ent values
(1,'arun',20,'cse','chennai'),
(2,'bala',21,'ece','chennai'),
(3,'charan',22,'cse','chennai'),
(4,'divya',23,'It','chennai'),
(5,'esha',24,'cse','chennai'),
(6,'fahad',25,'ece','chennai'),
(7,'gokul',26,'IT','chennai'),
(8,'hari',27,'cse','chennai'),
(9,'vignesh',28,'mech','chennai');


insert into course values
(101,'python',4),
(102,'computer network',4),
(103,'java',4),
(104,'sql',4),
(105,'git hub',4),
(106,'leet code',4);


insert into Marks values
(1,1,101,85),
(2,1,102,36),
(3,1,103,46),
(4,2,104,86),
(5,2,105,97),
(6,3,106,68),
(7,3,107,96),
(8,3,108,47),
(9,4,109,27),
(10,4,104,87),
(11,5,106,97),
(12,5,108,35),
(13,6,103,87),
(14,6,109,98),
(15,7,102,46),
(16,7,106,87),
(17,8,107,78),
(18,8,108,35);


select*FROM marks;

select*from stu_d_ent where department="cse";

select*from stu_d_ent where department="cse" and city="chennai";

select*from stu_d_ent order by age;

select*from stu_d_ent order by name asc;

select*from stu_d_ent limit 3;


select max(marks) from marks;









 