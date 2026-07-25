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

select*from student;

    