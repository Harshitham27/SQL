CREATE DATABASE chats;
USE chats;
create table chat_center(id int not null,chat_center_name varchar(20) not null,chat_name varchar(20),cost bigint,
no_of_plates int,seats_chat_center int,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint seats_uni unique(seats_chat_center),constraint cost_check check(cost>20),
constraint plates_check check(no_of_plates>0 and no_of_plates<10));
select * from chat_center;
DESC chat_center;
INSERT INTO chat_center VALUES(1,'bangarpet','panipuri',40,2,22,now(),'Daku',now(),'Pinku');
INSERT INTO chat_center VALUES(2,'sairam chat center','nippat masala',30,9,25,now(),'Chiru',now(),'Dhiru');
INSERT INTO chat_center VALUES(3,'Chettys','pizza',140,1,90,now(),'Parimala',now(),'Pari');
INSERT INTO chat_center VALUES(4,'Chandru chats','Veg burger',60,3,40,now(),'Sanjana',now(),'Rama');
INSERT INTO chat_center VALUES(5,'Star chats','sev puri',40,3,30,now(),'Raju',now(),'Manju');
INSERT INTO chat_center VALUES(6,'Guruprasad chats','Crazy masala',35,4,35,now(),'Prajwal',now(),'Ragini');
INSERT INTO chat_center VALUES(7,'Eternity','rose milkshake',60,1,45,now(),'adhi',now(),'Aramba');
INSERT INTO chat_center VALUES(8,'Ram chat center','masalpuri',40,2,50,now(),'Anjali',now(),'Pranjali');
INSERT INTO chat_center VALUES(9,'1980','frenchfries',50,1,55,now(),'Daku',now(),'Pinku');
INSERT INTO chat_center VALUES(10,'1992','samosa',21,1,60,now(),'Deepu',now(),'Ramu');
INSERT INTO chat_center VALUES(11,'Square chats','samosa masala',39,5,65,now(),'Bhoomitha',now(),'Savitha');
INSERT INTO chat_center VALUES(12,'last stop chats','botti masala',25,7,66,now(),'Zumba',now(),'Zimba');
INSERT INTO chat_center VALUES(13,'Crazy chats','special chat',50,2,70,now(),'Ganga',now(),'Gangadara');
INSERT INTO chat_center VALUES(14,'KA52 chats','bel puri',45,3,24,now(),'Sathu',now(),'Panthu');
INSERT INTO chat_center VALUES(15,'Magic mud chats','Cheese Maggie',60,2,52,now(),'Charan',now(),'Charanya');
INSERT INTO chat_center VALUES(16,'Food center','Noodels',55,3,100,now(),'Harshitha',now(),'Harshitha');
INSERT INTO chat_center VALUES(17,'Malnad chats','Gobi manchuri',55,3,99,now(),'Jeevan',now(),'Kavana');
INSERT INTO chat_center VALUES(18,'Ragavendra chats','mushroom munchuri',60,4,80,now(),'Laxmi',now(),'Lakshmi');
INSERT INTO chat_center VALUES(19,'Rani chats','Sandwich',60,5,79,now(),'Bashu',now(),'Noor');
INSERT INTO chat_center VALUES(20,'Super chats','orange juice',30,8,88,now(),'Vasu',now(),'Veera');
ALTER TABLE chat_center modify id int;
commit;
ALTER TABLE chat_center add constraint id_uniq unique(id);
ALTER TABLE chat_center add constraint id_check check(id>0);