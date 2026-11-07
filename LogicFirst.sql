use logicfirst;
drop table employee;

create table branch(
branch_id int primary key auto_increment,
br_name varbinary(30) not null,
addr varchar(200) );



create table employee(
Emp_id int primary key  auto_increment,
Ename varchar(30) not null,
JobDesc varchar(20),
Salary int,
branch_id int,
constraint fk_brachId foreign key(branch_id) references branch(branch_id)
 );
 
 alter table employee
 drop foreign key fk_brachId;
 
 insert into employee(ename,salary) values("reamya",300000);
 
 select *from employee;
 
 show index from employee;
 
 create index name_index on employee(ename);
 alter table employee drop index name_index;
 
 alter table employee add constraint unique_name unique(Ename);

select employee.Emp_id,employee.ename,employee.JobDesc.br_name
from employee join branch 
on employee.branch_id= branch.branch_id 
order by employee.Emp_id
 
  
 
  -- -----------------------------------------------------------
  
   -- ============================================================= 
 
 INSERT INTO branch(br_name, addr)
VALUES
('Chennai', 'Anna Nagar'),
('Salem', 'New Bus Stand'),
('Coimbatore', 'Gandhipuram');

INSERT INTO employee(Ename, JobDesc, Salary, branch_id)
VALUES
('Ramya', 'Manager', 50000, 1),
('Arun', 'Developer', 35000, 2),
('Priya', 'Tester', 30000, 3);


update employee set salary =40000 where Emp_id=2;
delete from employee where Emp_id=2;

select employee.Ename,branch.br_name from employee inner join branch on employee.branch_id= branch.branch_id;



select sum(salary) from employee;

select avg(salary) from employee;

select max(salary) from employee;

select branch_id , count(*) from employee group by branch_id;


delete from students where id=4;
update students set age=22 where id=1;
select * from students where age=30;

select * from employee where first_name like "j%"

select * from employee where first_name like "%j"

select * from employee  order by  last_name asc;

select *from employee order by last_name desc;

create database college;
use college;

create table students(
  id int ;
  name varchar(32);
  age int;
);

insert into students values (2,"man",34);
select *from students;

update students set marks=40 where id=9;

delete from students where id=4;

select *from students where age=39 and marks >39;

select*from students where department ='cse' or department='it';

select *from students where name like 'A%';

select *from students where marks between 40 and 30;



 -- =============================================================== 
 