create database primary_key;

use primary_key;

drop table drivers;

create table drivers(
driver_id int primary key,
driver_name varchar(100),
license_number varchar(50) unique );
insert into drivers(driver_id,driver_name,license_number) 
values(101,'sam','AXXV34');
insert into drivers(driver_id,driver_name,license_number) 
values(102,'samm','AXXA35');
insert into drivers(driver_id,driver_name,license_number) 
values(103,'saamm','AXX55');

select*from drivers;

drop table riders;
create table riders(
rider_id int ,
driver_id int ,
pickup_location varchar(50),
dropoff_location varchar(50),
ride_date datetime,
fare decimal(10,3),
FOREIGN KEY (driver_id)
REFERENCES drivers(driver_id)on delete cascade);

insert into riders(rider_id,driver_id,pickup_location,
dropoff_location,ride_date,fare) 
values(1,101,'chennai','coimbator','2024-12-29 08:00:00',500.000);

insert into riders(rider_id,driver_id,pickup_location,
dropoff_location,ride_date,fare) 
values(2,102,'chennai','coimbator','2024-12-29 08:00:00',500.000);

insert into riders(rider_id,driver_id,pickup_location,
dropoff_location,ride_date,fare) 
values(2,103,'salem','coimbator','2025-12-19 04:00:00',300.000);
 
drop table riders;
drop table drivers;
select*from riders;
select*from drivers;

delete from drivers where driver_id=101;



desc riders;
desc drivers;

drop database primary_key;