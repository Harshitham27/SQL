CREATE DATABASE temple;
use temple;
create table temple_info(id int not null,temple_name varchar(20) not null,location varchar(20),funds bigint,prasada_cost int,archane_cost int,
temple_pincode bigint,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
constraint id_uni unique(id),constraint location_uni unique(location),constraint prasada_check check(prasada_cost>50),
constraint idno_check check(id>0));
select * from temple_info;
DESC temple_info;
INSERT INTO temple_info VALUES(1,'Narayana temple','Nelamangala',50000,60,20,562123,now(),'Narayan',now(),'Nani');
INSERT INTO temple_info VALUES(2,'Anjeneya temple','Mangalore',150000,65,15,560023,now(),'Swami',now(),'Ajar');
INSERT INTO temple_info VALUES(3,'Panchamukhi temple','Kunigal',23000,90,37,562122,now(),'Ramajuna',now(),'Ganga');
INSERT INTO temple_info VALUES(4,'narashimhaswamy','Kamsandra',70000,0,70,560023,now(),'Sathi',now(),'Savithri');
INSERT INTO temple_info VALUES(5,'Narayanaswamy','Kolar',30000,55,20,562100,now(),'Navami',now(),'Poojari');
INSERT INTO temple_info VALUES(6,'Lakshmi temple','Colony',25000,70,30,560101,now(),'Lakshmi',now(),'Roopa');
INSERT INTO temple_info VALUES(7,'Circle maramma','Malleswaram',290000,56,30,560151,now(),'Maruthi',now(),'Naga');
INSERT INTO temple_info VALUES(8,'Ram mandir','Bashyam circle',400000,65,35,560045,now(),'Renuka',now(),'Sham');
INSERT INTO temple_info VALUES(9,'Ganesha temple','TB stop',15000,60,39,562123,now(),'Devi',now(),'Darshan');
INSERT INTO temple_info VALUES(10,'Galianjinaya temple','Binamangala',2000,52,30,560101,now(),'Shloka',now(),'Sri');
INSERT INTO temple_info VALUES(11,'Chikkanswamy temple','Magdi',24000,70,30,5604561,now(),'Arthi',now(),'Deepa');
INSERT INTO temple_info VALUES(12,'Lakshmi temple','Colony',25000,70,30,560101,now(),'Lakshmi',now(),'Roopa');
INSERT INTO temple_info VALUES(13,'Shanimathma','Navarang',85000,80,35,560061,now(),'Pallavi',now(),'Praveen');
INSERT INTO temple_info VALUES(14,'gubekalama','KBD',76000,75,67,562009,now(),'Padma',now(),'Nanavam');
INSERT INTO temple_info VALUES(15,'Chamundi','Mysore',745000,90,100,5590781,now(),'Maruthi',now(),'Remo');
INSERT INTO temple_info VALUES(16,'Ganapa temple','Dasanpura',805000,80,33,5611223,now(),'Ramya',now(),'Dilip');
INSERT INTO temple_info VALUES(17,'Ganagama temple','Dasarali',22000,99,65,560001,now(),'Loki',now(),'Lambo');
INSERT INTO temple_info VALUES(18,'Parvathi temple','Kuvempu nagara',67000,88,30,560501,now(),'Sham',now(),'Sundar');
INSERT INTO temple_info VALUES(19,'Shiva temple','Bypass',20000,90,39,5621231,now(),'Kiran',now(),'Swathi');
INSERT INTO temple_info VALUES(20,'Subramanya temple','Hesragatta',349000,80,40,560023,now(),'Elisa',now(),'Imbram');
ALTER TABLE temple_info modify id int;
ALTER TABLE temple_info add constraint name_uni unique(temple_name);
ALTER TABLE temple_info add constraint pincode_check check(temple_pincode>1000);
ALTER TABLE temple_info add constraint funds_check check(funds>500 );