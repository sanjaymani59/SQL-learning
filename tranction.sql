create table customers(
	t_id int primary key auto_increment,
    C_name varchar(30),
    age int);
    
insert into customers ( c_name ,age)values ("sam",35),
("samm",34);

select*from customers;

drop table customers;

create table  transactions
(t_id int primary key auto_increment,
amount decimal(6,2) null,
customer_id int,
foreign key (customer_id) references customers(t_id));


insert into transactions(amount,customer_id)
values(45.3,1);
insert into transactions(amount,customer_id)
values(34.55,2);
insert into transactions(amount,customer_id)
values(34.55,null);
    
    
alter table transactions
drop foreign key transactions;

alter table transactions 
add constraint fk_c_id foreign key(customer_id) references 
customers(t_id);

use student_database;
    
select*from transactions;
drop table tranctions;

delete from customers
where t_id=1;






insert into tranction(salary)values(79.4);
insert into tranction(salary)values(69.4);
insert into tranction(salary)values(59.4);
insert into tranction(salary)values(89.4);
insert into tranction(salary)values(99.4);

