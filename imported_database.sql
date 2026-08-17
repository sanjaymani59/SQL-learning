use employee;

select*from for_database;
drop table employee;
select*from 
for_database where payment_method like '%c'; 
select*from 
for_database where payment_method like 'c%'; 

select*from 
for_database where payment_method regexp 'COD'; 
select*from 
for_database where payment_method regexp '[CO]D'; 
select*from 
for_database where payment_method regexp 'C[OD]'; 

select*from 
for_database where payment_method regexp '^COD$|mac|hello'; 

select product_category from for_database;

select*from for_database where product_category 
regexp 'beauty';
select*from for_database where product_category 
like '%e';
select*from for_database order by unit_price asc;
select*from for_database order by delivery_days asc;

select*from for_database where product_category ='home' or product_category ='beauty';

select*from for_database where product_category regexp '%s';






