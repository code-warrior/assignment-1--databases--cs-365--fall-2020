drop table IF EXISTS passwords;
create table passwords
(website varchar(15),
URL varchar(30), 
first varchar(15),
last varchar(20),
emailaddress varchar(30),
username varchar(20),
encpassword varbinary(255),
comment varchar(80),
time TIMESTAMP);
SET @init_vector = RANDOM_BYTES(16);
insert into passwords values
('google',
'https://google.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass1', UNHEX(SHA2('super secret',512)),@init_vector),
'google account',
'2020-10-10');
insert into passwords values
('imgur',
'https://imgur.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass2', UNHEX(SHA2('super secret',512)),@init_vector),
'imgur account, pronounced image-r',
'2020-10-10');
insert into passwords values
('reddit',
'https://reddit.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass3', UNHEX(SHA2('super secret',512)),@init_vector),
'reddit account',
'2020-10-10');
insert into passwords values
('minecraft',
'https://minecraft.net',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass4', UNHEX(SHA2('super secret',512)),@init_vector),
'minecraft account',
'2020-10-10');
insert into passwords values
('twitter',
'https://twitter.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass5', UNHEX(SHA2('super secret',512)),@init_vector),
'twitter account',
'2020-10-10');
insert into passwords values
('facebook',
'https://facebook.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass6', UNHEX(SHA2('super secret',512)),@init_vector),
'facebook account',
'2020-10-10');
insert into passwords values
('linkedin',
'https://linkedin.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass7', UNHEX(SHA2('super secret',512)),@init_vector),
'linkedin account',
'2020-10-10');
insert into passwords values
('discord',
'https://discord.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass8', UNHEX(SHA2('super secret',512)),@init_vector),
'discord account, better online classroom than skype or zoom',
'2020-10-10');
insert into passwords values
('skype',
'https://skype.com',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass9', UNHEX(SHA2('super secret',512)),@init_vector),
'skype account, please never use this for online classes again',
'2020-10-10');
insert into passwords values
('zoom',
'https://zoom.us',
'Peter',
'Klesczewski',
'PeterExample@test.com',
'exampleusr',
AES_ENCRYPT('examplepass10', UNHEX(SHA2('super secret',512)),@init_vector),
'zoom account, about as secure as one of those IOT home devices',
'2020-10-10');