DELIMITER //
DROP PROCEDURE IF EXISTS newentry;
CREATE procedure newentry (website varchar(15),
URL varchar(30), 
first varchar(15),
last varchar(20),
emailaddress varchar(30),
username varchar(20),
decpassword varchar(255),
comment varchar(80),
time TIMESTAMP)
BEGIN
declare encpass varbinary(255) default '';
set encpass = AES_ENCRYPT(decpassword, UNHEX(SHA2('super secret',512)),@init_vector);
insert into passwords values(
	website,
	URL, 
	first, 
	last,
	emailaddress,
	username,
	encpass,
	comment,
	time);
END;
DROP PROCEDURE IF EXISTS changepassword;
CREATE procedure changepassword ( web varchar(15), decpassword varchar(20) )
BEGIN
declare encpass varbinary(255) default '';
set encpass = AES_ENCRYPT(decpassword, UNHEX(SHA2('super secret',512)),@init_vector);
update passwords
  set encpassword = encpass
  where website = web;

END;
DROP PROCEDURE IF EXISTS changeurl;
CREATE procedure changeurl ( weburl varchar(15), decpassword varchar(20) )
BEGIN
declare encpass varbinary(255) default '';
set encpass = AES_ENCRYPT(decpassword, UNHEX(SHA2('super secret',512)),@init_vector);
update passwords
  set url = weburl
  where encpassword = encpass;

END;
DROP PROCEDURE IF EXISTS removepassword;
CREATE procedure removepassword (decpassword varchar(20) )
BEGIN
declare encpass varbinary(255) default '';
set encpass = AES_ENCRYPT(decpassword, UNHEX(SHA2('super secret',512)),@init_vector);
delete from passwords
  where encpassword = encpass;

END;
DROP PROCEDURE IF EXISTS removeurl;
CREATE procedure removeurl (decpassword varchar(20) )
BEGIN
declare encpass varbinary(255) default '';
set encpass = AES_ENCRYPT(decpassword, UNHEX(SHA2('super secret',512)),@init_vector);
update passwords
  set url = null
  where encpassword = encpass;

END;
DROP PROCEDURE IF EXISTS getpassword;
CREATE PROCEDURE  getpassword (IN web varchar(15))
BEGIN
declare tdecpass varbinary(255) default '';
declare decpass varchar(255) default '';
select encpassword into tdecpass from passwords where website like web;
set decpass  = AES_decrypt(tdecpass, UNHEX(SHA2('super secret',512)),@init_vector);
select decpass;
END;


DROP PROCEDURE IF EXISTS gethttpsdata;
CREATE PROCEDURE gethttpsdata ()
BEGIN
select * from (select * from passwords where url like "%https%") as L
         join (select url, cast(AES_decrypt(encpassword, UNHEX(SHA2('super secret',512)),@init_vector) as CHAR) from passwords) as R
on L.url = R.url;

END;

 //
DELIMITER ;