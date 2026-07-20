show databases;

/* -- create database sam_store; */

/* use sam_store;

drop database dummy;
drop database sakila;

alter database read only =0; */

create table employees (
	emp_id int,
    emp_name varchar(50),
    salaty decimal(7,2),
    join_date date
);

/* select* from employees;
alter table employees
add phone_number varchar(10); */

select*from employees;

/* alter table employees
add email varchar(50);
select*from employees;

alter table employees
modify column email varchar(100);
select*from employees;
 */



