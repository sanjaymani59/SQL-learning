-- 1. Display all student records.

-- select * from students;

-- 2. Find students whose age is greater than 20.

-- select *from students where age>20;

-- 3. Find students from Chennai.

-- select *from students where city="chennai"

-- 4. Display students in alphabetical order.

-- select *from students order by asc;

-- 5. Find the total number of students.

-- select count(*) as total_students from  students 


create database company_db;

use company_db;

create table Employee(
    emp_id int primary key,
    emp_name varchar(50),
    age int ,
    department varchar  (30),
    salary int ,
    city varchar(40)
);

insert into Employee values 
(1,"arun",22 , "it",25000,"chennai"),
(2,"bala",25,"hr",30000,"salem"),
(3,"caharan",23,"IT",40000,"coimbator"),
(4,"Divyya",24,"Finance",35000,"chennai"),
(5,"esha",26,"hr",50000,"madurai"),
(6, 'Fahad', 27, 'HR', 45000, 'Salem'),
(7, 'Gokul', 22, 'Finance', 28000, 'Trichy'),
(8, 'Hari', 28, 'IT', 60000, 'Chennai'),
(9, 'Kiran', 25, 'Sales', 32000, 'Erode'),
(10, 'Mani', 23, 'Sales', 38000, 'Salem');


select * from Employee;
-- Question 1: Find employees earning more than 30,000.
select * from Employee where salary>3000;
-- Question 2: Find employees working in IT.
select * from Employee where department="it";
-- Question 3: Display the highest salary.
select max(salary) from Employee;
-- Question 4: Display the lowest salary.
select min(salary) from Employee;
Output: 25000
-- Question 5: Find the average salary.
select avg(salary) form Employee;
-- Question 6: Count total employees.
select count(*) from Employee;
-- Question 7: Find employees whose names start with A.
select * form Employee where emp_name like 'A%';
-- Question 8: Display the top 3 highest-paid employees.
select * from Employee order by salary limit 3;