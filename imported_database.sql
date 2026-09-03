use employee;
select*from for_database;

drop table employee;
select*from 
for_database where payment_method like '%c'; 
select*from 
for_database where payment_method like 'c%'; 

select*from 
imported_data where payment_method regexp 'COD'; 
select*from 
imported_data where payment_method regexp '[CO]D'; 
select*from 
for_database where payment_method regexp 'C[OD]'; 

select*from 
imported_data where payment_method regexp '^COD$|mac|hello'; 

select product_category from for_database;

select*from imported_data where product_category 
regexp 'beauty';
select*from for_database where product_category 
like '%e';
select*from imported_data order by unit_price asc;
select*from for_database order by delivery_days asc;

select*from imported_data where product_category ='home' or product_category ='beauty';

select*from imported_data where product_category ='home' and product_category ='beauty';

select*from for_database where product_category regexp '%s';



select*from imported_data where product_category in ('home','beauty','clothing');


select customer_id ,sum(revenue) 
as total_spend, dense_rank() over (order by sum(revenue)  desc) 
as spend_rank from imported_data group by customer_id;

alter table for_database drop  summa;

desc imported_data;

select *from for_database where payment_method in ('card','wallet');
alter table for_database rename to imported_data;
select*from imported_data;

select*from imported_data where revenue>'30';

select*from imported_data where unit_price >30 order by unit_price  desc;
select*from imported_data where unit_price >30 order by unit_price asc;
select*from imported_data where unit_price >30 order by unit_price asc;

select*from imported_data where unit_price>30  and  region ='east' and product_category='clothing' order by unit_price asc;

-- constrine

select count(*) from imported_data where product_category ='Clothing' ;
select count(*) from imported_data where product_category ='Clothing'and payment_method= 'card';
select count(*) from imported_data where product_category in ('Clothing','home');
select count(*) from imported_data where product_category not in('Clothing','home');

select sum(unit_price) from imported_data where  product_category ='Clothing';
select sum(revenue) as total from imported_data where  product_category ='Clothing';
select min(unit_price) as min_total from imported_data where  product_category ='Clothing';
select max(unit_price) as max_total from imported_data where  product_category ='Clothing';

select avg(unit_price) as avg_total from imported_data where  product_category ='Clothing';

select product_category,sum(unit_price) as total_individual_gain from imported_data group by product_category;
select product_category ,sum(revenue) as total_individual_revenue from imported_data group by product_category;
select payment_method ,sum(revenue) as total_individual_revenue from imported_data group by payment_method;
-- aggression --
select payment_method ,sum(revenue) as total_individual_revenue from imported_data group by payment_method having sum(revenue)>500;

select product_category,payment_method ,
		case 
			when revenue >40 then 'high revenue'
            when revenue between 30 and 40 then 'mediam revenue'
            when revenue <= 15 then 'low revenue'
		else "not data"
			
		end as total_revenu_person_spending from imported_data;
            
		
select region,order_date, 
	case
		when revenue >40 then 'high revenue'
            when revenue between 30 and 40 then 'mediam revenue'
            when revenue <= 15 then 'low revenue'
		else "not data"
        
        end as total_of_all from imported_data;
        
        select region, 
	case
		when revenue >40 then 'high revenue'
            when revenue between 30 and 40 then 'mediam revenue'
            when revenue <= 15 then 'low revenue'
		else "not data"
        
        end as total_of_all   from imported_data order by region;
select*from imported_data limit 20;
select*from imported_data limit 10;

select
	customer_id,
    case
		when customer_id is null then '0.00'
        
	else
		customer_id
        
	end as customer from imported_data;
    
select count(*) from  imported_data where customer_id is null;
select count(*) from  imported_data where customer_id ="null";

select order_id,
	order_date,
    ifnull(order_date, '000')
    from imported_data;


select order_id,
	order_date,
    coalesce (order_date, '000 ') as hello 
    from imported_data; 
    
    
select discount , 
		coalesce(discount,'hi')
        from imported_data; 
        
select avg(delivery_days) from imported_data;
select max(delivery_days) from imported_data;
select min(delivery_days) from imported_data;
select count(delivery_days) from imported_data;

        

        

    
        








 




