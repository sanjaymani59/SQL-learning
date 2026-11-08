-- 1. Display all student records.

select * from students;

-- 2. Find students whose age is greater than 20.

select *from students where age>20;

-- 3. Find students from Chennai.

select *from students where city="chennai"

-- 4. Display students in alphabetical order.

select *from students order by asc;

-- 5. Find the total number of students.

select count(*) as total_students from  students 

