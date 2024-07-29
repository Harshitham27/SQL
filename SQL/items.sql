CREATE DATABASE items;
USE items;
CREATE TABLE order_details(id int,order_name varchar(20),order_id int primary key,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));
Insert into order_details values(1,'pizza',101,now(),'jeevitha',now(),'admin');
Insert into order_details values(2,'Burger',102,now(),'Sonal',now(),'admin1');
Insert into order_details values(1,'Fries',103,now(),'Chai',now(),'admin');
SELECT * FROM order_details;

CREATE TABLE payment(id int,payment_id int primary key,order_id int,payment_status varchar(20),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(order_id) references order_details(order_id));
INSERT INTO payment values(1,201,101,'pending',now(),'jeevitha',now(),'admin');
INSERT INTO payment values(2,202,102,'done',now(),'sonu',now(),'admin1');
INSERT INTO payment values(3,2013,103,'pending',now(),'ram',now(),'admin2');
SELECT * FROM payment;

CREATE TABLE restaurant(id int,restaurant_name varchar(30),restaurant_id int primary key,loc varchar(30),order_id int,ratings int,
payment_id int,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(order_id) references order_details(order_id),foreign key(payment_id) references payment(payment_id));
INSERT INTO restaurant values(1,'Swathi',301,'Nelamangala',101,10,201,now(),'harsh',now(),'admin');
INSERT INTO restaurant values(2,'Udupi',302,'RRnagar',102,9,202,now(),'raj',now(),'admin');
INSERT INTO restaurant values(3,'Rekha',303,'BTM',103,7,2013,now(),'ranji',now(),'admin');
SELECT * FROM restaurant;

CREATE TABLE delivery(id int,person_name varchar(20),mode_of_payment enum('online','offline'),restaurant_id int,order_id int,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(restaurant_id) references restaurant(restaurant_id),foreign key(order_id) references order_details(order_id));
INSERT INTO delivery values(1,'Harsh','online',301,101,now(),admin,now(),manager);
INSERT INTO delivery values(1,'Rao','offline',302,102,now(),admin1,now(),manager1);
INSERT INTO delivery values(1,'Ram','online',303,103,now(),admin2,now(),manager2);
SELECT * FROM delivery;