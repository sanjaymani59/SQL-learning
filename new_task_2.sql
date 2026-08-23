create database garlic;

use garlic;
create table workers(
	Name_ varchar(40) unique,
    place_ varchar(40) unique,
    dailay_wages int,
    emp_age int primary key
    );
    
    
insert into workers values
('sam','bokk','2',101);
    
    
    
    
    
select*from workers;

drop table workers;







