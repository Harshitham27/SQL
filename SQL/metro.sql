CREATE DATABASE metro;
use metro;
create table metro_info(id int not null,location varchar(50) not null,no_tickets int,ticket_num bigint,
ticket_cost int,metro_time datetime,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint location_uni unique(location),constraint tcost_check check(ticket_cost>20),
constraint tickets_check check(no_tickets>0));
select * from metro_info;
DESC metro_info;
INSERT INTO metro_info VALUES(1,'Majestic',40,20000,30,'2024-07-24 6:12:8',now(),'Daku',now(),'Pinku');
INSERT INTO metro_info VALUES(2,'KR Market',50,50000,35,'2024-08-24 5:30:59',now(),'Chiru',now(),'Dhiru');
INSERT INTO metro_info VALUES(3,'Yeswanthpura',100,420000,60,'2024-08-12 8:12:8',now(),'Pari',now(),'Sawmi');
INSERT INTO metro_info VALUES(4,'Nelamangala',90,233000,40,'2024-08-20 12:12:12',now(),'Sanjana',now(),'Rama');
INSERT INTO metro_info VALUES(5,'Petebidhi',55,134000,60,'2024-08-2 11:00:8',now(),'Raju',now(),'Manju');
INSERT INTO metro_info VALUES(6,'RRnagara',78,156000,90,'2024-08-30 10:22:38',now(),'Prajwal',now(),'Ragini');
INSERT INTO metro_info VALUES(7,'Ramnagara',50,260000,38,'2024-09-3 3:5:6',now(),'adhi',now(),'Aramba');
INSERT INTO metro_info VALUES(8,'Malleshwaram',49,35000,50,'2024-08-14 5:12:38',now(),'Anjali',now(),'Pranjali');
INSERT INTO metro_info VALUES(9,'Hassan',90,890000,90,'2024-08-4 2:32:23',now(),'Daku',now(),'Pinku');
INSERT INTO metro_info VALUES(10,'Raichur',80,660000,80,'2024-08-21 8:10:28',now(),'Deepu',now(),'Ramu');
INSERT INTO metro_info VALUES(11,'Jaipur',45,770000,60,'2024-08-08 6:12:8',now(),'Bhoomitha',now(),'Savitha');
INSERT INTO metro_info VALUES(12,'Jammu',40,20000,30,'2024-07-24 6:12:8',now(),'Zumba',now(),'Zimba');
INSERT INTO metro_info VALUES(13,'Kashmir',40,20000,30,'2024-07-24 6:12:8',now(),'Ganga',now(),'Gangadara');
INSERT INTO metro_info VALUES(14,'Kolar',40,20000,30,'2024-07-24 6:12:8',now(),'Sathu',now(),'Panthu');
INSERT INTO metro_info VALUES(15,'Legere',40,20000,30,'2024-07-24 6:12:8',now(),'Charan',now(),'Charanya');
INSERT INTO metro_info VALUES(16,'Govardhan',40,20000,30,'2024-07-24 6:12:8',now(),'Harshitha',now(),'Harshitha');
INSERT INTO metro_info VALUES(17,'Ramnagar',40,20000,30,'2024-07-24 6:12:8',now(),'Jeevan',now(),'Kavana');
INSERT INTO metro_info VALUES(18,'Haveri',40,20000,30,'2024-07-24 6:12:8',now(),'Laxmi',now(),'Lakshmi');
INSERT INTO metro_info VALUES(19,'Solur',40,20000,30,'2024-07-24 6:12:8',now(),'Bashu',now(),'Noor');
INSERT INTO metro_info VALUES(20,'Singapur',40,20000,30,'2024-07-24 6:12:8',now(),'Vasu',now(),'Veera');
ALTER TABLE metro_info modify id int;
commit;
ALTER TABLE metro_info add constraint id_uniq unique(id);
ALTER TABLE metro_info add constraint num_check check(ticket_num>100);