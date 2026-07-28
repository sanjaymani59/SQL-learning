create DATABASE college_db;

Use college_db;

create table student(
	student_id int primary key,
    Name_ varchar(50),
    age int,
    departament varchar(50),
    marks int (50),
    city varchar(50)
    );

insert into student values
(1,'sam',34,'cse',56,'chennai'),
(2,'aruv',34,'bce',56,'dubai');

insert into student values
(3,'rahul',45,'it',43,'salem'),
(4,'jay',56,'mech',56,'goa');

insert into student values
(5,'naser',56,'pct',54,'singapor'),
(6,'alli',34,'tt',32,'germany');

insert into student values
(8,'basha',43,'cse',70,'kochi');

select*from student;
select*from student order by name asc;
select count(*) as total_students from student;
select departament,count(*) as total_students from student group by departament;

select*from student where marks>50;
select *from student where departament='cse';

select name, marks from student;

select*from student where marks>40;

select*from student order by marks desc;

select max(marks) as highest_marks from student;

select min(marks) as highest_marks from student;

select avg(marks) as highest_marks from student;

select name from student;

    