use logicfirst;
drop table employee;
create table employee(
Emp_id int primary key  auto_increment,
Ename varchar(30) not null,
JobDesc varchar(20) default "unassigned",
Salary int,
pan varchar(10) unique,
check (salary>100000) 
 );
 
 insert into employee(ename,salary) values("reamya",300000);
 
 select *from employee;