create database primary_key;

use primary_key;

drop table drivers;
create table drivers(
driver_id int primary key,
driver_name varchar(100),
license_number varchar(50) unique );
insert into drivers(driver_id,driver_name,license_number) 
values(1,101,'sam');
insert into drivers(driver_id,driver_name,license_number) 
values(2,102,'saam');

select*from drivers;

drop table riders;
create table riders(
rider_id int ,
driver_id int primary key,
pickup_location varchar(50),
dropoff_location varchar(50),
ride_date datetime,
fare decimal(10,3),
FOREIGN KEY (driver_id)
REFERENCES drivers(driver_id));

insert into riders(rider_id,driver_id,pickup_location,
dropoff_location,ride_date,fare) 
values(1,101,'chennai','coimbator','2024-12-29 08:00:00',500.00);

insert into riders(rider_id,driver_id,pickup_location,
dropoff_location,ride_date,fare) 
values(2,102,'chennai','coimbator','2024-12-29 08:00:00',500.00);
 
drop table riders;
drop table drivers;
select*from riders;

drop database primary_key;