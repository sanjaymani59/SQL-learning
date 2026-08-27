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



select*from for_database where product_category in ('home','beauty','clothing');


select customer_id ,sum(revenue) 
as total_spend, dense_rank() over (order by sum(revenue)  desc) 
as spend_rank from for_database group by customer_id;

alter table for_database drop  summa;

desc for_database;

select *from for_database where payment_method in ('card','wallet');
alter table for_database rename to imported_data;
select*from imported_data;

select*from imported_data where revenue>'30';

select*from imported_data where unit_price >30 order by unit_price  desc;
select*from imported_data where unit_price >30 order by unit_price asc;

select*from imported_data where unit_price>30  and  region ='east' and product_category='clothing' order by unit_price asc;

-- constrine

select count(*) from imported_data where product_category ='Clothing' ;
select count(*) from imported_data where product_category ='Clothing'and payment_method= 'card';
select count(*) from imported_data where product_category in('Clothing','home');
select count(*) from imported_data where product_category not in('Clothing','home');

select sum(unit_price) from imported_data where  product_category ='Clothing';
select sum(revenue) as total from imported_data where  product_category ='Clothing';
select min(unit_price) as min_total from imported_data where  product_category ='Clothing';
select max(unit_price) as max_total from imported_data where  product_category ='Clothing';

select avg(unit_price) as avg_total from imported_data where  product_category ='Clothing';






 




