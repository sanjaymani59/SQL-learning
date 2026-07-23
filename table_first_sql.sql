create database samplefirstdata;

use samplefirstdata;
create table person (
personID int ,
Lastname varchar(255) not null,
Firstname varchar(255),
Address varchar(255),
city varchar(255)
);
insert into person
value(101,"ram","son","erode","chennai");
insert into person
values(102,"sam","sooon","coimbator","tamilnadu"),
	  (103,"sajan","saibai","nildo","kerla");

insert into person(personID,Lastname,city)
values(104,"danc","pollachi");

select* from person where personid !=101;
set sql_safe_updates=0;
update person
set Lastname="samm"
where personID="101";

delete from person
where personID="104";

set autocommit=0;

rollback;

commit;

select * from person;



show databases;

create table hello(
		 dated date,
         tad  datetime,
         tim time
         );
         
insert into hello
values(current_date(),now(),current_time());

commit;
rollback;
         
         
         
select*from hello
         




