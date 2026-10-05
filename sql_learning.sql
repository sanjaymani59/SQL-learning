create database sql_learning;
use sql_learning;

drop table students ;
create table students(
	student_id int primary key auto_increment,
    name varchar(50),
    age int ,
    gender varchar(30),
    department varchar(40),
    city varchar(59),
    marks int,
    attendance decimal(5,2),
    course varchar(40),
    admission_year int );
    
select*from students;
    
 

INSERT INTO students
(name, age, gender, department, city, marks, attendance, course, admission_year)
VALUES
('Arun', 20, 'Male', 'CSE', 'Salem', 85, 92.50, 'Java', 2024),
('Bala', 21, 'Male', 'ECE', 'Chennai', 72, 88.00, 'Python', 2023),
('Divya', 20, 'Female', 'CSE', 'Madurai', 95, 96.50, 'Python', 2024),
('Kavi', 22, 'Female', 'IT', 'Coimbatore', 68, 79.50, 'SQL', 2022),
('Manoj', 21, 'Male', 'CSE', 'Theni', 78, 85.00, 'Java', 2023),
('Priya', 20, 'Female', 'ECE', 'Salem', 91, 94.00, 'Python', 2024),
('Rahul', 23, 'Male', 'IT', 'Chennai', 55, 70.00, 'SQL', 2022),
('Sneha', 21, 'Female', 'CSE', 'Coimbatore', 88, 90.50, 'Java', 2023),
('Vijay', 22, 'Male', 'MECH', 'Madurai', 64, 76.00, 'Python', 2022),
('Anu', 20, 'Female', 'CSE', 'Theni', 97, 98.00, 'SQL', 2024),
('Dinesh', 21, 'Male', 'IT', 'Salem', 81, 89.00, 'Java', 2023),
('Keerthi', 22, 'Female', 'ECE', 'Coimbatore', 74, 82.50, 'SQL', 2022),
('Sathish', 23, 'Male', 'CSE', 'Chennai', 69, 75.00, 'Python', 2022),
('Nandhini', 20, 'Female', 'IT', 'Madurai', 93, 95.00, 'Java', 2024),
('Surya', 21, 'Male', 'CSE', 'Salem', 87, 91.00, 'SQL', 2023);


-- Level 1 — SELECT
select*from students;


select name ,marks from students;

select name,department,city from students;

-- Level 2 — WHERE
select *from students where marks>80;

select name,course,department from students where marks>90;
select name,course,department,marks from students where marks>90 ;
select count(*) from students ;

select name,marks from students order by marks desc;

select city from students group by city ;

select*FROM  students where marks between 50 and 100;
select *from students where department in ("cse","it");

	-- Level 3 — AND / OR / NOT-- 
    
select * from students where department ='cse' and marks >60;
select *from students where city ='salem' or city='chennai' ;

select*from students where not department ='cse';


-- Level 4 — ORDER BY

select*from students order by marks;
select*from students order by marks desc;

select name,marks from students order by marks;

-- Level 5 — LIMIT
select*from students limit 5;
select*from students order by marks desc limit 4;

   --  Level 6 — DISTINCT
select distinct department from students;
select distinct city from students ;
select distinct course from students;

 --  Level 7 — Aggregate Functions
-- -- COUNT()
-- SUM ()
-- AVG()
-- MIN()
-- MAX()

select count(*) from students;
select avg(marks) from students;
select max(marks) from students;
select min(marks) from students;
select sum(marks) from students;


    -- Level 8 — GROUP BY 
    
select department , count(*) from students group by department;
select department ,avg(marks) from students group by  department ;
select city ,max(marks) from students group by city;

		-- Level 9 — HAVING

select department , avg(marks) from students group by department having avg(marks)>74;
    
 -- WHERE → filters rows
-- HAVING → filters groups

-- Level 10 — UPDATE-- 

update students set marks=99 where student_id =1;
select *from students where student_id =1;

-- Level 11 — DELETE

delete from students where student_id =15;

-- Level 12 — ALTER TABLE-- 

alter table students add email varchar(39);
-- Modify:-- 
alter table students modify email varchar(100);
-- Drop:
alter table students drop column email;

-- 13. Create a Second Table — For JOIN Practice

create table courses(
course_id int primary key,
course_name varchar(40),
duration_month int,
fee int
);

insert into courses values
(1,'java',6,15000),
(2,'python',5,12000),
(3,'Sql',4,10000);

select*from students join courses on students.course=courses.course_name;

select 
	students.name,
    students.course,
    courses.duration_month,
    courses.fee
from students
join courses
on students.course = courses.course_name;


select 
	students.name,
    students.department,
    students.city,
    courses.course_id,
    courses.fee
from students 
join courses
on students.course = courses.course_name;





    
   
    
    