use logicfirst;
create database logicfirst;

-- create table student(
-- 	id int primary key ,
--     name varchar(30),
--     gpa decimal(3,2)
--     );
-- describe student;
-- select*from student;

-- alter table student add dept varchar(10);
-- alter table student drop column dept;

-- insert into student values(1,"Aarthi" ,7.4);
-- insert into student values(2,"anitha" ,3.4);
-- insert into student values(3,"ani" ,5.4);

-- select id,name from student;

-- insert into student values
-- (4,"arul" ,4.5),
-- (5,"anand",8.0),
-- (6,"balaji",4.0);

-- select*from student;
-- insert into student (id,name) values(7,"raj");
-- drop table student;

drop table employee;
create table employee(
Emp_id int primary key ,
Ename varchar(30),
JobDesc varchar(20),
Salary int 
);
INSERT INTO employee (Emp_id, Ename, JobDesc, Salary)
VALUES
(1, 'Ram', 'ADMIN', 1000000),
(2, 'Harini', 'MANAGER', 2500000),
(3, 'George', 'SALES', 2000000),
(4, 'Ramya', 'SALES', 1300000),
(5, 'Meena', 'HR', 2000000),
(6, 'Ashok', 'MANAGER', 3000000),
(7, 'Abdul', 'HR', 2000000),
(8, 'Ramya', 'ENGINEER', 1000000),
(9, 'Raghu', 'CEO', 8000000),
(10, 'Arvind', 'MANAGER', 2800000),
(11, 'Akshay', 'ENGINEER', 1000000),
(12, 'John', 'ADMIN', 2200000),
(13, 'Abinaya', 'ENGINEER', 2100000);

select* from employee;

select *from employee where ename<>"ramya";

select *from employee where Salary>2000000 and JobDesc="manager";

select *from employee where JobDesc in ("hr", "sales");

select * from employee where salary between 2000000 and 300000;

select * from employee limit 5;

select *from employee where ename not like 'a%';
    
select * from employee where ename like '%i%';

select*from employee where ename like '__i%';

update employee set JobDesc ='ANALAYST' where  JobDesc='ENGINEER';


delete from employee where emp_id =2;

select distinct JobDesc  from employee;

select *from employee order by ename;

select* from employee order by salary;

select *from employee where JobDesc = "manager" order by salary;

select * from employee order by (case  JobDesc
when 'ceo' then 1
when 'manager' then 2
when 'hr' then 3
when 'engineer' then  4
when 'sales' then 5
else 6
end
);


select ename , salary,jobDesc from employee where JobDesc='admin';

select * from employee order by jobDesc='engineer' desc;

select count(jobdesc),jobdesc  from employee where jobDesc='engineer' ;

select sum(salary),jobdesc AS total from  employee where jobdesc='admin';


select  max(salary)  as high_salary , jobdesc from employee where jobdesc='engineer' ;

select ename, salary , concat(ename , '-' , salary ) as salary_detials from employee;

select ename , length(ename) as naem_length from employee;

select ename , upper(ename) as name_upper from employee;

select count(*) from employee ;
select count(*) from employee where JobDesc="manager";

select avg(salary) from  employee ;

select sum(salary) from employee where jobdesc="analyst";

select max(salary) from employee;


-- string

select ucase(ename) ,salary from employee;

select ename,char_length(ename) char_aount from employee;


select ename,concat("RS  ",  salary) from employee;

select ename,concat("RS  ", format(salary,0)) from employee;

select ename , left(jobdesc,4) from employee; 





-- https://youtu.be/r5IyLq2k2Ps?si=u4pak9hpWTKuNTms 38;56


