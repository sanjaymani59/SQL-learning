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
 