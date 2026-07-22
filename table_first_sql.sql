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


select * from person;

show databases;
