CREATE DATABASE passwords;

USE passwords; 

CREATE TABLE login (
    user_id SMALLINT(5),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(50) NOT NULL,
    pass VARCHAR(20),
    email_address VARCHAR(50) NOT NULL,
    comm VARCHAR(100) NOT NULL,
    time_stamp TIMESTAMP,
    PRIMARY KEY(user_id)
);

SET time_zone='+00:00';

CREATE TABLE website(
	web_name VARCHAR(50) NOT NULL,
    url_name VARCHAR(100),
    web_id SMALLINT(5) NOT NULL,
    PRIMARY KEY(web_id)
);


INSERT INTO website
VALUES("AOPA", "https://www.aopa.org/", 1);

INSERT INTO website
VALUES("Flight Schedule Pro", "https://www.flightschedulepro.com/", 2);

INSERT INTO website
VALUES("IACRA", "https://iacra.faa.gov/IACRA/Default.aspx", 3);

INSERT INTO website
VALUES("Stack Overflow", "https://stackoverflow.com/", 4);

INSERT INTO website
VALUES("Formula One", "https://www.formula1.com/", 5);

INSERT INTO website
VALUES("GitHub", "https://github.com/", 6);

INSERT INTO website
VALUES("Blackboard", "https://blackboard.hartford.edu/", 7);

INSERT INTO website
VALUES("USTA", "https://www.usta.com/en/home.html", 8);

INSERT INTO website
VALUES("Trivago", "https://www.trivago.com/", 9);

INSERT INTO website
VALUES("Controller.com", "https://www.controller.com/", 10);


INSERT INTO login
(user_id,first_name,last_name,username,pass,email_address,comm,time_stamp)
VALUES
(1, "Magdalene", "Piotrowski","piper56M", AES_encrypt('ABC', 'key'), 'piper56M@email.com', 'no comment', '2018-09-10 01:30:22'),
(2, "Magda", "Pio","piotrowsk", AES_encrypt('123', 'key'), 'abc@gmail.com', 'no comment', '2019-09-20 02:30:30'),
(3, "Maggie", "Pond", "18piotrowskim", AES_encrypt('123abc', 'key'), '123@yahoomail.com', 'no comment', '2019-09-23 02:33:29'),
(4, "Maggie", "Pio","maggiepio", AES_encrypt('!QAZ123', 'key'), 'abc123@gmail.com', 'no comment', '2019-10-01 03:35:55'),
(5,"Maggie", "Piotrowski","magdaPio", AES_encrypt('erhfhgpr', 'key'), 'cryptid@email.com', 'no comment', '2019-10-03 04:05:46'),
(6,"Magda", "Pio","magdapio", AES_encrypt('kjdhfbs', 'key'), 'lolno@hotmail.com', 'no comment', '2019-10-06 05:55:43'),
(7,"Magda","Piotrowski","magda2018", AES_encrypt('rhfhfpdh', 'key'), 'lololol@hotmail.com', 'no comment', '2019-10-10 01:19:45'),
(8,"Madzia","Piotrowski","madziu20", AES_encrypt('123456789', 'key'), 'grubydzidzius@hotmail.com', 'no comment', '2019-11-01 02:02:55'),
(9,"Magda", "Kubiak","magdaku20", AES_encrypt('abcdefgh', 'key'), 'mclarenracing@gmail.com', 'no comment', '2019-11-02 02:05:56'), 
(10,"Magdalene", "Piper","piper64SW", AES_encrypt('fgrygthgl', 'key'), 'kukurydza@gmail.com', 'no comment', '2020-01-01 03:03:45');