create database Altors_Pizzeria;

/*

Please note that both the referenced table and the referencing table must exist in the database with  the appropriate primary 
key column and data type before you can define foreign keys. 

Also, ensure that  the data types of the referenced and referencing columns match for the foreign key constraint to work correctly.

if you forgot to add your foreign key you can use the alter table table or just drop the table and create another one with references on it

*/


use Altors_Pizzeria;
create table Address
(
address_id int not null unique,
delivery_address varchar (50) null,
delivery_city varchar(50) not null,
delivery_zipcode int not null
);

create table Customers
(
customer_id int not null unique,
customer_firstname varchar(50) not null,
customer_lastname varchar(50) not null
);

create table Ingredients
(
ingre_id VARCHAR (50) not null unique,
int_name varchar(50),
ingre_measure varchar(20) not null,
ingre_price decimal (10,2)
);


create table Inventory
(
inv_id int not null unique,
ingre_id varchar(50) not null REFERENCES Ingredients,
quantity int not null not null
);


create table Items
(
item_id int not null unique,
recipe_id varchar(50) not null,
item_name  varchar (100)not null,
item_cat varchar(100)  not null,
item_size varchar(50) not null,
item_prize int not null
);

alter table Items
ADD constraint fk_Items_Recipes
FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id);


create table Recipes
(
row_id int not null unique,
recipe_id varchar(50),
ingre_id VARCHAR (50) not null unique,
quantity int not null
);


create table Orders
(
order_id int not null,
created_date datetime,
quantity int not null,
customer_id  int not null,
delivery int not null,
address_id int not null,
item_id int not null
);

alter table Orders
add primary key (order_id),
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
ADD CONSTRAINT FK_Orders_Address
FOREIGN KEY (address_id) REFERENCES Address(address_id),
ADD CONSTRAINT FK_Orders_Items
FOREIGN KEY (item_id) REFERENCES Items(item_id);

create table Shift
(
shift_id varchar(20) not null unique,
day_of_week varchar(20),
start_time time,
end_time time 
);
alter table Shift
add primary key (shift_id);

create table Staff
(
staff_id varchar(20) not null unique,
first_name varchar(50) not null,
last_name varchar(50) not null,
position varchar(50) not null,
hourly_rate int not null
);

alter table Staff
add primary key (staff_id);


create table RotationShift
(
rotation_id varchar (50) not null,
shift_date date not null,
shift_id varchar(20) not null unique,
staff_id varchar(20) not null unique,
primary key (rotation_id),
FOREIGN KEY (shift_id) references Shift(shift_id),
FOREIGN KEY (staff_id) references Staff(staff_id)
);


