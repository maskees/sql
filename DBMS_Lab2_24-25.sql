SELECT VERSION(), CURRENT_DATE;
Select user();
create database if not exists Btech_AI_I044;
use Btech_AI_I044;

create table if not exists category_header (
cat_code numeric(5) primary key,
cat_desc varchar(20)
);

create table if not exists route_header (
route_id  numeric(5) primary key,
route_no numeric(5),
cat_code numeric(5),
origin varchar(20), destination varchar(20), fare float(7,2), distance numeric(3), capacity numeric(3),
foreign key (cat_code) references category_header(cat_code)
);
create table if not exists place_header (
place_id  numeric(5) primary key,
place_name varchar(20) not null,
place_address varchar(50),
bus_station varchar(10)
);

create table if not exists fleet_header (
fleet_id  numeric(5) primary key,
day date,
route_id numeric(5),
cat_code numeric(5),
foreign key (route_id) references route_header(route_id),
foreign key (cat_code) references category_header(cat_code)
);
create table if not exists ticket_header (
 fleet_id numeric(5), ticket_no numeric(5) primary key, doi date not null, dot date not null, time_travel char(8), board_place varchar(20), origin varchar(40), destination varchar(40), adult numeric(3), children numeric(3), total_fare numeric(7,2), route_id numeric(5),
foreign key (fleet_id) references fleet_header(fleet_id),
foreign key (route_id) references route_header(route_id)
);
create table if not exists ticket_detail (
ticket_no numeric(5), name varchar(20), sex char(1), age numeric(3), fare float(5,2)
);
create table if not exists route_detail (
route_id numeric(5), place_id numeric(5), nonstop char(1)
);
desc route_header;